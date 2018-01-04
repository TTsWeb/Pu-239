<?php
require_once realpath(dirname(__FILE__) . DIRECTORY_SEPARATOR . '..') . DIRECTORY_SEPARATOR . 'include' . DIRECTORY_SEPARATOR . 'bittorrent.php';
require_once INCL_DIR . 'user_functions.php';
require_once INCL_DIR . 'bt_client_functions.php';
require_once INCL_DIR . 'html_functions.php';
check_user_status();
global $site_config;

$lang = array_merge(load_language('global'), load_language('peerlist'));
$id = (int)$_GET['id'];
if (!isset($id) || !is_valid_id($id)) {
    stderr($lang['peerslist_user_error'], $lang['peerslist_invalid_id']);
}
$HTMLOUT = '';
/**
 * @param $name
 * @param $arr
 * @param $torrent
 *
 * @return string
 */
function dltable($name, $arr, $torrent)
{
    global $CURUSER, $lang, $site_config;
    $htmlout = '';
    if (!count($arr)) {
        return $htmlout = "<div><b>{$lang['peerslist_no']} $name {$lang['peerslist_data_available']}</b></div>\n";
    }
    $htmlout = "\n";
    $htmlout .= "<table width='100%' class='main' >\n";
    $htmlout .= "<tr><td colspan='11' class='colhead'>" . count($arr) . " $name</td></tr>" . "<tr><td class='colhead'>{$lang['peerslist_user_ip']}</td>" . "<td class='colhead'>{$lang['peerslist_connectable']}</td>" . "<td class='colhead'>{$lang['peerslist_uploaded']}</td>" . "<td class='colhead'>{$lang['peerslist_rate']}</td>" . '' . ($site_config['ratio_free'] ? '' : "<td class='colhead'>{$lang['peerslist_downloaded']}</td>") . '' . '' . ($site_config['ratio_free'] ? '' : "<td class='colhead'>{$lang['peerslist_rate']}</td>") . '' . "<td class='colhead'>{$lang['peerslist_ratio']}</td>" . "<td class='colhead'>{$lang['peerslist_complete']}</td>" . "<td class='colhead'>{$lang['peerslist_connected']}</td>" . "<td class='colhead'>{$lang['peerslist_idle']}</td>" . "<td class='colhead'>{$lang['peerslist_client']}</td></tr>\n";
    $now = TIME_NOW;
    $mod = $CURUSER['class'] >= UC_STAFF;
    foreach ($arr as $e) {
        $htmlout .= "<tr>\n";
        if ($e['username']) {
            if ((($e['tanonymous'] == 'yes' && $e['owner'] == $e['userid'] || $e['anonymous'] == 'yes' or $e['paranoia'] >= 2) && $CURUSER['id'] != $e['userid']) && $CURUSER['class'] < UC_STAFF) {
                $htmlout .= "<td><b>Kezer Soze</b></td>\n";
            } else {
                $htmlout .= "<td><a href='userdetails.php?id=" . (int)$e['userid'] . "'><b>" . htmlsafechars($e['username']) . "</b></a></td>\n";
            }
        } else {
            $htmlout .= '<td>' . ($mod ? $e['ip'] : preg_replace('/\.\d+$/', '.xxx', $e['ip'])) . "</td>\n";
        }
        $secs = max(1, ($now - $e['st']) - ($now - $e['la']));
        $htmlout .= "<td>" . ($e['connectable'] == 'yes' ? "{$lang['peerslist_yes']}" : "<font color='red'>{$lang['peerslist_no']}</font>") . "</td>\n";
        $htmlout .= "<td>" . mksize($e['uploaded']) . "</td>\n";
        $htmlout .= "<td><span style=\"white-space: nowrap;\">" . mksize(($e['uploaded'] - $e['uploadoffset']) / $secs) . "/s</span></td>\n";
        $htmlout .= '' . ($site_config['ratio_free'] ? '' : "<td>" . mksize($e['downloaded']) . '</td>') . "\n";
        if ($e['seeder'] == 'no') {
            $htmlout .= '' . ($site_config['ratio_free'] ? '' : "<td><span style=\"white-space: nowrap;\">" . mksize(($e['downloaded'] - $e['downloadoffset']) / $secs) . '/s</span></td>') . "\n";
        } else {
            $htmlout .= '' . ($site_config['ratio_free'] ? '' : "<td><span style=\"white-space: nowrap;\">" . mksize(($e['downloaded'] - $e['downloadoffset']) / max(1, $e['finishedat'] - $e['st'])) . '/s</span></td>') . "\n";
        }
        $htmlout .= '<td>' . member_ratio($e['uploaded'], $site_config['ratio_free'] ? '0' : $e['downloaded']) . "</td>\n";
        $htmlout .= "<td>" . sprintf('%.2f%%', 100 * (1 - ($e['to_go'] / $torrent['size']))) . "</td>\n";
        $htmlout .= "<td>" . mkprettytime($now - $e['st']) . "</td>\n";
        $htmlout .= "<td>" . mkprettytime($now - $e['la']) . "</td>\n";
        $htmlout .= "<td>" . htmlsafechars(getagent($e['agent'], $e['peer_id'])) . "</td>\n";
        $htmlout .= "</tr>\n";
    }
    $htmlout .= "</table>\n";

    return $htmlout;
}

$res = sql_query('SELECT * FROM torrents WHERE id = ' . sqlesc($id)) or sqlerr(__FILE__, __LINE__);
if (mysqli_num_rows($res) == 0) {
    stderr("{$lang['peerslist_error']}", "{$lang['peerslist_nothing']}");
}
$row = mysqli_fetch_assoc($res);
$downloaders = [];
$seeders = [];
$subres = sql_query('SELECT u.username, u.anonymous, u.paranoia, t.owner, t.anonymous AS tanonymous, p.seeder, p.finishedat, p.downloadoffset, p.uploadoffset, p.ip, p.port, p.uploaded, p.downloaded, p.to_go, p.started AS st, p.connectable, p.agent, p.last_action AS la, p.userid, p.peer_id
    FROM peers p
    LEFT JOIN users u ON p.userid = u.id
	LEFT JOIN torrents AS t ON t.id = p.torrent
    WHERE p.torrent = ' . sqlesc($id)) or sqlerr(__FILE__, __LINE__);
if (mysqli_num_rows($subres) == 0) {
    stderr("{$lang['peerslist_warning']}", "{$lang['peerslist_no_data']}");
}
while ($subrow = mysqli_fetch_assoc($subres)) {
    if ($subrow['seeder'] == 'yes') {
        $seeders[] = $subrow;
    } else {
        $downloaders[] = $subrow;
    }
}
/**
 * @param $a
 * @param $b
 *
 * @return int
 */
function leech_sort($a, $b)
{
    if (isset($_GET['usort'])) {
        return seed_sort($a, $b);
    }
    $x = $a['to_go'];
    $y = $b['to_go'];
    if ($x == $y) {
        return 0;
    }
    if ($x < $y) {
        return -1;
    }

    return 1;
}

/**
 * @param $a
 * @param $b
 *
 * @return int
 */
function seed_sort($a, $b)
{
    $x = $a['uploaded'];
    $y = $b['uploaded'];
    if ($x == $y) {
        return 0;
    }
    if ($x < $y) {
        return 1;
    }

    return -1;
}

usort($seeders, 'seed_sort');
usort($downloaders, 'leech_sort');
$HTMLOUT .= "<h1>Peerlist for <a href='{$site_config['baseurl']}/details.php?id=$id'>" . htmlsafechars($row['name']) . '</a></h1>';
$HTMLOUT .= dltable("{$lang['peerslist_seeders']}<a name='seeders'></a>", $seeders, $row);
$HTMLOUT .= '<br>' . dltable("{$lang['peerslist_leechers']}<a name='leechers'></a>", $downloaders, $row);
echo stdhead("{$lang['peerslist_stdhead']}") . $HTMLOUT . stdfoot();
