-- MySQL dump 10.13  Distrib 5.7.20-19, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: dev
-- ------------------------------------------------------
-- Server version	5.7.20-19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;
/*!50717 SELECT COUNT(*)
         INTO @rocksdb_has_p_s_session_variables
         FROM INFORMATION_SCHEMA.TABLES
         WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'session_variables' */;
/*!50717 SET @rocksdb_get_is_supported = IF(@rocksdb_has_p_s_session_variables,
                                            'SELECT COUNT(*) INTO @rocksdb_is_supported FROM performance_schema.session_variables WHERE VARIABLE_NAME=\'rocksdb_bulk_load\'',
                                            'SELECT 0') */;
/*!50717 PREPARE s FROM @rocksdb_get_is_supported */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;
/*!50717 SET @rocksdb_enable_bulk_load = IF(@rocksdb_is_supported, 'SET SESSION rocksdb_bulk_load = 1',
                                            'SET @rocksdb_dummy_bulk_load = 0') */;
/*!50717 PREPARE s FROM @rocksdb_enable_bulk_load */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;

--
-- Dumping data for table `ach_bonus`
--

LOCK TABLES `ach_bonus` WRITE;
/*!40000 ALTER TABLE `ach_bonus`
  DISABLE KEYS */;
INSERT INTO `ach_bonus` VALUES (1, 'Subtract 10GB From Your Download.', 1, '10737418240'),
  (2, 'Subtract 1GB From Your Download.', 1, '1073741824'), (3, 'Subtract 3GB From Your Download.', 1, '3221225472'),
  (4, 'Subtract 5GB From Your Download.', 1, '5368709120'), (5, 'Subtract 100MB From Your Download.', 1, '107374182'),
  (6, 'Subtract 300MB From Your Download.', 1, '322122547'), (7, 'Subtract 500MB From Your Download.', 1, '536870910'),
  (8, 'Subtract 1MB From Your Download.', 1, '1073741'), (9, 'Add 1GB to your Upload.', 2, '1073741824'),
  (10, 'Add 10GB to your Upload.', 2, '10737418240'), (11, 'Add 3GB to your Upload.', 2, '3221225472'),
  (12, 'Add 5GB to your Upload.', 2, '5368709120'), (13, 'Add 100MB to your Upload.', 2, '107374182'),
  (14, 'Add 300MB to your Upload.', 2, '322122547'), (15, 'Add 500MB to your Upload.', 2, '536870910'),
  (16, 'Add 1MB to your Upload.', 2, '1073741'), (17, 'Add 1 Invite.', 3, '1'), (18, 'Add 2 Invites.', 3, '2'),
  (19, 'Add 100 Bonus Points to your Total.', 4, '100'), (20, 'Add 200 Bonus Points to your Total.', 4, '200'),
  (21, 'Add 500 Bonus Points to your Total.', 4, '500'), (22, 'Add 750 Bonus Points to your Total.', 4, '750'),
  (23, 'Add 1000 Bonus Points to your Total.', 4, '1000'), (24, 'Add 50 Bonus Points to your Total.', 4, '50'),
  (25, 'Add 25 Bonus Points to your Total.', 4, '25'), (26, 'Add 75 Bonus Points to your Total.', 4, '75'),
  (27, 'Add 10 Bonus Points to your Total.', 4, '10'), (28, 'Nothing', 5, '0'), (29, 'Nothing', 5, '0'),
  (30, 'Nothing', 5, '0'), (31, 'Nothing', 5, '0'), (32, 'Nothing', 5, '0');
/*!40000 ALTER TABLE `ach_bonus`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `achievementist`
--

LOCK TABLES `achievementist` WRITE;
/*!40000 ALTER TABLE `achievementist`
  DISABLE KEYS */;
INSERT INTO `achievementist` VALUES (1, 'First Birthday', 'Been a member for at least 1 year.', 'birthday1.png'),
  (2, 'Second Birthday', 'Been a member for a period of at least 2 years.', 'birthday2.png'),
  (5, 'Third Birthday', 'Been a member for a period of at least 3 years.', 'birthday3.png'),
  (6, 'Fourth Birthday', 'Been a member for a period of at least 4 years.', 'birthday4.png'),
  (7, 'Fifth Birthday', 'Been a member for a period of at least 5 years.', 'birthday5.png'),
  (8, 'Uploader LVL1', 'Uploaded at least 1 torrent to the site.', 'ul1.png'),
  (9, 'Uploader LVL2', 'Uploaded at least 50 torrents to the site.', 'ul2.png'),
  (10, 'Uploader LVL3', 'Uploaded at least 100 torrents to the site.', 'ul3.png'),
  (11, 'Uploader LVL4', 'Uploaded at least 200 torrents to the site.', 'ul4.png'),
  (12, 'Uploader LVL5', 'Uploaded at least 300 torrents to the site.', 'ul5.png'),
  (13, 'Uploader LVL6', 'Uploaded at least 500 torrents to the site.', 'ul6.png'),
  (14, 'Uploader LVL7', 'Uploaded at least 800 torrents to the site.', 'ul7.png'),
  (15, 'Uploader LVL8', 'Uploaded at least 1000 torrents to the site.', 'ul8.png'),
  (16, 'Uploader LVL9', 'Uploaded at least 1500 torrents to the site.', 'ul9.png'),
  (17, 'Uploader LVL10', 'Uploaded at least 2000 torrents to the site.', 'ul10.png'),
  (18, 'Inviter LVL1', 'Invited at least 1 new user to the site.', 'invite1.png'),
  (19, 'Inviter LVL2', 'Invited at least 2 new users to the site.', 'invite2.png'),
  (20, 'Inviter LVL3', 'Invited at least 3 new users to the site.', 'invite3.png'),
  (21, 'Inviter LVL4', 'Invited at least 5 new users to the site.', 'invite4.png'),
  (22, 'Inviter LVL5', 'Invited at least 10 new users to the site.', 'invite5.png'),
  (23, 'Forum Poster LVL1', 'Made at least 1 post in the forums.', 'fpost1.png'),
  (24, 'Forum Poster LVL2', 'Made at least 25 posts in the forums.', 'fpost2.png'),
  (25, 'Forum Poster LVL3', 'Made at least 50 posts in the forums.', 'fpost3.png'),
  (26, 'Forum Poster LVL4', 'Made at least 100 posts in the forums.', 'fpost4.png'),
  (27, 'Forum Poster LVL5', 'Made at least 250 posts in the forums.', 'fpost5.png'),
  (28, 'Avatar Setter', 'User has successfully set an avatar on profile settings.', 'piratesheep.png'),
  (29, 'Old Virginia', 'At the age of 25 still remains a virgin.  (Custom Achievement.)', 'virgin.png'),
  (30, 'Forum Poster LVL6', 'Made at least 500 posts in the forums.', 'fpost6.png'),
  (31, 'Stick Em Up LVL1', 'Uploading at least 1 sticky torrent to the site.', 'sticky1.png'),
  (32, 'Stick Em Up LVL2', 'Uploading at least 5 sticky torrents to the site.', 'sticky2.png'),
  (33, 'Stick Em Up LVL3', 'Uploading at least 10 sticky torrents.', 'sticky3.png'),
  (34, 'Stick EM Up LVL4', 'Uploading at least 25 sticky torrents.', 'sticky4.png'),
  (35, 'Stick EM Up LVL5', 'Uploading at least 50 sticky torrents.', 'sticky5.png'),
  (36, 'Gag Da B1tch', 'Getting gagged like he\'s Adams Man!', 'gagged.png'),
  (37, 'Signature Setter', 'User has successfully set a signature on profile settings.', 'signature.png'),
  (38, 'Corruption Counts', 'Transferred at least 1 byte of corrupt data incoming.', 'corrupt.png'),
  (40, '7 Day Seeder', 'Seeded a snatched torrent for a total of at least 7 days.', '7dayseed.png'),
  (41, '14 Day Seeder', 'Seeded a snatched torrent for a total of at least 14 days.', '14dayseed.png'),
  (42, '21 Day Seeder', 'Seeded a snatched torrent for a total of at least 21 days.', '21dayseed.png'),
  (43, '28 Day Seeder', 'Seeded a snatched torrent for a total of at least 28 days.', '28dayseed.png'),
  (44, '45 Day Seeder', 'Seeded a snatched torrent for a total of at least 45 days.', '45dayseed.png'),
  (45, '60 Day Seeder', 'Seeded a snatched torrent for a total of at least 60 days.', '60dayseed.png'),
  (46, '90 Day Seeder', 'Seeded a snatched torrent for a total of at least 90 days.', '90dayseed.png'),
  (47, '120 Day Seeder', 'Seeded a snatched torrent for a total of at least 120 days.', '120dayseed.png'),
  (48, '200 Day Seeder', 'Seeded a snatched torrent for a total of at least 200 days.', '200dayseed.png'),
  (49, '1 Year Seeder', 'Seeded a snatched torrent for a total of at least 1 Year.', '365dayseed.png'),
  (50, 'Sheep Fondler', 'User has been caught touching the sheep at least 1 time.', 'sheepfondler.png'),
  (51, 'Forum Topic Starter LVL1', 'Started at least 1 topic in the forums.', 'ftopic1.png'),
  (52, 'Forum Topic Starter LVL2', 'Started at least 10 topics in the forums.', 'ftopic2.png'),
  (53, 'Forum Topic Starter LVL3', 'Started at least 25 topics in the forums.', 'ftopic3.png'),
  (55, 'Forum Topic Starter LVL4', 'Started at least 50 topics in the forums.', 'ftopic4.png'),
  (57, 'Forum Topic Starter LVL5', 'Started at least 75 topics in the forums.', 'ftopic5.png'),
  (58, 'Bonus Banker LVL1', 'Earned at least 1 bonus point.', 'bonus1.png'),
  (60, 'Bonus Banker LVL2', 'Earned at least 100 bonus points.', 'bonus2.png'),
  (61, 'Bonus Banker LVL3', 'Earned at least 500 bonus points.', 'bonus3.png'),
  (63, 'Bonus Banker LVL4', 'Earned at least 1000 bonus points.', 'bonus4.png'),
  (65, 'Bonus Banker LVL5', 'Earned at least 2000 bonus points.', 'bonus5.png'),
  (66, 'Bonus Banker LVL6', 'Earned at least 5000 bonus points.', 'bonus6.png'),
  (68, 'Bonus Banker LVL7', 'Earned at least 10000 bonus points.', 'bonus7.png'),
  (70, 'Bonus Banker LVL8', 'Earned at least 30000 bonus points.', 'bonus9.png'),
  (71, 'Bonus Banker LVL9', 'Earned at least 70000 bonus points.', 'bonus10.png'),
  (72, 'Bonus Banker LVL10', 'Earned at least 100000 bonus points.', 'bonus8.png'),
  (73, 'Bonus Banker LVL11', 'Earned at least 1000000 bonus points.', 'bonus11.png'),
  (74, 'Christmas Achievement', 'User has found the Christmas Achievement in the advent calendar page.', 'christmas.png'),
  (75, 'Advent Playa', 'Played the Advent Calendar all 25 days straight.', 'xmasdays.png'),
  (76, 'Request Filler LVL1', 'Filled at least 1 request from the request page.', 'reqfiller1.png'),
  (77, 'Request Filler LVL2', 'Filled at least 5 requests from the request page.', 'reqfiller2.png'),
  (78, 'Request Filler LVL3', 'Filled at least 10 requests from the request page.', 'reqfiller3.png'),
  (79, 'Request Filler LVL4', 'Filled at least 25 requests from the request page.', 'reqfiller4.png'),
  (80, 'Request Filler LVL5', 'Filled at least 50 requests from the request page.', 'reqfiller5.png'),
  (81, 'Adam Punker', 'Officially Punked Adam in the proper forum thread.', 'adampnkr.png'),
  (82, 'Shout Spammer LVL1', 'Made at least 10 posts to the shoutbox today.', 'spam1.png'),
  (83, 'Shout Spammer LVL2', 'Made at least 25 posts to the shoutbox today.', 'spam2.png'),
  (84, 'Shout Spammer LVL3', 'Made at least 50 posts to the shoutbox today.', 'spam3.png'),
  (85, 'Shout Spammer LVL4', 'Made at least 75 posts to the shoutbox today.', 'spam4.png'),
  (86, 'Shout Spammer LVL5', 'Made at least 100 posts to the shoutbox today.', 'spam5.png');
/*!40000 ALTER TABLE `achievementist`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `avps`
--

LOCK TABLES `avps` WRITE;
/*!40000 ALTER TABLE `avps`
  DISABLE KEYS */;
INSERT INTO `avps`
VALUES ('bestfilmofweek', '0', 1402495922, 20), ('inactivemail', '1', 1341778326, 1), ('last24', '0', 50, 1303875421),
  ('loadlimit', '0.39-1404324894', 0, 0), ('sitepot', '0', 0, 1359295634);
/*!40000 ALTER TABLE `avps`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `bannedemails`
--

LOCK TABLES `bannedemails` WRITE;
/*!40000 ALTER TABLE `bannedemails`
  DISABLE KEYS */;
INSERT INTO `bannedemails`
VALUES (1, 1282299331, 1, 'Fake provider', '*@emailias.com'), (2, 1282299331, 1, 'Fake provider', '*@e4ward.com'),
  (3, 1282299331, 1, 'Fake provider', '*@dumpmail.de'), (4, 1282299331, 1, 'Fake provider', '*@dontreg.com'),
  (5, 1282299331, 1, 'Fake provider', '*@disposeamail.com'), (6, 1282299331, 1, 'Fake provider', '*@antispam24.de'),
  (7, 1282299331, 1, 'Fake provider', '*@trash-mail.de'), (8, 1282299331, 1, 'Fake provider', '*@spambog.de'),
  (9, 1282299331, 1, 'Fake provider', '*@spambog.com'), (10, 1282299331, 1, 'Fake provider', '*@discardmail.com'),
  (11, 1282299331, 1, 'Fake provider', '*@discardmail.de'), (12, 1282299331, 1, 'Fake provider', '*@mailinator.com'),
  (13, 1282299331, 1, 'Fake provider', '*@wuzup.net'), (14, 1282299331, 1, 'Fake provider', '*@junkmail.com'),
  (15, 1282299331, 1, 'Fake provider', '*@clarkgriswald.net'), (16, 1282299331, 1, 'Fake provider', '*@2prong.com'),
  (17, 1282299331, 1, 'Fake provider', '*@jrwilcox.com'), (18, 1282299331, 1, 'Fake provider', '*@10minutemail.com'),
  (19, 1282299331, 1, 'Fake provider', '*@pookmail.com'), (20, 1282299331, 1, 'Fake provider', '*@golfilla.info'),
  (21, 1282299331, 1, 'Fake provider', '*@afrobacon.com'),
  (22, 1282299331, 1, 'Fake provider', '*@senseless-entertainment.com'),
  (23, 1282299331, 1, 'Fake provider', '*@put2.net'), (24, 1282299331, 1, 'Fake provider', '*@temporaryinbox.com'),
  (25, 1282299331, 1, 'Fake provider', '*@slaskpost.se'), (26, 1282299331, 1, 'Fake provider', '*@haltospam.com'),
  (27, 1282299331, 1, 'Fake provider', '*@h8s.org'), (28, 1282299331, 1, 'Fake provider', '*@ipoo.org'),
  (29, 1282299331, 1, 'Fake provider', '*@oopi.org'), (30, 1282299331, 1, 'Fake provider', '*@poofy.org'),
  (31, 1282299331, 1, 'Fake provider', '*@jetable.org'), (32, 1282299331, 1, 'Fake provider', '*@kasmail.com'),
  (33, 1282299331, 1, 'Fake provider', '*@mail-filter.com'), (34, 1282299331, 1, 'Fake provider', '*@maileater.com'),
  (35, 1282299331, 1, 'Fake provider', '*@mailexpire.com'), (36, 1282299331, 1, 'Fake provider', '*@mailnull.com'),
  (37, 1282299331, 1, 'Fake provider', '*@mailshell.com'), (38, 1282299331, 1, 'Fake provider', '*@mymailoasis.com'),
  (39, 1282299331, 1, 'Fake provider', '*@mytrashmail.com'), (40, 1282299331, 1, 'Fake provider', '*@mytrashmail.net'),
  (41, 1282299331, 1, 'Fake provider', '*@shortmail.net'), (42, 1282299331, 1, 'Fake provider', '*@sneakemail.com'),
  (43, 1282299331, 1, 'Fake provider', '*@sofort-mail.de'), (44, 1282299331, 1, 'Fake provider', '*@spamcon.org'),
  (45, 1282299331, 1, 'Fake provider', '*@spamday.com'), (46, 1282299331, 1, 'fake provider', '*@spamex.com'),
  (47, 1282299307, 1, 'fake provider', '*@spamgourmet.com'), (48, 1282299289, 1, 'fake provider', '*@spamhole.com'),
  (49, 1282299331, 1, 'Fake provider', '*@spammotel.com'), (50, 1282299331, 1, 'Fake provider', '*@tempemail.net'),
  (51, 1282299331, 1, 'Fake provider', '*@tempinbox.com'), (52, 1282299331, 1, 'Fake provider', '*@throwaway.de'),
  (53, 1282299331, 1, 'Fake provider', '*@woodyland.org'), (54, 1282299331, 1, 'Fake provider', '*@trbvm.com');
/*!40000 ALTER TABLE `bannedemails`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `bonus`
--

LOCK TABLES `bonus` WRITE;
/*!40000 ALTER TABLE `bonus`
  DISABLE KEYS */;
INSERT INTO `bonus` VALUES (1, 1, '1.0GB Uploaded', 2500.0,
                               'With enough bonus points acquired, you are able to exchange them for an Upload Credit. The points are then removed from your Bonus Bank and the credit is added to your total uploaded amount.',
                               'traffic', 1073741824, 0.0, 'yes', 2500.0, 'yes', 0),
  (2, 2, '2.5GB Uploaded', 6250.0, 'With enough bonus points acquired, you are able to exchange them for an Upload Credit. The points are then removed from your Bonus Bank and the credit is added to your total uploaded amount.', 'traffic', 2684354560, 0.0, 'yes', 6250.0, 'yes', 0),
  (3, 3, '5GB Uploaded', 12500.0, 'With enough bonus points acquired, you are able to exchange them for an Upload Credit. The points are then removed from your Bonus Bank and the credit is added to your total uploaded amount.', 'traffic', 5368709120, 0.0, 'yes', 12500.0, 'yes', 0),
  (4, 28, '3 Invites', 15000.0, 'With enough bonus points acquired, you are able to exchange them for a few invites. The points are then removed from your Bonus Bank and the invitations are added to your invites amount.', 'invite', 3, 1.0, 'yes', 15000.0, 'no', 1),
  (5, 29, 'Custom Title!', 50.0, 'For only 50.0 Karma Bonus Points you can buy yourself a custom title. the only restrictions are no foul or offensive language or userclass can be entered. The points are then removed from your Bonus Bank and your special title is changed to the title of your choice', 'title', 1, 1.0, 'yes', 50.0, 'no', 0),
  (6, 21, 'VIP Status', 100000.0, 'With enough bonus points acquired, you can buy yourself VIP status for one month. The points are then removed from your Bonus Bank and your status is changed.', 'class', 1, 1.0, 'yes', 100000.0, 'no', 0),
  (7, 30, 'Give A Karma Gift', 100.0, 'Well perhaps you dont need the upload credit, but you know somebody that could use the Karma boost! You are now able to give your Karma credits as a gift! The points are then removed from your Bonus Bank and added to the account of a user of your choice!\r\n\r\nAnd they recieve a PM with all the info as well as who it came from...', 'gift_1', 1073741824, 1.0, 'yes', 100.0, 'no', 0),
  (8, 31, 'Custom Smilies', 300.0, 'With enough bonus points acquired, you can buy yourself a set of custom smilies for one month! The points are then removed from your Bonus Bank and with a click of a link, your new smilies are available whenever you post or comment!', 'smile', 1, 1.0, 'yes', 300.0, 'no', 0),
  (9, 24, 'Remove Warning', 5000.0, 'With enough bonus points acquired... So you have been naughty... tsk tsk :P Yep now for the Low Low price of only 5000 points you can have that warning taken away lol.!', 'warning', 1, 1.0, 'no', 5000.0, 'no', 0),
  (10, 25, 'Ratio Fix', 1500.0, 'With enough bonus points acquired, you can bring the ratio of one torrent to a 1 to 1 ratio! The points are then removed from your Bonus Bank and your status is changed.', 'ratio', 1, 1.0, 'no', 1500.0, 'no', 0),
  (11, 15, 'FreeLeech', 2000000.0, 'The Ultimate exchange if you have over 2000000 Points - Make the tracker freeleech for everyone for 3 days: Upload will count but no download.\r\nIf you dont have enough points you can donate certain amount of your points until it accumulates. Everybodys karma counts!', 'freeleech', 1, 115200.0, 'no', 100.0, 'no', 0),
  (12, 16, 'Doubleupload', 1000000.0, 'The Ultimate exchange if you have over 1000000 points - Make the tracker double upload for everyone for 3 days: Upload will count double.\r\nIf you dont have enough points you can donate certain amount of your points until it accumulates. Everybodys karma counts!', 'doubleup', 1, 468750.0, 'yes', 100.0, 'no', 0),
  (13, 17, 'Halfdownload', 1000000.0, 'The Ultimate exchange if you have over 1000000 points - Make the tracker Half Download for everyone for 3 days: Download will count only half.\r\nIf you dont have enough points you can donate certain amount of your points until it accumulates. Everybodys karma counts!', 'halfdown', 1, 142467.0, 'no', 100.0, 'no', 0),
  (14, 10, '1.0GB Download Removal', 275.0, 'With enough bonus points acquired, you are able to exchange them for a Download Credit Removal. The points are then removed from your Bonus Bank and the download credit is removed from your total downloaded amount.', 'traffic2', 1073741824, 1.0, 'no', 275.0, 'no', 0),
  (15, 11, '2.5GB Download Removal', 350.0, 'With enough bonus points acquired, you are able to exchange them for a Download Credit Removal. The points are then removed from your Bonus Bank and the download credit is removed from your total downloaded amount.', 'traffic2', 2684354560, 1.0, 'no', 350.0, 'no', 0),
  (16, 12, '5GB Download Removal', 550.0, 'With enough bonus points acquired, you are able to exchange them for a Download Credit Removal. The points are then removed from your Bonus Bank and the download credit is removed from your total downloaded amount.', 'traffic2', 5368709120, 1.0, 'no', 550.0, 'no', 0),
  (17, 32, 'Anonymous Profile', 25000.0, 'With enough bonus points acquired, you are able to exchange them for Anonymous profile for 28 days. The points are then removed from your Bonus Bank and the Anonymous switch will show on your profile.', 'anonymous', 1, 1.0, 'yes', 5000.0, 'no', 0),
  (18, 18, 'Freeleech for 1 Year', 2000000.0, 'With enough bonus points acquired, you are able to exchange them for Freelech for one year for yourself. The points are then removed from your Bonus Bank and the freeleech will be enabled on your account.', 'freeyear', 1, 1.0, 'no', 2000000.0, 'no', 0),
  (19, 33, '3 Freeleech Slots', 2500.0, 'With enough bonus points acquired, you are able to exchange them for some Freeleech Slots. The points are then removed from your Bonus Bank and the slots are added to your free slots amount.', 'freeslots', 3, 0.0, 'yes', 2500.0, 'no', 0),
  (20, 34, '200 Bonus Points - Invite trade-in', 1.0, 'If you have 1 invite and dont use them click the button to trade them in for 200 Bonus Points.', 'itrade', 200, 0.0, 'yes', 0.0, 'no', 0),
  (21, 35, 'Freeslots - Invite trade-in', 1.0, 'If you have 1 invite and dont use them click the button to trade them in for 2 Free Slots.', 'itrade2', 2, 0.0, 'no', 0.0, 'no', 0),
  (22, 26, 'Pirate Rank for 2 weeks', 100000.0, 'With enough bonus points acquired, you are able to exchange them for Pirates status and Freeleech/DoubleUp for 2 weeks. The points are then removed from your Bonus Bank and the Pirate icon will be displayed throughout, freeleech/doubleup will then be enabled on your account.', 'pirate', 1, 1.0, 'yes', 100000.0, 'no', 0),
  (23, 19, 'King Rank for 1 month', 200000.0, 'With enough bonus points acquired, you are able to exchange them for Kings status and Freeleech/DoubleUp for 1 month. The points are then removed from your Bonus Bank and the King icon will be displayed throughout,  freeleech/doubleup will then be enabled on your account.', 'king', 1, 1.0, 'yes', 200000.0, 'no', 0),
  (24, 4, '10GB Uploaded', 25000.0, 'With enough bonus points acquired, you are able to exchange them for an Upload Credit. The points are then removed from your Bonus Bank and the credit is added to your total uploaded amount.', 'traffic', 10737418240, 0.0, 'yes', 25000.0, 'yes', 0),
  (25, 5, '25GB Uploaded', 62500.0, 'With enough bonus points acquired, you are able to exchange them for an Upload Credit. The points are then removed from your Bonus Bank and the credit is added to your total uploaded amount.', 'traffic', 26843545600, 0.0, 'yes', 62500.0, 'yes', 0),
  (26, 6, '50GB Uploaded', 125000.0, 'With enough bonus points acquired, you are able to exchange them for an Upload Credit. The points are then removed from your Bonus Bank and the credit is added to your total uploaded amount.', 'traffic', 53687091200, 0.0, 'yes', 125000.0, 'yes', 0),
  (27, 7, '100GB Uploaded', 250000.0, 'With enough bonus points acquired, you are able to exchange them for an Upload Credit. The points are then removed from your Bonus Bank and the credit is added to your total uploaded amount.', 'traffic', 107374182400, 0.0, 'yes', 250000.0, 'yes', 0),
  (28, 8, '520GB Uploaded', 1000000.0, 'With enough bonus points acquired, you are able to exchange them for an Upload Credit. The points are then removed from your Bonus Bank and the credit is added to your total uploaded amount.', 'traffic', 558345748480, 0.0, 'no', 1000000.0, 'yes', 0),
  (29, 9, '1TB Uploaded', 2000000.0, 'With enough bonus points acquired, you are able to exchange them for an Upload Credit. The points are then removed from your Bonus Bank and the credit is added to your total uploaded amount.', 'traffic', 1099511627776, 0.0, 'no', 2000000.0, 'yes', 0),
  (30, 27, 'Parked Profile', 5000.0, 'With enough bonus points acquired, you are able to unlock the parked option within your profile which will ensure your account will be safe. The points are then removed from your Bonus Bank and the parked switch will show on your profile.', 'parked', 1, 1.0, 'yes', 5000.0, 'no', 0),
  (31, 20, 'Pirates bounty', 75000.0, 'With enough bonus points acquired, you are able to exchange them for Pirates bounty which will select random users and deduct random amount of reputation points from them. The points are removed from your Bonus Bank and the reputation points will be deducted from the selected users then credited to you.', 'bounty', 1, 1.0, 'yes', 75000.0, 'no', 0),
  (32, 36, '100 Reputation points', 60000.0,
       'With enough bonus points acquired, you are able to exchange them for some reputation points. The points are then removed from your Bonus Bank and the rep is added to your total reputation amount.',
       'reputation', 100, 0.0, 'yes', 60000.0, 'no', 0), (33, 22, 'Userblocks', 5000.0,
                                                              'With enough bonus points acquired and a minimum of 50 reputation points, you are able to exchange them for userblocks access. The points are then removed from your Bonus Bank and the user blocks configuration link will appear on your menu.',
                                                              'userblocks', 0, 0.0, 'yes', 5000.0, 'no', 0),
  (34, 37, 'Bump a Torrent!', 5000.0,
       'With enough bonus points acquired, you can Bump a torrent back to page 1 of the torrents page, bringing it back to life! \r\nThe torrent will then appear on page 1 again! The points are then removed from your Bonus Bank and the torrent is Bumped!\r\n** note there is an option to either view Bumped torrents or not.',
       'bump', 1, 0.0, 'yes', 5000.0, 'no', 0), (35, 38, 'Immunity', 250000.0,
                                                     'With enough bonus points acquired, you are able to exchange them for immunity for one month. The points are then removed from your Bonus Bank and the immunity switch is enabled on your account.',
                                                     'immunity', 1, 0.0, 'no', 250000.0, 'no', 0),
  (36, 23, 'User Unlocks', 500.0,
       'With enough bonus points acquired and a minimum of 50 reputation points, you are able to exchange them for bonus locked moods. The points are then removed from your Bonus Bank and the user unlocks configuration link will appear on your menu.',
       'userunlock', 1, 0.0, 'yes', 500.0, 'no', 0), (37, 13, '50GB Download Removal', 5500.0,
                                                          'With enough bonus points acquired, you are able to exchange them for a Download Credit Removal. The points are then removed from your Bonus Bank and the download credit is removed from your total downloaded amount.',
                                                          'traffic2', 53687091200, 1.0, 'no', 5500.0, 'no', 0),
  (38, 14, '100GB Download Removal', 11000.0,
       'With enough bonus points acquired, you are able to exchange them for a Download Credit Removal. The points are then removed from your Bonus Bank and the download credit is removed from your total downloaded amount.',
       'traffic2', 107374182400, 1.0, 'no', 11000.0, 'no', 0);
/*!40000 ALTER TABLE `bonus`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cards`
--

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards`
  DISABLE KEYS */;
INSERT INTO `cards`
VALUES (1, 2, 'two_spades'), (2, 3, 'three_spades'), (3, 4, 'four_spades'), (4, 5, 'five_spades'), (5, 6, 'six_spades'),
  (6, 7, 'seven_spades'), (7, 8, 'eight_spades'), (8, 9, 'nine_spades'), (9, 10, 'ten_spades'), (10, 10, 'jack_spades'),
  (11, 10, 'queen_spades'), (12, 10, 'king_spades'), (13, 1, 'ace_spades'), (14, 2, 'two_diamonds'),
  (15, 3, 'three_diamonds'), (16, 4, 'four_diamonds'), (17, 5, 'five_diamonds'), (18, 6, 'six_diamonds'),
  (19, 7, 'seven_diamonds'), (20, 8, 'eight_diamonds'), (21, 9, 'nine_diamonds'), (22, 10, 'ten_diamonds'),
  (23, 10, 'jack_diamonds'), (24, 10, 'queen_diamonds'), (25, 10, 'king_diamonds'), (26, 1, 'ace_diamonds'),
  (27, 2, 'two_clubs'), (28, 3, 'three_clubs'), (29, 4, 'four_clubs'), (30, 5, 'five_clubs'), (31, 6, 'six_clubs'),
  (32, 7, 'seven_clubs'), (33, 8, 'eight_clubs'), (34, 9, 'nine_clubs'), (35, 10, 'ten_clubs'), (36, 10, 'jack_clubs'),
  (37, 10, 'queen_clubs'), (38, 10, 'king_clubs'), (39, 1, 'ace_clubs'), (40, 2, 'two_hearts'), (41, 3, 'three_hearts'),
  (42, 4, 'four_hearts'), (43, 5, 'five_hearts'), (44, 6, 'six_hearts'), (45, 7, 'seven_hearts'),
  (46, 8, 'eight_hearts'), (47, 9, 'nine_hearts'), (48, 10, 'ten_hearts'), (49, 10, 'jack_hearts'),
  (50, 10, 'queen_hearts'), (51, 10, 'king_hearts'), (52, 1, 'ace_hearts');
/*!40000 ALTER TABLE `cards`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories`
  DISABLE KEYS */;
INSERT INTO `categories`
VALUES (1, 'Apps', 'cat_appz.png', 'No Description', 13, 3), (2, 'Games', 'cat_games.png', 'No Description', -1, 1),
  (3, 'Movies', 'cat_dvd.png', 'No Description', -1, 2), (4, 'Music', 'cat_music.png', 'No Description', -1, 4),
  (5, 'Episodes', 'cat_tveps.png', 'No Description', 3, 2), (6, 'XXX', 'cat_xxx.png', 'No Description', 3, 2),
  (7, 'Games/PSP', 'cat_psp.png', 'No Description', 2, 1), (8, 'Games/PS2', 'cat_ps2.png', 'No Description', 2, 1),
  (9, 'Anime', 'cat_anime.png', 'No Description', 3, 2), (10, 'Movies/XviD', 'cat_xvid.png', 'No Description', 3, 2),
  (11, 'Movies/HDTV', 'cat_hdtv.png', 'No Description', 3, 2),
  (12, 'Games/PC Rips', 'cat_pcrips.png', 'No Description', 2, 1),
  (13, 'Apps', 'cat_misc.png', 'No Description', -1, 3), (14, 'Music', 'cat_music.png', 'No Description', 4, 4);
/*!40000 ALTER TABLE `categories`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `class_config`
--

LOCK TABLES `class_config` WRITE;
/*!40000 ALTER TABLE `class_config`
  DISABLE KEYS */;
INSERT INTO `class_config`
VALUES (1, 'UC_USER', 0, 'USER', '8e35ef', 'user.gif'), (2, 'UC_POWER_USER', 1, 'POWER USER', 'f9a200', 'power.gif'),
  (3, 'UC_VIP', 2, 'VIP', '009f00', 'vip.gif'), (4, 'UC_UPLOADER', 3, 'UPLOADER', '0000ff', 'uploader.gif'),
  (5, 'UC_MODERATOR', 4, 'MODERATOR', 'fe2e2e', 'moderator.gif'),
  (6, 'UC_ADMINISTRATOR', 5, 'ADMINISTRATOR', 'b000b0', 'administrator.gif'),
  (7, 'UC_SYSOP', 6, 'SYSOP', '61df00', 'sysop.gif'), (8, 'UC_MIN', 0, '', '', ''), (9, 'UC_MAX', 6, '', '', ''),
  (10, 'UC_STAFF', 4, '', '', '');
/*!40000 ALTER TABLE `class_config`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cleanup`
--

LOCK TABLES `cleanup` WRITE;
/*!40000 ALTER TABLE `cleanup`
  DISABLE KEYS */;
INSERT INTO `cleanup` VALUES
  (4, 'Lottery Autoclean', 'lotteryclean.php', 1515888000, 86400, 'd6704d582b136ea1ed13635bb9059f57', 1,
   'Lottery Autoclean - Lottery clean up here every X days', 1, 'lotteryclean'),
  (5, 'Optimze Db Auto', 'optimizedb.php', 1515974400, 172800, 'd6704d582b136ea1ed13635bb9059f57', 1, 'Auto Optimize - Runs every 2 days', 1, 'optimizedb'),
  (6, 'Auto Backup Db', 'backupdb.php', 1515884400, 3600, 'd6704d582b136ea1ed13635bb9059f57', 1, 'Auto Backup - Runs every 1 day', 1, 'backupdb'),
  (8, 'Irc bonus', 'irc_update.php', 1515882600, 1800, 'c06a074cd6403bcc1f292ce864c3cdd5', 1, 'Irc idle bonus update', 1, 'irc_update'),
  (9, 'Statistics', 'sitestats_update.php', 1515884400, 3600, '2a2afb82d82cc4ddcb6ff1753a40dfe9', 1, 'SIte statistics update', 1, 'sitestats_update'),
  (10, 'Karma Bonus', 'karma_update.php', 1515882600, 1800, 'd0df8a38cfba26ece2c285189a656ad0', 1, 'Seedbonus award update', 1, 'karma_update'),
  (11, 'Forums', 'forum_update.php', 1515881700, 900, 'c9c58a0d43b02cd5358115673bc04c9e', 1, 'Forum online and count update', 1, 'forum_update'),
  (12, 'Torrents', 'torrents_update.php', 1515801600, 900, '81875d0e7b63771ae2a59f2a48755da4', 1, 'Torrents update', 0, 'torrents_update'),
  (13, 'Normalize', 'torrents_normalize.php', 1515801600, 900, '1274dd2d9ffd203e6d489db25d0f28fe', 1, 'File, comment, torrent update', 0, 'torrents_normalize'),
  (14, 'Ips', 'ip_update.php', 1515888000, 86400, '0b4f34774259b5069d220c485aa10eba', 1, 'Ip clean', 1, 'ip_update'),
  (15, 'Signups', 'expired_signup_update.php', 1516060800, 259200, 'bdde41096f769d1a01251813cc2c1353', 1, 'Expired signups update', 1, 'expired_signup_update'),
  (16, 'Peers', 'peer_update.php', 1515801600, 900, '72181fc6214ddc556d71066df031d424', 1, 'Peers update', 0, 'peer_update'),
  (17, 'Visible', 'visible_update.php', 1515881700, 900, '77c523eab12be5d0342e4606188cd2ca', 1, 'Torrents visible update', 1, 'visible_update'),
  (18, 'Announcements', 'announcement_update.php', 1515888000, 86400, 'b73c139b4defbc031e201b91fef29a4c', 1, 'Old announcement updates', 1, 'announcement_update'),
  (19, 'Readposts', 'readpost_update.php', 1515888000, 86400, '3e0c8bc6b6e6cc61fdfe8b26f8268b77', 1, 'Old Readposts updates', 1, 'readpost_update'),
  (20, 'Happyhour', 'happyhour_update.php', 1515801600, 43200, 'a7c422bc9f17b3fba5dab2d0129acd32', 1, 'HappyHour Updates', 0, 'happyhour_update'),
  (21, 'Customsmilies', 'customsmilie_update.php', 1515888000, 86400, '9e8a41be2b0a56d83e0d0c0b00639f66', 1, 'Custom Smilie Update', 1, 'customsmilie_update'),
  (22, 'Karma Vips', 'karmavip_update.php', 1515888000, 86400, 'c444f13b95998c98a851714673ff6b84', 1, 'Karma VIp Updates', 1, 'karmavip_update'),
  (23, 'Anonymous Profile', 'anonymous_update.php', 1515888000, 86400, '25146aec76a7b163ac6955685ff667d9', 1, 'Anonymous Profile Updates', 1, 'anonymous_update'),
  (24, 'Delete Torrents', 'delete_torrents_update.php', 1515801600, 86400, '52f8e3c9fd438d4a86062f88f1146098', 1, 'Delete Old Torrents Update', 0, 'delete_torrents_update'),
  (25, 'Funds', 'funds_update.php', 1515888000, 86400, '5f50f43a9e640cd6203e1964c17361ba', 1, 'Funds And Donation Updates', 1, 'funds_update'),
  (26, 'Leechwarns', 'leechwarn_update.php', 1515888000, 86400, '0303a05302fadf30fc18f987d2a5b285', 1, 'Leechwarnings Update', 1, 'leechwarn_update'),
  (27, 'Auto Invite', 'autoinvite_update.php', 1515888000, 86400, '48839ced75a612d41d9278718075dbb2', 1, 'Auto Invite Updates', 1, 'autoinvite_update'),
  (28, 'Hit And Run', 'hitrun_update.php', 1515801600, 3600, '3ab445bbff84f87e8dc5a16489d7ca31', 1, 'Hit And Run Updates', 0, 'hitrun_update'),
  (29, 'Freeslots Update', 'freeslot_update.php', 1515801600, 86400, '63db6b0519eccbfe0b06d87b8f0bcaad', 1, 'Freeslots Stuffs Update', 0, 'freeslot_update'),
  (30, 'Backup Clean', 'backup_update.php', 1515888000, 86400, '2c0d1a9ffa04937255344b97e2c9706f', 1, 'Backups Clean Update', 1, 'backup_update'),
  (31, 'Inactive Clean', 'inactive_update.php', 1515888000, 86400, 'a401de097e031315b751b992ee40d733', 1, 'Inactive Users Update', 1, 'inactive_update'),
  (33, 'Power User Clean', 'pu_update.php', 1515888000, 86400, '4751425b1c765360a5f8bab14c6b9a47', 1, 'Power User Clean Updates', 1, 'pu_update'),
  (34, 'Power User Demote Clean', 'pu_demote_update.php', 1515888000, 86400, 'e9249b5f653f03ed425d68947155056b', 1, 'Power User Demote Clean Updates', 1, 'pu_demote_update'),
  (35, 'Bugs Clean', 'bugs_update.php', 1517011200, 1209600, '1e9734cdf50408a7739b7b03272aeab3', 1, 'Bugs Update Clean', 1, 'bugs_update'),
  (36, 'Sitepot Clean', 'sitepot_update.php', 1515801600, 86400, '29dae941216f1bdb81f69dce807b3501', 1, 'Sitepot Update Clean', 0, 'sitepot_update'),
  (37, 'Userhits Clean', 'userhits_update.php', 1515888000, 86400, 'd0cec8e7adb50290db6cf911a5c74339', 1, 'Userhits Clean Updates', 1, 'userhits_update'),
  (38, 'Process Kill', 'processkill_update.php', 1515888000, 86400, 'b7c0f14c9482a14e9f5cb0d467dfd7c6', 1, 'Mysql Process KIll Updates', 1, 'processkill_update'),
  (40, 'Pirate Cleanup', 'pirate_update.php', 1515888000, 86400, 'e5f20d43425832e9397841be6bc92be2', 1, 'Pirate Stuffs Update', 1, 'pirate_update'),
  (41, 'King Cleanup', 'king_update.php', 1515888000, 86400, '12b5c6c9f9919ca09816225c29fddaeb', 1, 'King Stuffs Update', 1, 'king_update'),
  (42, 'Free User Cleanup', 'freeuser_update.php', 1515801600, 3900, '37f9de0443159bf284a1c7a703e96cf9', 1, 'Free User Stuffs Update', 0, 'freeuser_update'),
  (43, 'Download Possible Cleanup', 'downloadpos_update.php', 1515888000, 86400, 'e20bcc6d07c6ec493e106adb8d2a8227', 1, 'Download Possible Stuffs Update', 1, 'downloadpos_update'),
  (44, 'Upload Possible Cleanup', 'uploadpos_update.php', 1515888000, 86400, 'fd1110b750af878faccaf672fe53876d', 1, 'Upload Possible Stuffs Update', 1, 'uploadpos_update'),
  (45, 'Free Torrents Cleanup', 'freetorrents_update.php', 1515801600, 3600, '20390090ac784fee830d19bd708cfcad', 1, 'Free Torrents Stuffs Update', 0, 'freetorrents_update'),
  (46, 'Chatpost Cleanup', 'chatpost_update.php', 1515888000, 86400, 'bab6f1de36dc97dff02745051e076a39', 1, 'Chatpost Stuffs Update', 1, 'chatpost_update'),
  (47, 'Immunity Cleanup', 'immunity_update.php', 1515888000, 86400, '11bf6f41c659b9f49f6ccdfa616e9f82', 1, 'Immunity Stuffs Update', 1, 'immunity_update'),
  (48, 'Warned Cleanup', 'warned_update.php', 1515888000, 86400, '6e558b89ac60454eaa3a45243347c977', 1, 'Warned Stuffs Update', 1, 'warned_update'),
  (49, 'Games Update', 'gameaccess_update.php', 1515888000, 86400, '33704fd97f8840ff08ef4e6ff236b3e4', 1, 'Games Stuffs Updates', 1, 'gameaccess_update'),
  (50, 'Pm Update', 'sendpmpos_update.php', 1515888000, 86400, '32784b9c2891f022a91d5007f068f7d9', 1, 'Pm Stuffs Updates', 1, 'sendpmpos_update'),
  (51, 'Avatar Update', 'avatarpos_update.php', 1515888000, 86400, 'f257794129ee772f5cfe00b33b363100', 1, 'Avatar Stuffs Updates', 1, 'avatarpos_update'),
  (52, 'Birthday Pms', 'birthday_update.php', 1515888000, 86400, '1fd167bf236ea5e74e835224d1cc36e9', 1, 'Pm all members with birthdays.', 1, 'birthday_update'),
  (53, 'Movie of the week', 'mow_update.php', 1516406400, 604800, '716274782f2f7229d960a6661fb06b60', 1, 'Updates movie of the week', 1, 'mow_update'),
  (54, 'Silver torrents', 'silvertorrents_update.php', 1515801600, 3600, '3e1aab005271870d69934ebe37e28819', 1, 'Clean expired silver', 0, 'silvertorrents_update'),
  (55, 'Failed Logins', 'failedlogin_update.php', 1515888000, 86400, 'c90f0f030d7914db6ae1263de1730541', 1, 'Delete expired failed logins', 1, 'failedlogin_update'),
  (56, 'Christmas Gift Rest', 'gift_update.php', 1515801600, 31536000, '4bdd6190a0ba3420d21b50b79945c06b', 1, 'Reset all users yearly Christmas gift', 0, 'gift_update'),
  (58, 'Achievements Update', 'achievement_avatar_update.php', 1515888000, 86400, '0c5889bab74e7ff8f920ec524423f627', 1, 'Updates user avatar achievements', 1, 'achievement_avatar_update'),
  (59, 'Achievements Update', 'achievement_bday_update.php', 1515888000, 86400, '2b95ff34a27d540f61ceca3ee1424216', 1, 'Updates user birthday achievements', 1, 'achievement_bday_update'),
  (60, 'Achievements Update', 'achievement_corrupt_update.php', 1515888000, 86400, 'afefaecc0e31e412c28dbab154e43f9d', 1, 'Updates user corrupt achievements', 1, 'achievement_corrupt_update'),
  (61, 'Achievements Update', 'achievement_fpost_update.php', 1515888000, 86400, 'f466ff2246e7e84bc60210aa947185da', 1, 'Updates user forum post achievements', 1, 'achievement_fpost_update'),
  (62, 'Achievements Update', 'achievement_ftopics_update.php', 1515888000, 86400, '825f6cac5fa992f505ceea3992db5483', 1, 'Updates user forum topic achievements', 1, 'achievement_ftopics_update'),
  (63, 'Achievements Update', 'achievement_invite_update.php', 1515888000, 86400, '02e56c3aeba0b1e3e4bcca11699f23eb', 1, 'Updates user invite achievements', 1, 'achievement_invite_update'),
  (64, 'Achievements Update', 'achievement_karma_update.php', 1515888000, 86400, '3827839629ade62f03a9fccbacb8402a', 1, 'Updates user Karma achievements', 1, 'achievement_karma_update'),
  (65, 'Achievements Update', 'achievement_request_update.php', 1515888000, 86400, '48ec70ecc00c88b37977e2743d294888', 1, 'Updates user request achievements', 1, 'achievement_request_update'),
  (66, 'Achievements Update', 'achievement_seedtime_update.php', 1515888000, 86400, '158fb134b7a1487bdda67d42544693fc', 1, 'Updates user seedtime achievements', 1, 'achievement_seedtime_update'),
  (67, 'Achievements Update', 'achievement_sheep_update.php', 1515888000, 86400, '97c3919a5947e00952bf82d1dc6f5c58', 1, 'Updates user sheep achievements', 1, 'achievement_sheep_update'),
  (68, 'Achievements Update', 'achievement_shouts_update.php', 1515888000, 86400, 'b07151b274bb6d568ab1bc3b3364cb6c', 1, 'Updates user shout achievements', 1, 'achievement_shouts_update'),
  (69, 'Achievements Update', 'achievement_sig_update.php', 1515888000, 86400, '82c3ff41b8e45a96bcd1582345d6dca9', 1, 'Updates user signature achievements', 1, 'achievement_sig_update'),
  (70, 'Achievements Update', 'achievement_sreset_update.php', 1515888000, 86400, 'b51582111414701c0bd512fd2b4f0507', 1, 'Updates user achievements - Reset shouts', 1, 'achievement_sreset_update'),
  (71, 'Achievements Update', 'achievement_sticky_update.php', 1515888000, 86400, '00aaf60d3806924a42e95e64ee00c5fb', 1, 'Updates user sticky torrents achievements', 1, 'achievement_sticky_update'),
  (72, 'Achievements Update', 'achievement_up_update.php', 1515888000, 86400, 'b0feb2e2c22dbf9f1575c798a5d1560d', 1, 'Updates user uploader achievements', 1, 'achievement_up_update'),
  (73, 'Referrer cleans', 'referrer_update.php', 1515801600, 86400, '36bc2469228c1e0c8269ee9d309be37f', 1, 'Referrer Autoclean - Removes expired referrer entrys', 0, 'referrer_update'),
  (74, 'Snatch list admin', 'snatchclean_update.php', 1515801600, 86400, 'cfb8afef5b7a1c41e047dc791b0f1de0', 1, 'Clean old dead data', 0, 'snatchclean_update'),
  (76, 'Normalize XBT', 'torrents_normalize_xbt.php', 1515801600, 900, 'bd4f4ae7d7499aefbce82971a3b1cbbd', 1, 'XBT normalize query updates', 0, 'torrents_normalize_xbt'),
  (77, 'Delete Torrents XBT', 'delete_torrents_xbt_update.php', 1515801600, 86400, '2d47cfeddfd61ed4529e0d4a25ca0d12', 1, 'Delete torrent xbt update', 0, 'delete_torrents_xbt_update'),
  (78, 'XBT Torrents', 'torrents_update_xbt.php', 1515801600, 900, '79e243cf24e92a13441b381d033d03a9', 1, 'XBT Torrents update', 0, 'torrents_update_xbt'),
  (79, 'XBT Peers', 'peer_update_xbt.php', 1515801600, 900, '3a0245bc43e2cad94ac7966bb3fe75f3', 1, 'XBT Peers update - Not required', 0, 'peer_update_xbt'),
  (80, 'XBT hit and run system', 'hitrun_xbt_update.php', 1515801600, 3600, 'a6804b0f6d5ce68ac390d4d261a82d85', 1,
   'XBT hit and run detection', 0, 'hitrun_xbt_update'),
  (81, 'Clean cheater data', 'cheatclean_update.php', 1515888000, 86400, '9b0112ad44b0135220ef539804447d49', 1,
   'Clean abnormal upload speed entrys', 1, 'cheatclean_update'),
  (82, 'Trivia Cleanup', 'trivia_update.php', 1515881100, 300, '936cde05931085f7f3a1454b183c4522', 1,
   'Trivia Questions Cleanup', 1, 'trivia_update'),
  (83, 'Trivia Bonus Points', 'trivia_points_update.php', 1515888000, 86400, '62c3968205f2c1080b2253f90aeb31ef', 1,
   'Trivia Bonus Points', 1, 'trivia_points_update'),
  (84, 'AJAX Chat Cleanup', 'ajax_chat_cleanup.php', 1515884400, 3600, 'ba43819129177f9fcdbc46a7f39ea25c', 1,
   'Remove autoshouts after they have expired', 1, 'ajax_chat_cleanup');
/*!40000 ALTER TABLE `cleanup`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries`
  DISABLE KEYS */;
INSERT INTO `countries`
VALUES (1, 'Sweden', 'sweden.gif'), (2, 'United States of America', 'usa.gif'), (3, 'Russia', 'russia.gif'),
  (4, 'Finland', 'finland.gif'), (5, 'Canada', 'canada.gif'), (6, 'France', 'france.gif'),
  (7, 'Germany', 'germany.gif'), (8, 'China', 'china.gif'), (9, 'Italy', 'italy.gif'), (10, 'Denmark', 'denmark.gif'),
  (11, 'Norway', 'norway.gif'), (12, 'United Kingdom', 'uk.gif'), (13, 'Ireland', 'ireland.gif'),
  (14, 'Poland', 'poland.gif'), (15, 'Netherlands', 'netherlands.gif'), (16, 'Belgium', 'belgium.gif'),
  (17, 'Japan', 'japan.gif'), (18, 'Brazil', 'brazil.gif'), (19, 'Argentina', 'argentina.gif'),
  (20, 'Australia', 'australia.gif'), (21, 'New Zealand', 'newzealand.gif'), (22, 'Spain', 'spain.gif'),
  (23, 'Portugal', 'portugal.gif'), (24, 'Mexico', 'mexico.gif'), (25, 'Singapore', 'singapore.gif'),
  (26, 'South Africa', 'southafrica.gif'), (27, 'South Korea', 'southkorea.gif'), (28, 'Jamaica', 'jamaica.gif'),
  (29, 'Luxembourg', 'luxembourg.gif'), (30, 'Hong Kong', 'hongkong.gif'), (31, 'Belize', 'belize.gif'),
  (32, 'Algeria', 'algeria.gif'), (33, 'Angola', 'angola.gif'), (34, 'Austria', 'austria.gif'),
  (35, 'Yugoslavia', 'yugoslavia.gif'), (36, 'Western Samoa', 'westernsamoa.gif'), (37, 'Malaysia', 'malaysia.gif'),
  (38, 'Dominican Republic', 'dominicanrep.gif'), (39, 'Greece', 'greece.gif'), (40, 'Guatemala', 'guatemala.gif'),
  (41, 'Israel', 'israel.gif'), (42, 'Pakistan', 'pakistan.gif'), (43, 'Czech Republic', 'czechrep.gif'),
  (44, 'Serbia', 'serbia.gif'), (45, 'Seychelles', 'seychelles.gif'), (46, 'Taiwan', 'taiwan.gif'),
  (47, 'Puerto Rico', 'puertorico.gif'), (48, 'Chile', 'chile.gif'), (49, 'Cuba', 'cuba.gif'),
  (50, 'Congo', 'congo.gif'), (51, 'Afghanistan', 'afghanistan.gif'), (52, 'Turkey', 'turkey.gif'),
  (53, 'Uzbekistan', 'uzbekistan.gif'), (54, 'Switzerland', 'switzerland.gif'), (55, 'Kiribati', 'kiribati.gif'),
  (56, 'Philippines', 'philippines.gif'), (57, 'Burkina Faso', 'burkinafaso.gif'), (58, 'Nigeria', 'nigeria.gif'),
  (59, 'Iceland', 'iceland.gif'), (60, 'Nauru', 'nauru.gif'), (61, 'Slovenia', 'slovenia.gif'),
  (62, 'Albania', 'albania.gif'), (63, 'Turkmenistan', 'turkmenistan.gif'),
  (64, 'Bosnia Herzegovina', 'bosniaherzegovina.gif'), (65, 'Andorra', 'andorra.gif'),
  (66, 'Lithuania', 'lithuania.gif'), (67, 'India', 'india.gif'), (68, 'Netherlands Antilles', 'nethantilles.gif'),
  (69, 'Ukraine', 'ukraine.gif'), (70, 'Venezuela', 'venezuela.gif'), (71, 'Hungary', 'hungary.gif'),
  (72, 'Romania', 'romania.gif'), (73, 'Vanuatu', 'vanuatu.gif'), (74, 'Vietnam', 'vietnam.gif'),
  (75, 'Trinidad & Tobago', 'trinidadandtobago.gif'), (76, 'Honduras', 'honduras.gif'),
  (77, 'Kyrgyzstan', 'kyrgyzstan.gif'), (78, 'Ecuador', 'ecuador.gif'), (79, 'Bahamas', 'bahamas.gif'),
  (80, 'Peru', 'peru.gif'), (81, 'Cambodia', 'cambodia.gif'), (82, 'Barbados', 'barbados.gif'),
  (83, 'Bangladesh', 'bangladesh.gif'), (84, 'Laos', 'laos.gif'), (85, 'Uruguay', 'uruguay.gif'),
  (86, 'Antigua Barbuda', 'antiguabarbuda.gif'), (87, 'Paraguay', 'paraguay.gif'),
  (88, 'Union of Soviet Socialist Republics', 'ussr.gif'), (89, 'Thailand', 'thailand.gif'),
  (90, 'Senegal', 'senegal.gif'), (91, 'Togo', 'togo.gif'), (92, 'North Korea', 'northkorea.gif'),
  (93, 'Croatia', 'croatia.gif'), (94, 'Estonia', 'estonia.gif'), (95, 'Colombia', 'colombia.gif'),
  (96, 'Lebanon', 'lebanon.gif'), (97, 'Latvia', 'latvia.gif'), (98, 'Costa Rica', 'costarica.gif'),
  (99, 'Egypt', 'egypt.gif'), (100, 'Bulgaria', 'bulgaria.gif'), (101, 'Scotland', 'scotland.gif'),
  (102, 'United Arab Emirates', 'uae.gif'), (103, 'Slovakia', 'slovakia.gif');
/*!40000 ALTER TABLE `countries`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `database_updates`
--

LOCK TABLES `database_updates` WRITE;
/*!40000 ALTER TABLE `database_updates`
  DISABLE KEYS */;
INSERT INTO `database_updates` VALUES (1, 'ALTER TABLE polls DROP `starter_name`', '2017-12-06 19:29:55'),
  (2, 'ALTER TABLE `messages` ADD FULLTEXT INDEX `ft_subject` (`subject`);', '2017-12-07 14:25:49'),
  (3, 'ALTER TABLE `messages` ADD FULLTEXT INDEX `ft_msg` (`msg`);', '2017-12-07 14:25:56'),
  (4, 'ALTER TABLE `messages` ADD FULLTEXT INDEX `ft_subject_msg` (`subject`, `msg`);', '2017-12-07 14:26:15'),
  (5, 'ALTER TABLE `database_updates` DROP COLUMN `info`;', '2017-12-31 14:42:37'),
  (6, 'ALTER TABLE `peers` MODIFY `last_action` int(10) unsigned NOT NULL DEFAULT 0;', '2017-12-10 21:59:43'),
  (7, 'ALTER TABLE `peers` MODIFY `prev_action` int(10) unsigned NOT NULL DEFAULT 0;', '2017-12-10 21:59:48'),
  (8, 'ALTER TABLE `ips` ADD UNIQUE INDEX `ip_userid`(`ip`, `userid`);', '2017-12-11 15:10:18'),
  (9, 'ALTER TABLE `users` MODIFY `seedbonus` decimal(20,1) NOT NULL DEFAULT 200;', '2017-12-31 15:29:39'),
  (10, 'ALTER TABLE `users` MODIFY `invites` int(10) unsigned NOT NULL DEFAULT 0', '2017-12-31 16:30:34'),
  (11, 'ALTER TABLE `events` MODIFY `startTime` int(10) unsigned NOT NULL DEFAULT 0', '2017-12-31 18:18:53'),
  (12, 'ALTER TABLE `events` MODIFY `endTime` int(10) unsigned NOT NULL DEFAULT 0', '2017-12-31 18:18:56'),
  (13, 'ALTER TABLE `events` MODIFY `displayDates` tinyint(1) NOT NULL DEFAULT 0', '2017-12-31 18:18:58'),
  (14, 'ALTER TABLE `invite_codes` MODIFY `receiver` int(10) unsigned NOT NULL DEFAULT 0', '2017-12-31 18:19:00'),
  (15, 'ALTER TABLE `invite_codes` MODIFY `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL', '2017-12-31 18:19:04'),
  (16, 'ALTER TABLE `invite_codes` CHANGE `invite_added` `added` int(10) unsigned NOT NULL DEFAULT 0', '2017-12-31 18:37:02'),
  (17, 'ALTER TABLE `invite_codes` MODIFY `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL', '2017-12-31 18:19:29'),
  (18, 'ALTER TABLE `invite_codes` DROP INDEX `sender`', '2017-12-31 18:37:02'),
  (19, 'ALTER TABLE `invite_codes` ADD INDEX `sender`(`sender`)', '2017-12-31 18:49:40'),
  (20, 'ALTER TABLE `invite_codes` DROP INDEX `sender_2`', '2017-12-31 18:49:40'),
  (21, 'RENAME TABLE `password_resets` TO `tokens`', '2017-12-31 18:49:40'),
  (22, 'ALTER TABLE `torrents` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci', '2017-12-31 18:19:53'),
  (23, 'DROP TABLE `torrent_pass`', '2017-12-31 18:37:02'),
  (24, 'ALTER TABLE `users` MODIFY `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL', '2017-12-31 18:20:02'),
  (25, 'ALTER TABLE `tokens` DROP INDEX `password_resets_email_index`', '2017-12-31 19:47:18'),
  (26, 'ALTER TABLE `tokens` ADD INDEX `id`(`id`)', '2017-12-31 19:47:18'),
  (27, 'ALTER TABLE `tokens` ADD INDEX `email`(`email`)', '2017-12-31 19:47:18'),
  (28, 'ALTER TABLE `messages` MODIFY `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL', '2018-01-04 20:45:50'),
  (29, 'ALTER TABLE `users` MODIFY `birthday` date DEFAULT \'1970-01-01\'', '2018-01-07 23:35:53'),
  (30, 'UPDATE `site_config` SET `name` = \'bonus_max_torrents\' WHERE `name` = \'bonux_max_torrents\'', '2018-01-11 20:23:46'),
  (31, 'UPDATE cleanup SET `clean_on` = 0, `clean_title` = \'Delete Torrents XBT\' WHERE `clean_file` = \'delete_torrents_xbt_update.php\'', '2018-01-13 14:30:25'),
  (32, 'ALTER TABLE `snatched` ADD UNIQUE INDEX `userid_torrentid`(`userid`, `torrentid`)', '2018-01-13 21:42:41');
/*!40000 ALTER TABLE `database_updates`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events`
  DISABLE KEYS */;
INSERT INTO `events` VALUES (1, 1, 1371323531, 1371582731, 'HalfDownload [ON]', 1, 0, 0, 1);
/*!40000 ALTER TABLE `events`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `forum_config`
--

LOCK TABLES `forum_config` WRITE;
/*!40000 ALTER TABLE `forum_config`
  DISABLE KEYS */;
INSERT INTO `forum_config` VALUES (1, 1, 4, 7, 6, 'a:3:{i:0;s:3:\"zip\";i:1;s:3:\"rar\";i:2;s:0:\"\";}',
                                   'a:3:{i:0;s:15:\"application/zip\";i:1;s:15:\"application/rar\";i:2;s:0:\"\";}',
                                   2097152, 'uploads/');
/*!40000 ALTER TABLE `forum_config`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `forums`
--

LOCK TABLES `forums` WRITE;
/*!40000 ALTER TABLE `forums`
  DISABLE KEYS */;
INSERT INTO `forums` VALUES (0, 3, 'Say Hello!', 'Introduce yourself', 0, 0, 0, 0, 0, 0, 3);
/*!40000 ALTER TABLE `forums`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `freeleech`
--

LOCK TABLES `freeleech` WRITE;
/*!40000 ALTER TABLE `freeleech`
  DISABLE KEYS */;
INSERT INTO `freeleech` VALUES
  (1, 'Contribute 1 to Site Countdown Pot', 1, 'Donate 1 coin and 1 minute will be removed from the Countdown.',
   'contribute', 60),
  (2, 'Contribute 5 to Site Countdown Pot', 5, 'Donate 5 coins and 5 minutes will be removed from the Countdown.', 'contribute', 300),
  (3, 'Contribute 10 to Site Countdown Pot', 10, 'Donate 10 coins and 10 minutes will be removed from the Countdown.', 'contribute', 600),
  (4, 'Contribute 25 to Site Countdown Pot', 25, 'Donate 25 coins and 25 minutes will be removed from the Countdown.', 'contribute', 1500),
  (5, 'Contribute 50 to Site Countdown Pot', 50, 'Donate 50 coins and 50 minutes will be removed from the Countdown.', 'contribute', 3000),
  (6, 'Contribute 100 to Site Countdown Pot', 100, 'Donate 100 coins and 1 hour and 40 minutes will be removed from the Countdown.', 'contribute', 6000),
  (7, 'Contribute 500 to Site Countdown Pot', 500, 'Donate 500 coins and 8 hours and 20 minutes will be removed from the Countdown.', 'contribute', 30000),
  (8, 'Contribute 1000 to Site Countdown Pot', 1000, 'Donate 1000 coins and 16 hours and 40 minutes will be removed from the Countdown.', 'contribute', 60000),
  (9, 'Contribute to Site Countdown Pot', 0, 'Enter a custom amount to donate. ', 'contribut3', 0),
  (10, 'Freeleech', 0, 'Freeleech Sunday is enabled', 'countdown', 1362355200),
  (11, 'Sitewide Freeleech', 0, 'set by', 'manual', 0), (12, 'Sitewide Doubleseed', 0, 'set by ', 'manual', 0),
  (13, 'Sitewide Freeleech and Doubleseed', 0, 'set by', 'manual', 0),
  (15, 'Crazy Hour', 1395007265, 'Freeleech and Double Upload credit for 24 Hours', 'crazyhour', 0);
/*!40000 ALTER TABLE `freeleech`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `hit_and_run_settings`
--

LOCK TABLES `hit_and_run_settings` WRITE;
/*!40000 ALTER TABLE `hit_and_run_settings`
  DISABLE KEYS */;
INSERT INTO `hit_and_run_settings`
VALUES ('firstclass', 'UC_POWER_USER'), ('secondclass', 'UC_VIP'), ('thirdclass', 'UC_MODERATOR'),
  ('_3day_first', '48'), ('_14day_first', '30'), ('_14day_over_first', '18'), ('_3day_second', '48'),
  ('_14day_second', '30'), ('_14day_over_second', '18'), ('_3day_third', '48'), ('_14day_third', '30'),
  ('_14day_over_third', '18'), ('torrentage1', '1'), ('torrentage2', '7'), ('torrentage3', '7'), ('cainallowed', '3'),
  ('caindays', '0.5'), ('hnr_online', '1');
/*!40000 ALTER TABLE `hit_and_run_settings`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `lottery_config`
--

LOCK TABLES `lottery_config` WRITE;
/*!40000 ALTER TABLE `lottery_config`
  DISABLE KEYS */;
INSERT INTO `lottery_config`
VALUES ('ticket_amount', '10000'), ('ticket_amount_type', 'seedbonus'), ('user_tickets', '10'),
  ('class_allowed', '0|1|2|3|4|5|6'), ('total_winners', '5'), ('prize_fund', '10000000'), ('start_date', '1328458121'),
  ('end_date', '1328542721'), ('use_prize_fund', '1'), ('enable', '0'), ('lottery_winners', ''),
  ('lottery_winners_amount', '2000000'), ('lottery_winners_time', '1334782914');
/*!40000 ALTER TABLE `lottery_config`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `moods`
--

LOCK TABLES `moods` WRITE;
/*!40000 ALTER TABLE `moods`
  DISABLE KEYS */;
INSERT INTO `moods` VALUES (1, 'is feeling neutral', 'noexpression.gif', 0), (2, 'is feeling bad', 'wall.gif', 0),
  (3, 'is feeling good', 'grin.gif', 0), (4, 'is feeling tired', 'yawn.gif', 0),
  (5, 'is feeling angry', 'angry.gif', 0), (6, 'in wub', 'wub.gif', 0), (7, 'is feeling sad', 'wavecry.gif', 0),
  (8, 'is feeling silly', 'clown.gif', 0), (9, 'in love', 'love.gif', 0), (10, 'is a pirate', 'pirate.gif', 0),
  (11, 'is feeling like ranting', 'rant.gif', 0), (12, 'is feeling devilish', 'devil.gif', 0),
  (13, 'is feeling yucky', 'yucky.gif', 0), (14, 'yarrr matey', 'pirate2.gif', 0),
  (15, 'is feeling happy', 'smile1.gif', 0), (16, 'is feeling like a tease', 'tease.gif', 0),
  (17, 'is feeling awesome', 'w00t.gif', 0), (18, 'is feeling bananas', 'bananadance.gif', 0),
  (19, 'is drinking with friends', 'beer2.gif', 0), (20, 'is drinking', 'beer.gif', 0),
  (21, 'is feeling like an angel', 'angel.gif', 0), (22, 'is feeling bossy', 'cigar.gif', 0),
  (23, 'needs coffee', 'cuppa.gif', 0), (24, 'is feeling like crying', 'cry.gif', 0), (25, 'is dancing', 'mml.gif', 0),
  (26, 'is feeling crazy', 'crazy.gif', 0), (27, 'is drunk', 'drunk.gif', 0),
  (28, 'has gone fishing', 'fishing.gif', 0), (29, 'is having fun', 'fun.gif', 0),
  (30, 'is feeling like a winner', 'hooray.gif', 0), (31, 'is feeling innocent', 'innocent.gif', 0),
  (32, 'is laughing out loud', 'laugh.gif', 0), (33, 'is feeling like kissing', 'kissing2.gif', 0),
  (34, 'is feeling lazy', 'smoke2.gif', 0), (35, 'is feeling like a king', 'king.gif', 0),
  (36, 'is into the music', 'music.gif', 0), (37, 'is a ninja', 'ninja.gif', 0),
  (38, 'is feeling old', 'oldtimer.gif', 0), (39, 'is feeling like a pimp', 'pimp.gif', 0),
  (40, 'is feeling like shit', 'shit.gif', 0), (41, 'is feeling sly', 'sly.gif', 0),
  (42, 'is feeling smart', 'smart.gif', 0), (43, 'is stoned', 'smokin.gif', 0),
  (44, 'is feeling weird', 'weirdo.gif', 0), (45, 'is in shock', 'sheesh.gif', 0),
  (46, 'is bored', 'tumbleweed.gif', 0), (47, 'is taz!', 'taz.gif', 1), (48, 'is spidey', 'spidey.gif', 0),
  (49, 'is hitting the bong', 'bong.gif', 1), (50, 'is drinking cola', 'pepsi.gif', 1),
  (51, 'is bouncing', 'trampoline.gif', 1), (52, 'is feeling super', 'super.gif', 1),
  (53, 'is feeling lucky', 'clover.gif', 1), (54, 'is kenny', 'kenny.gif', 0), (55, 'is in bed', 'sleeping.gif', 0),
  (56, 'Is old', 'oldman.gif', 0), (57, 'is pissed drunk', 'drinks.gif', 0), (58, 'is telling a story', 'talk2.gif', 0),
  (59, 'is having a cig', 'cigar.gif', 0), (60, 'is eating cookies', 'cookies.gif', 0),
  (61, 'is feeling Good!', 'good.gif', 0), (62, 'is feeling artistic', 'graffiti.gif', 0),
  (63, 'is farting', 'fart3.gif', 0), (64, 'is hard at work', 'elektrik.gif', 0),
  (65, 'is grooving to the music', 'music.gif', 0), (66, 'is headbanging', 'punk.gif', 0),
  (67, 'is a slurpee ninja', 'ninja.gif', 1), (100, 'is dead', 'wink_skull.gif', 0),
  (101, 'is crabby', 'evilmad.gif', 0), (102, 'woof woof!', 'pish.gif', 0),
  (103, 'is feeling like an angel', 'angeldevil.gif', 0), (104, 'is headbanging', 'mini4.gif', 0),
  (105, 'Is banned', 'banned.gif', 0), (106, 'is teasing', 'blum.gif', 0), (107, 'is crazy', 'crazy.gif', 0),
  (108, 'is da bomb', 'bomb.gif', 0), (121, 'is smiling', 'smile2.gif', 0), (122, 'is cheerful', 'clapper1.gif', 0),
  (123, 'hitting the bhong', 'bhong.gif', 0), (131, 'is a wizard', 'wizard.gif', 0),
  (132, 'is a pissed off', 'soapbox1.gif', 0), (133, 'is wanted', 'wanted.gif', 0), (202, 'devil', 'devil.gif', 0),
  (203, 'is wacko', 'wacko.gif', 0);
/*!40000 ALTER TABLE `moods`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `over_forums`
--

LOCK TABLES `over_forums` WRITE;
/*!40000 ALTER TABLE `over_forums`
  DISABLE KEYS */;
INSERT INTO `over_forums` VALUES (3, 'General', 'Anything goes....', 0, 0);
/*!40000 ALTER TABLE `over_forums`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `paypal_config`
--

LOCK TABLES `paypal_config` WRITE;
/*!40000 ALTER TABLE `paypal_config`
  DISABLE KEYS */;
INSERT INTO `paypal_config`
VALUES ('email', ''), ('gb', '3'), ('weeks', '4'), ('invites', '1'), ('enable', '1'), ('freeslots', '5'),
  ('freeleech', '1'), ('immunity', '1'), ('seedbonus', '100'), ('reputation', '100'), ('multiplier', '5'),
  ('currency', '\'GBP\''), ('staff', '1'), ('sandbox', ''), ('gb_donated_1', '2'), ('gb_donated_2', '4'),
  ('gb_donated_3', '7'), ('gb_donated_4', '13'), ('gb_donated_5', '20'), ('gb_donated_6', '40'), ('vip_dur_1', '1'),
  ('donor_dur_1', '1'), ('free_dur_1', '1'), ('up_amt_1', '1'), ('kp_amt_1', '200'), ('vip_dur_2', '2'),
  ('donor_dur_2', '2'), ('free_dur_2', '2'), ('up_amt_2', '2'), ('kp_amt_2', '400'), ('vip_dur_3', '4'),
  ('donor_dur_3', '4'), ('free_dur_3', '4'), ('up_amt_3', '5'), ('kp_amt_3', '600'), ('vip_dur_4', '8'),
  ('donor_dur_4', '8'), ('free_dur_4', '9'), ('up_amt_4', '9'), ('kp_amt_4', '900'), ('vip_dur_5', '12'),
  ('donor_dur_5', '12'), ('free_dur_5', '12'), ('up_amt_5', '350'), ('kp_amt_5', '3000'), ('vip_dur_6', '24'),
  ('donor_dur_6', '24'), ('free_dur_6', '24'), ('up_amt_6', '450'), ('kp_amt_6', '4000'), ('duntil_dur_1', '1'),
  ('imm_dur_1', '1'), ('duntil_dur_2', '2'), ('imm_dur_2', '2'), ('duntil_dur_3', '4'), ('imm_dur_3', '4'),
  ('duntil_dur_4', '8'), ('imm_dur_4', '8'), ('duntil_dur_5', '12'), ('imm_dur_5', '12'), ('duntil_dur_6', '24'),
  ('imm_dur_6', '24'), ('inv_amt_1', '1'), ('inv_amt_2', '2'), ('inv_amt_3', '3'), ('inv_amt_4', '4'),
  ('inv_amt_5', '5'), ('inv_amt_6', '6');
/*!40000 ALTER TABLE `paypal_config`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `reputationlevel`
--

LOCK TABLES `reputationlevel` WRITE;
/*!40000 ALTER TABLE `reputationlevel`
  DISABLE KEYS */;
INSERT INTO `reputationlevel`
VALUES (1, -999999, 'is infamous around these parts'), (2, -50, 'can only hope to improve'),
  (3, -10, 'has a little shameless behaviour in the past'), (4, 0, 'is an unknown quantity at this point'),
  (5, 15, 'is on a distinguished road'), (6, 50, 'will become famous soon enough'),
  (7, 250, 'has a spectacular aura about'), (8, 150, 'is a jewel in the rough'), (9, 350, 'is just really nice'),
  (10, 450, 'is a glorious beacon of light'), (11, 550, 'is a name known to all'),
  (12, 650, 'is a splendid one to behold'), (13, 1000, 'has much to be proud of'), (14, 1500, 'has a brilliant future'),
  (15, 2000, 'has a reputation beyond repute');
/*!40000 ALTER TABLE `reputationlevel`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `site_config`
--

LOCK TABLES `site_config` WRITE;
/*!40000 ALTER TABLE `site_config`
  DISABLE KEYS */;
INSERT INTO `site_config` VALUES ('site_online', '1', 'Is the site online and available to users?'),
  ('autoshout_on', '1', 'Should the bot make announcements in AJAX Chat?'),
  ('seedbonus_on', '1', 'Do the users receive karma for seeding?'),
  ('openreg', '1', 'Is the site open for registration, without an invite?'),
  ('forums_online', '1', 'Are the site forums online?'),
  ('maxusers', '10000', 'The maximum number of users allowed to register.'),
  ('invites', '5000', 'The maximum number of unclaimed/open invites allowed at any time.'),
  ('openreg_invites', '1', 'Is the site open for registration with an invite'),
  ('failedlogins', '5', 'The number of times a user can submit a failed login attemp before banning the IP for up to 24 hours?'),
  ('ratio_free', '0', 'Is the site ratio free?'),
  ('captcha_on', '1', 'Require users to answer a Captcha question when authenticating?'),
  ('dupeip_check_on', '0', 'Restrict user accounts to one per IP?'), ('totalneeded', '60', 'Don\'t know?'),
  ('bonus_per_duration', '0.25', 'The amount of karma per torrent per period a user earns for seeding a torrent.'),
  ('bonus_per_download', '20', 'The amount of karma per torrent the user is charged when downloading a torrent.'),
  ('bonus_per_comment', '3', 'The amount of karma per comment the user receives when posting a comment in the forums.'),
  ('bonus_per_upload', '15', 'The amount of karma the user receives for each new torrent uploaded.'),
  ('bonus_per_rating', '5', 'The amount of karma the user receives for each new rating given.'),
  ('bonus_per_topic', '8', 'The amount of karma the user receives for each new forum topic.'),
  ('bonus_per_post', '5', 'The amount of karma the user receives for each new forum post.'),
  ('bonus_per_delete', '15', 'The amount of karma per torrent that is removed from the user when a torrent of theirs is deleted.'),
  ('bonus_per_thanks', '5', 'The amount of karma the user receives for each new thanks given.'),
  ('email_confirm', '1', 'Send an email to new users and require them to reply in order to confirm their account?'),
  ('bonus_max_torrents', '100', 'The maximum number of torrents that a user is seeding that will receive karma for.'),
  ('log_queries', '0', 'Log all queries to the database?'),
  ('anonymizer_url', 'https://nullrefer.com/?', 'The URL used to anonymize links to other sites.'),
  ('db_backup_use_gzip', '1', 'Should we compress the backed up database using gzip?'),
  ('db_use_gzip', '1', 'Should we compress the backed up database using gzip?'),
  ('db_backup_gzip_path', '/bin/gzip', 'What is the full path to gzip.'),
  ('db_backup_auto_download', '0', 'Do you want to automatically download the backup file once completed?'),
  ('db_backup_auto_delete', '0', 'Do you want to automatically delete the backup file after you have downloaded it?'),
  ('db_backup_mysqldump_path', '/usr/bin/mysqldump', 'What is the full path to mysqldump?'),
  ('db_backup_write_to_log', '1', 'Should db backup record activity in the site log?'),
  ('in_production', '0', 'Is this site \'Production\' or \'Development\'?\r\nProduction use minified css/js files.'),
  ('coders_log_allowed_ext', 'php css js', 'The file extensions to track in the Coders Log.'), ('auto_confirm', '0',
                                                                                                'If \'email_confirm\' is false, should new users be auto confirmed (Yes) or manually confirmed by the staff or inviter(No)?'),
  ('bonus_irc_per_duration', '0.225',
   'The amount of karma per torrent, per duration the user receives when seeding a torrent.');
/*!40000 ALTER TABLE `site_config`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `staffpanel`
--

LOCK TABLES `staffpanel` WRITE;
/*!40000 ALTER TABLE `staffpanel`
  DISABLE KEYS */;
INSERT INTO `staffpanel`
VALUES (1, 'Flood Control', 'staffpanel.php?tool=floodlimit', 'Manage flood limits', 'settings', 5, 1, 1277910147, 0),
  (2, 'Coders Log', 'staffpanel.php?tool=editlog', 'Coders site file edit log', 'other', 6, 1, 1277909868, 1),
  (3, 'Bonus Manager', 'staffpanel.php?tool=bonusmanage', 'Site karma bonus manager', 'settings', 5, 1, 1277910813, 0),
  (4, 'Non Connectables', 'staffpanel.php?tool=findnotconnectable', 'Find - Pm non-connectable users', 'user', 4, 1, 1277911274, 0),
  (5, 'Edit Events', 'staffpanel.php?tool=events', 'Edit - Add Freeleech/doubleseed/halfdownload events', 'settings', 6, 1, 1277911847, 0),
  (6, 'Site Log', 'staffpanel.php?tool=sitelog', 'View site log', 'other', 4, 1, 1277912694, 1),
  (7, 'Poll Manager', 'staffpanel.php?tool=polls_manager', 'Add - Edit site polls', 'settings', 5, 1, 1277912814, 0),
  (8, 'Ban Ips', 'staffpanel.php?tool=bans', 'Cached ip ban manager', 'user', 5, 1, 1277912935, 0),
  (9, 'Add user', 'staffpanel.php?tool=adduser', 'Add new users from site', 'user', 5, 1, 1277912999, 0),
  (10, 'Extra Stats', 'staffpanel.php?tool=stats_extra', 'View graphs of site stats', 'stats', 4, 1, 1277913051, 0),
  (11, 'Template Manager', 'staffpanel.php?tool=themes', 'Manage themes', 'settings', 6, 1, 1339372213, 0),
  (12, 'Tracker Stats', 'staffpanel.php?tool=stats', 'View uploader and category activity', 'stats', 4, 1, 1277913435, 0),
  (13, 'Backup Db', 'staffpanel.php?tool=backup', 'Manual Mysql Database Back Up', 'other', 6, 1, 1277913720, 1),
  (14, 'Usersearch', 'staffpanel.php?tool=usersearch', 'Announcement system + Usersearch', 'user', 4, 1, 1277913916, 0),
  (15, 'Mysql Stats', 'staffpanel.php?tool=mysql_stats', 'Mysql server stats', 'other', 4, 1, 1277914654, 0),
  (16, 'Failed Logins', 'staffpanel.php?tool=failedlogins', 'Clear Failed Logins', 'user', 4, 1, 1277914881, 0),
  (17, 'Uploader Applications', 'staffpanel.php?tool=uploadapps&action=app', 'Manage Uploader Applications', 'user', 4, 1, 1325807155, 0),
  (18, 'Inactive Users', 'staffpanel.php?tool=inactive', 'Manage inactive users', 'user', 5, 1, 1277915991, 0),
  (19, 'Reset Passwords', 'staffpanel.php?tool=reset', 'Reset lost passwords', 'user', 6, 1, 1277916104, 0),
  (20, 'Forum Manager', 'staffpanel.php?tool=forum_manage', 'Forum admin and management', 'settings', 6, 1, 1277916172, 0),
  (21, 'Forum: Overforum Manager', 'staffpanel.php?tool=over_forums', 'Over Forum admin and management', 'settings', 6, 1, 1277916240, 0),
  (22, 'Edit Categories', 'staffpanel.php?tool=categories', 'Manage site categories', 'settings', 6, 1, 1277916351, 0),
  (23, 'Reputation Admin', 'staffpanel.php?tool=reputation_ad', 'Reputation system admin', 'settings', 6, 1, 1277916398, 0),
  (24, 'Reputation Settings', 'staffpanel.php?tool=reputation_settings', 'Manage reputation settings', 'settings', 6, 1, 1277916443, 0),
  (25, 'News Admin', 'staffpanel.php?tool=news&mode=news', 'Add - Edit site news', 'settings', 4, 1, 1277916501, 0),
  (26, 'Freeleech Manage', 'staffpanel.php?tool=freeleech', 'Manage site wide freeleech', 'settings', 5, 1, 1277916603, 0),
  (27, 'Freeleech Users', 'staffpanel.php?tool=freeusers', 'View freeleech users', 'stats', 4, 1, 1277916636, 0),
  (28, 'Site Donations', 'staffpanel.php?tool=donations', 'View all/current site donations', 'stats', 6, 1, 1277916690, 0),
  (29, 'View Reports', 'staffpanel.php?tool=reports', 'Respond to site reports', 'other', 4, 1, 1278323407, 0),
  (30, 'Delete', 'staffpanel.php?tool=delacct', 'Delete user accounts', 'user', 4, 1, 1278456787, 0),
  (31, 'Username change', 'staffpanel.php?tool=namechanger', 'Change usernames here.', 'user', 4, 1, 1278886954, 0),
  (32, 'Blacklist', 'staffpanel.php?tool=nameblacklist', 'Control username blacklist.', 'settings', 5, 1, 1279054005, 0),
  (33, 'System Overview', 'staffpanel.php?tool=system_view', 'Monitor load averages and view phpinfo', 'other', 6, 1, 1277910147, 0),
  (34, 'Snatched Overview', 'staffpanel.php?tool=snatched_torrents', 'View all snatched torrents', 'stats', 4, 1, 1277910147, 0),
  (35, 'Banned emails', 'staffpanel.php?tool=bannedemails', 'Manage banned emails.', 'settings', 4, 1, 1333817312, 0),
  (36, 'Data Reset', 'staffpanel.php?tool=datareset', 'Reset download stats for nuked torrents', 'user', 5, 1, 1277910147, 0),
  (37, 'Dupe Ip Check', 'staffpanel.php?tool=ipcheck', 'Check duplicate ips', 'stats', 4, 1, 1277910147, 0),
  (38, 'Lottery', 'lottery.php', 'Configure lottery', 'settings', 5, 1, 1282824272, 1),
  (39, 'Group Pm', 'staffpanel.php?tool=grouppm', 'Send grouped pms', 'user', 4, 1, 1282838663, 0),
  (40, 'Client Ids', 'staffpanel.php?tool=allagents', 'View all client id', 'stats', 4, 1, 1283592994, 0),
  (41, 'Forum Config', 'staffpanel.php?tool=forum_config', 'Configure forums', 'settings', 6, 1, 1284303053, 0),
  (42, 'Sysop log', 'staffpanel.php?tool=sysoplog', 'View staff actions', 'other', 6, 1, 1284686084, 0),
  (43, 'Server Load', 'staffpanel.php?tool=load', 'View current server load', 'other', 4, 1, 1284900585, 0),
  (44, 'Promotions', 'promo.php', 'Add new signup promotions', 'settings', 5, 1, 1286231384, 0),
  (45, 'Account Manage', 'staffpanel.php?tool=acpmanage', 'Account manager - Conifrm pending users', 'stats', 5, 1, 1289950651, 1),
  (46, 'Block Manager', 'staffpanel.php?tool=block.settings', 'Manage Global site block settings', 'settings', 4, 1, 1292185077, 0),
  (47, 'Advanced Mega Search', 'staffpanel.php?tool=mega_search', 'Search by ip, invite code, username', 'user', 4, 1, 1292333576, 1),
  (48, 'Warnings', 'staffpanel.php?tool=warn&mode=warn', 'Warning Management', 'stats', 4, 1, 1294788655, 0),
  (49, 'Leech Warnings', 'staffpanel.php?tool=leechwarn', 'Leech Warning Management', 'stats', 4, 1, 1294794876, 0),
  (50, 'Hnr Warnings', 'staffpanel.php?tool=hnrwarn', 'Hit And Run Warning Management', 'stats', 5, 1, 1294794904, 0),
  (51, 'Site Peers', 'staffpanel.php?tool=view_peers', 'Site Peers Overview', 'stats', 4, 1, 1296099600, 0),
  (52, 'Top Uploaders', 'staffpanel.php?tool=uploader_info', 'View site top uploaders', 'stats', 4, 1, 1297907345, 0),
  (53, 'Watched User', 'staffpanel.php?tool=watched_users', 'Manage all watched users here', 'user', 4, 1, 1321020749, 0),
  (54, 'Paypal Settings', 'staffpanel.php?tool=paypal_settings', 'Adjust global paypal settings here', 'settings', 6, 1, 1304288197, 0),
  (55, 'Update staff arrays', 'staffpanel.php?tool=staff_config', 'Hit once to update allowed staff arrays after member promotion', 'settings', 6, 1, 1330807776, 0),
  (56, 'Site Settings', 'staffpanel.php?tool=site_settings', 'Adjust site settings here', 'settings', 6, 1, 1304422497, 1),
  (57, 'Hit and run manager', 'staffpanel.php?tool=hit_and_run_settings', 'Manage all hit and run settings here', 'settings', 6, 1, 1373110790, 0),
  (58, 'Opcode Manage', 'staffpanel.php?tool=op', 'View Opcode manager', 'other', 6, 1, 1305728681, 0),
  (59, 'Memcache Manage', 'staffpanel.php?tool=memcache', 'View memcache manager', 'other', 6, 1, 1305728711, 0),
  (60, 'Edit Moods', 'staffpanel.php?tool=edit_moods', 'Edit site usermoods here', 'user', 4, 1, 1308914441, 0),
  (61, 'Search Cloud Manage', 'staffpanel.php?tool=cloudview', 'Manage searchcloud entries', 'settings', 4, 1, 1311359588, 0),
  (62, 'Mass Bonus Manager', 'staffpanel.php?tool=mass_bonus_for_members', 'MassUpload, MassSeedbonus, MassFreeslot, MassInvite', 'settings', 6, 1, 1311882635, 0),
  (63, 'Hit And Runs', 'staffpanel.php?tool=hit_and_run', 'View All Hit And Runs', 'stats', 4, 1, 1312682819, 0),
  (64, 'View Possible Cheats', 'staffpanel.php?tool=cheaters', 'View All Cheat Information', 'stats', 4, 1, 1312682871, 0),
  (65, 'Cleanup Manager', 'staffpanel.php?tool=cleanup_manager', 'Clean up interval manager', 'settings', 6, 1, 1315001255, 1),
  (66, 'Deathrow', 'staffpanel.php?tool=deathrow', 'Torrents on Deathrow', 'user', 4, 1, 1394313792, 0),
  (67, 'Referrers', 'staffpanel.php?tool=referrers', 'View referals here', 'stats', 4, 1, 1362000677, 0),
  (68, 'Class Configurations', 'staffpanel.php?tool=class_config', 'Configure site user groups', 'settings', 6, 1, 1366566489, 1),
  (69, 'Class Promotions', 'staffpanel.php?tool=class_promo', 'Set Promotion Critera', 'settings', 6, 1, 1396513263, 0),
  (70, 'Comment viewer', 'staffpanel.php?tool=comments', 'Comment overview page', 'user', 4, 1, 1403735418, 0),
  (71, 'Moderated torrents', 'staffpanel.php?tool=modded_torrents', 'Manage moderated torrents here', 'other', 4, 1, 1406722110, 0),
  (73, 'Log Viewer', 'staffpanel.php?tool=log_viewer', 'php and nginx log viewer', 'user', 6, 1, 1506120362, 0),
  (74, 'View Mysql Queries', 'staffpanel.php?tool=sql_queries', 'View MySQL Queries', 'other', 6, 1, 1509647049, 1),
  (75, 'Upgrade Database', 'staffpanel.php?tool=upgrade_database', 'upgrade database', 'other', 6, 1, 1512555394, 0);
/*!40000 ALTER TABLE `staffpanel`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `stats`
--

LOCK TABLES `stats` WRITE;
/*!40000 ALTER TABLE `stats`
  DISABLE KEYS */;
INSERT INTO `stats` VALUES (1, 2, 0, 2, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1);
/*!40000 ALTER TABLE `stats`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `stylesheets`
--

LOCK TABLES `stylesheets` WRITE;
/*!40000 ALTER TABLE `stylesheets`
  DISABLE KEYS */;
INSERT INTO `stylesheets` VALUES (1, 'default.css', 'Pu-239 Default');
/*!40000 ALTER TABLE `stylesheets`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `wiki`
--

LOCK TABLES `wiki` WRITE;
/*!40000 ALTER TABLE `wiki`
  DISABLE KEYS */;
INSERT INTO `wiki`
VALUES (1, 'index', '[align=center][size=6]Welcome to the [b]Wiki[/b][/size][/align]', 0, 1228076412, 1281610709, 1);
/*!40000 ALTER TABLE `wiki`
  ENABLE KEYS */;
UNLOCK TABLES;
/*!50112 SET @disable_bulk_load = IF(@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = @old_rocksdb_bulk_load',
                                     'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @disable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2018-01-13 22:02:14
