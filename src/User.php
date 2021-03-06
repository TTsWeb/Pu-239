<?php

namespace DarkAlchemy\Pu239;

class User
{
    private $fluent;
    private $session;
    private $cookies;
    private $cache;
    private $config;

    /**
     * User constructor.
     *
     * @throws \MatthiasMullie\Scrapbook\Exception\Exception
     * @throws \MatthiasMullie\Scrapbook\Exception\ServerUnhealthy
     */
    public function __construct()
    {
        global $site_config, $session, $cache, $fluent;

        $this->fluent = $fluent;
        $this->session = $session;
        $this->cache = $cache;
        $this->cookies = new Cookie('remember');
        $this->config = $site_config;
    }

    /**
     * @param $userid
     *
     * @return bool|mixed
     */
    public function getUserFromId($userid)
    {
        $user = $this->cache->get('user' . $userid);
        if ($user === false || is_null($user)) {
            $user = $this->fluent->from('users')
                ->select('INET6_NTOA(ip) AS ip')
                ->where('id = ?', $userid)
                ->fetch();

            if ($user) {
                unset($user['hintanswer'], $user['passhash']);

                if ('Male' === $user['gender']) {
                    $user['it'] = 'he';
                } elseif ('Female' === $user['gender']) {
                    $user['it'] = 'she';
                } else {
                    $user['it'] = 'it';
                }

                $this->cache->set('user' . $userid, $user, $this->config['expires']['user_cache']);
            }
        }

        if (!empty($user) && $user['override_class'] < $user['class']) {
            $user['class'] = $user['override_class'];
        }

        return $user;
    }

    /**
     * @param $username
     *
     * @return bool|mixed
     */
    public function getUserIdFromName(string $username)
    {
        $user = $this->cache->get('userid_from_' . urlencode($username));

        if ($user === false || is_null($user)) {
            $user = $this->fluent->from('users')
                ->select(null)
                ->select('id')
                ->where('username = ?', $username)
                ->fetch('id');

            $this->cache->set('userid_from_' . urldecode($username), $user, $this->config['expires']['user_cache']);
        }

        return $user;
    }

    /**
     * @return int
     *
     * @throws \MatthiasMullie\Scrapbook\Exception\Exception
     * @throws \MatthiasMullie\Scrapbook\Exception\ServerUnhealthy
     */
    public function getUserId()
    {
        $id = $this->session->get('userID');

        if (!$id) {
            $cookie = $this->cookies->getToken();
            if (!empty($cookie[0]) && !empty($cookie[1]) && !empty($cookie[2])) {
                $selector = $cookie[0];
                $validator = $cookie[1];
                $expires = $cookie[2];
                $stashed = $this->get_remember($selector);
                if (!empty($stashed) && hash_equals($stashed['hashedValidator'], hash('sha256', $validator))) {
                    $id = $stashed['userid'];
                    $this->session->start();
                    $this->session->set('userID', $id);
                    $this->session->set('remembered_by_cookie', true);
                    $this->refresh_remember($selector, $id, $expires);

                    return (int) $id;
                }
            }

            $this->session->destroy();
        }

        return (int) $id;
    }

    /**
     * @param int   $userid
     * @param array $set
     *
     * @return \PDOStatement
     *
     * @throws \MatthiasMullie\Scrapbook\Exception\UnbegunTransaction
     */
    public function update(array $set, int $userid)
    {
        $result = $this->fluent->update('users')
            ->set($set)
            ->where('id = ?', $userid)
            ->execute();

        if ($result) {
            $this->cache->update_row('user' . $userid, $set, $this->config['expires']['user_cache']);
        }

        return $result;
    }

    /**
     * @param string $selector
     *
     * @return mixed
     */
    public function get_remember(string $selector)
    {
        $remember = $this->fluent->from('auth_tokens')
            ->where('selector = ?', $selector)
            ->where('expires >= ?', date('Y-m-d H:i:s', TIME_NOW))
            ->fetch();

        return $remember;
    }

    /**
     * @param int $userid
     * @param int $expires
     *
     * @throws \Exception
     */
    public function set_remember(int $userid, int $expires)
    {
        $selector = bin2hex(random_bytes(16));
        $validator = bin2hex(random_bytes(32));
        $hashedValidator = hash('sha256', $validator);

        $this->cookies->set("$selector:$validator:$expires", TIME_NOW + $expires);

        $this->fluent->deleteFrom('auth_tokens')
            ->where('expires <= ?', date('Y-m-d H:i:s', TIME_NOW))
            ->execute();

        $values = [
            'selector' => $selector,
            'hashedValidator' => $hashedValidator,
            'userid' => $userid,
            'expires' => date('Y-m-d H:i:s', TIME_NOW + $expires),
            'created_at' => date('Y-m-d H:i:s', TIME_NOW),
        ];
        $this->fluent->insertInto('auth_tokens')
            ->values($values)
            ->execute();
    }

    /**
     * @param string $selector
     * @param int    $userid
     * @param int    $expires
     *
     * @throws \Exception
     */
    public function refresh_remember(string $selector, int $userid, int $expires)
    {
        $this->fluent->deleteFrom('auth_tokens')
            ->where('selector = ?', $selector)
            ->execute();

        $this->set_remember($userid, $expires);
    }

    /**
     * @param int $userid
     */
    public function delete_remember(int $userid)
    {
        $this->fluent->deleteFrom('auth_tokens')
            ->where('userid = ?', $userid)
            ->execute();
    }

    /**
     * @param array $users
     */
    public function delete_user_cache(array $users)
    {
        foreach ($users as $userid) {
            if (!empty($userid)) {
                $this->cache->deleteMulti([
                    'inbox_' . $userid,
                    'peers_' . $userid,
                    'port_data_' . $userid,
                    'shitlist_' . $userid,
                    'user' . $userid,
                    'user_friends_' . $userid,
                    'userlist_' . $userid,
                    'user_rep_' . $userid,
                    'user_snatches_data_' . $userid,
                    'userstatus_' . $userid,
                    'is_staffs',
                ]);
            }
        }
    }

    /**
     * @param string $item
     * @param int    $userid
     *
     * @return mixed
     */
    public function get_item(string $item, int $userid)
    {
        $user = $this->getUserFromId($userid);

        return $user[$item];
    }

    /**
     * @param string $username
     *
     * @return mixed
     */
    public function get_login(string $username)
    {
        $row = $this->fluent->from('users')
            ->select(null)
            ->select('id')
            ->select('INET6_NTOA(ip) AS ip')
            ->select('passhash')
            ->select('perms')
            ->select('enabled')
            ->select('status')
            ->where('username = ?', $username)
            ->fetch();

        return $row;
    }

    /**
     * @param $class
     * @param $bot
     * @param $auth
     *
     * @return mixed
     */
    public function get_bot_id($class, $bot, $auth)
    {
        $userid = $this->fluent->from('users')
            ->select(null)
            ->select('id')
            ->where('class >= ? AND username = ? AND auth = ? AND uploadpos = 1 AND suspended = "no"', $class, $bot, $auth)
            ->fetch('id');

        return $userid;
    }
}
