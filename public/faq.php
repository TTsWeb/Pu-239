<?php
require_once realpath(dirname(__FILE__) . DIRECTORY_SEPARATOR . '..') . DIRECTORY_SEPARATOR . 'include' . DIRECTORY_SEPARATOR . 'bittorrent.php';
require_once INCL_DIR . 'user_functions.php';
require_once INCL_DIR . 'html_functions.php';
if (!getSessionVar('LoggedIn')) {
    dbconn();
    get_template();
} else {
    check_user_status();
}

$lang = array_merge(load_language('global'), load_language('faq'));
$stdfoot = [
    'js' => [
    ],
];
$HTMLOUT = "
            <div class='bordered'>
                <div class='alt_bordered bg-00'>
                    {$lang['faq_welcome']}
                </div>
            </div>
            <fieldset id='rules'>
                <legend>
                    <img src='./images/info.png' alt='' class='tooltipper right5' title='Guidelines' width='25' />{$lang['faq_contents_header']}
                </legend>
                <div class='bordered'>
                    <div class='alt_bordered bg-00 has-text-left'>
                        <div id='accordion'>
                            <p class='menu_head'>
                                {$lang['faq_siteinfo_header']}
                            </p>
                            <div class='menu_body bg-02 round5 padding10'>
                                {$lang['faq_siteinfo']}
                            </div>
                            <p class='menu_head'>
                                {$lang['faq_userinfo_header']}
                            </p>
                            <div class='menu_body bg-02 round5 padding10'>
                                {$lang['faq_userinfo']}
                            </div>
                            <p class='menu_head'>
                                {$lang['faq_stats_header']}
                            </p>
                            <div class='menu_body bg-02 round5 padding10'>
                                {$lang['faq_stats']}
                            </div>
                            <p class='menu_head'>
                                {$lang['faq_uploading_header']}
                            </p>
                            <div class='menu_body bg-02 round5 padding10'>
                                {$lang['faq_uploading']}
                            </div>
                            <p class='menu_head'>
                                {$lang['faq_downloading_header']}
                            </p>
                            <div class='menu_body bg-02 round5 padding10'>
                                {$lang['faq_downloading']}
                            </div>
                            <p class='menu_head'>
                                {$lang['faq_improve_header']}
                            </p>
                            <div class='menu_body bg-02 round5 padding10'>
                                {$lang['faq_improve']}
                            </div>
                            <p class='menu_head'>
                                {$lang['faq_isp_header']}
                            </p>
                            <div class='menu_body bg-02 round5 padding10'>
                                {$lang['faq_isp']}
                            </div>
                            <p class='menu_head'>
                                {$lang['faq_connect_header']}
                            </p>
                            <div class='menu_body bg-02 round5 padding10'>
                                {$lang['faq_connect']}
                            </div>
                            <p class='menu_head'>
                                {$lang['faq_problem']}
                            </p>
                            <div class='menu_body bg-02 round5 padding10'>
                                <a href='#answer_9'>{$lang['faq_problem']}</a>
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>";

$HTMLOUT .= main_div("
                        <h3 id='answer_1'>{$lang['faq_siteinfo_header']}</h3>
                        <div id='answer_1_text'>
                            {$lang['faq_siteinfo_body']}
                        </div>");

$HTMLOUT .= main_div("
                        <h3 id='answer_2'>{$lang['faq_userinfo_header']}</h3>
                        <div id='answer_2_text'>
                            {$lang['faq_userinfo_body']}
                            {$lang['faq_promotion_header']}
                            {$lang['faq_promotion_body']}
                            <a class='altlink' href='userdetails.php?id={$CURUSER['id']}'>{$lang['faq_details_page']}</a>.
                        </div>");

$HTMLOUT .= main_div("
                        <h3 id='answer_3'>{$lang['faq_stats_header']}</h3>
                        <div id='answer_3_text'>
                            {$lang['faq_stats_body']}
                        </div>");

$HTMLOUT .= main_div("
                        <h3 id='answer_4'>{$lang['faq_uploading_header']}</h3>
                        <div id='answer_4_text'>
                            {$lang['faq_uploading_body']}
                        </div>");

$next_para = "
                        <h3 id='answer_5'>{$lang['faq_downloading_header']}</h3>
                        <div id='answer_5_text'>
                            {$lang['faq_downloading_body']}";
if ($CURUSER) {
    $byratio = 0;
    $byul = 0;
    function format_ratio($up, $down, $color = true)
    {
        if ($down > 0) {
            $r = number_format($up / $down, 2);
            if ($color) {
                $r = "<span style='color: " . get_ratio_color($r) . ";'>$r</span>";
            }
        } elseif ($up > 0) {
            $r = "'Inf.'";
        } else {
            $r = "'---'";
        }

        return $r;
    }

    if ($CURUSER['class'] < UC_VIP) {
        $gigs = $CURUSER['uploaded'] / (1024 * 1024 * 1024);
        $ratio = (($CURUSER['downloaded'] > 0) ? ($CURUSER['uploaded'] / $CURUSER['downloaded']) : 0);
        if ((0 < $ratio && $ratio < 0.5) || $gigs < 5) {
            $wait = 48;
            if (0 < $ratio && $ratio < 0.5) {
                $byratio = 1;
            }
            if ($gigs < 5) {
                $byul = 1;
            }
        } elseif ((0 < $ratio && $ratio < 0.65) || $gigs < 6.5) {
            $wait = 24;
            if (0 < $ratio && $ratio < 0.65) {
                $byratio = 1;
            }
            if ($gigs < 6.5) {
                $byul = 1;
            }
        } elseif ((0 < $ratio && $ratio < 0.8) || $gigs < 8) {
            $wait = 12;
            if (0 < $ratio && $ratio < 0.8) {
                $byratio = 1;
            }
            if ($gigs < 8) {
                $byul = 1;
            }
        } elseif ((0 < $ratio && $ratio < 0.95) || $gigs < 9.5) {
            $wait = 6;
            if (0 < $ratio && $ratio < 0.95) {
                $byratio = 1;
            }
            if ($gigs < 9.5) {
                $byul = 1;
            }
        } else {
            $wait = 0;
        }
    }
    $next_para .= "{$lang['faq_in']}<a class='altlink' href='userdetails.php?id={$CURUSER['id']}'>{$lang['faq_your']}</a>{$lang['faq_case']}";
    if (isset($wait)) {
        $byboth = $byratio && $byul;
        $next_para .= ($byboth ? "{$lang['faq_both']}" : '') . ($byratio ? "{$lang['faq_ratio']}" . format_ratio($CURUSER['uploaded'], $CURUSER['downloaded']) : '') . ($byboth ? "{$lang['faq_and']}" : '') . ($byul ? "{$lang['faq_totalup']}" . round($gigs, 2) . ' GB' : '') . ' impl' . ($byboth ? 'y' : 'ies') . "{$lang['faq_delay']}$wait{$lang['faq_hours']}" . ($byboth ? '' : " ({$lang['faq_even']}" . ($byratio ? "{$lang['faq_totup']}" . round($gigs, 2) . ' GB' : "{$lang['faq_ratiois']}" . format_ratio($CURUSER['uploaded'], $CURUSER['downloaded'])) . '.)');
    } else {
        $next_para.= "{$lang['faq_nodelay']}";
    }
}
//$HTMLOUT .= main_div($next_para);

$HTMLOUT .= main_div("
                        <h3 id='answer_6'>{$lang['faq_improve_speed_title']}</h3>
                        <div id='answer_6_text'>
                            {$lang['faq_improve_speed_body']}
                        </div>");

$HTMLOUT .= main_div("
                        <h3 id='answer_7'>{$lang['faq_proxy_title']}</h3>
                        <div id='answer_7_text'>
                            {$lang['faq_proxy_body']}
                            {$lang['faq_proxy_body2']}
                        </div>");

$HTMLOUT .= main_div("
                        <h3 id='answer_8'>{$lang['faq_blocked_title']}</h3>
                        <div id='answer_8_text'>
                            {$lang['faq_blocked_body']}
                            {$lang['faq_alt_port']}
                            {$lang['faq_alt_port_body']}
                        </div>");

$HTMLOUT .= main_div("
                        <h3 id='answer_9'>{$lang['faq_problem_title']}</h3>
                        <div id='answer_9_text'>
                            {$lang['faq_problem_body']}
                        </div>");

$HTMLOUT = wrapper($HTMLOUT, 'has-text-left');

echo stdhead('FAQ') . $HTMLOUT . stdfoot($stdfoot);