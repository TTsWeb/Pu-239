<?php

namespace DarkAlchemy\Pu239;

class Message
{
    protected $cache;
    protected $fluent;
    protected $site_config;

    public function __construct()
    {
        global $fluent, $cache, $site_config;

        $this->fluent = $fluent;
        $this->cache = $cache;
        $this->site_config = $site_config;
    }

    /**
     * @param array $values
     *
     * @throws \Exception
     */
    public function insert(array $values)
    {
        $this->fluent->insertInto('messages')
            ->values($values)
            ->execute();

        $this->cache->delete('inbox_' . $values['receiver']);
    }
}
