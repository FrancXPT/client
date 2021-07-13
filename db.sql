-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 15, 2019 at 10:18 AM
-- Server version: 10.3.17-MariaDB-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dreamspa_renews_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_version`
--

CREATE TABLE `app_version` (
  `id` bigint(20) NOT NULL,
  `version_code` int(11) NOT NULL,
  `version_name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_version`
--

INSERT INTO `app_version` (`id`, `version_code`, `version_name`, `active`, `created_at`, `last_update`) VALUES
(1, 1, '1', 1, 1484386275760, 1565735502326);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `code` varchar(50) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`code`, `value`) VALUES
('FEATURED_NEWS', '5'),
('FEATURED_TOPIC', '15');

-- --------------------------------------------------------

--
-- Table structure for table `license`
--

CREATE TABLE `license` (
  `id` int(11) NOT NULL,
  `purchase_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `total_view` int(11) NOT NULL DEFAULT 0,
  `total_comment` bigint(20) NOT NULL DEFAULT 0,
  `date` bigint(20) NOT NULL,
  `type` varchar(50) NOT NULL,
  `draft` tinyint(1) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`, `url`, `total_view`, `total_comment`, `date`, `type`, `draft`, `featured`, `created_at`, `last_update`) VALUES
(104, 'Most Americans think robots will take jobs - but not theirs', '<div>Nam efficitur scelerisque velit, vel cursus metus dignissim vel. Morbi fringilla magna in est tincidunt gravida. Vestibulum rhoncus aliquam nunc, non viverra nisl aliquet vel. Proin id neque justo. Ut gravida cursus justo nec aliquet. Integer ultrices ipsum eget mi tristique, sed feugiat lorem semper. Aenean tempus, nulla at interdum molestie, neque justo posuere lorem, id imperdiet turpis ipsum a libero. Nunc eget molestie felis. Donec vel lectus et quam fringilla egestas in in elit. Nam molestie faucibus lacinia.</div><div><br></div><div>Etiam vitae nibh tellus. Praesent imperdiet pretium molestie. Praesent eleifend ipsum sapien, vel molestie nibh blandit et. Duis accumsan dignissim velit, ut auctor sapien egestas accumsan. Duis vel bibendum libero. Nullam venenatis tempus libero. Nulla accumsan mi eu tellus rutrum, ac vestibulum est cursus. Suspendisse pharetra urna ac nisl viverra, at euismod nisi aliquam. Fusce sit amet faucibus arcu. Nulla nec convallis neque. Aenean sed pretium orci. Duis dictum commodo euismod. Etiam faucibus sapien arcu, nec tincidunt felis luctus vitae.</div><div><br></div><div>Aliquam in risus nibh. Pellentesque lacinia nisi ac est porta, nec convallis eros luctus. Phasellus dictum ornare euismod. Quisque tellus lacus, ornare ut sapien non, ornare commodo elit. Nunc et iaculis est. Donec consectetur rutrum ante ut elementum. Vestibulum dignissim sagittis porta. Sed ut pharetra massa.</div><div><br></div><div>Curabitur ac aliquet odio. Nam consequat urna augue, a cursus tellus faucibus eu. Suspendisse eros ante, placerat eget ultricies ut, porta non ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse dapibus tempus turpis et viverra. Nullam nec gravida risus. Nulla faucibus in elit id semper. Duis eu ante ut metus consequat convallis non sit amet eros. Nam sed eros eu enim auctor dignissim quis in ante. Maecenas aliquam ut lorem ac sagittis. Nullam in ligula quam. Praesent ultricies ipsum quis lacus mollis interdum. Maecenas quis posuere leo. Duis ut tortor vitae nisi commodo dictum. Quisque ac ante et purus auctor iaculis at sed erat. Duis vestibulum elit et mollis pharetra.</div>', '1565573246212.png', '', 0, 0, 1565573246212, 'ARTICLE', 0, 0, 1565573246212, 1565573246212),
(124, 'NASA releases eye-popping composite video of Tuesday’s total solar eclipse', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dolor risus, aliquet a erat quis, viverra molestie orci. Suspendisse vehicula porta libero. Nam tincidunt nulla ipsum, vel iaculis risus scelerisque sed. Phasellus venenatis, enim vel placerat blandit, leo eros bibendum erat, at auctor mauris diam ac risus. Aenean sit amet congue neque, sit amet condimentum elit. Fusce lacinia massa vel nisl scelerisque, in scelerisque dolor elementum. Vivamus leo enim, congue dictum congue vitae, porttitor id purus. Sed eu ultricies erat. Morbi hendrerit, mi ac volutpat commodo, magna turpis pretium nibh, at fringilla eros lorem quis tellus. Praesent porttitor purus nibh, ac vestibulum massa fringilla vel. Pellentesque dapibus nulla quis luctus dictum. In scelerisque ut ex sed facilisis. Nunc eu finibus nulla, ut hendrerit sem. Suspendisse accumsan risus vel diam fringilla iaculis.</div><div><br></div><div>Quisque facilisis finibus aliquam. Sed mattis, dui fringilla ornare finibus, orci odio blandit risus, ut maximus dui odio non leo. Donec laoreet lacus nisi, a mollis velit suscipit ac. Quisque faucibus ut nisl in congue. Nam sagittis consectetur tempus. Suspendisse eget posuere dui. Donec ultricies velit ex, vel cursus odio sollicitudin in. Nullam faucibus auctor ligula, eu rhoncus dui facilisis a. Curabitur vel feugiat est. Quisque congue at enim eleifend ultrices. Proin dapibus risus lorem, nec condimentum nunc consequat vitae. Quisque sapien lorem, vestibulum vitae justo eget, fringilla eleifend nisi. Mauris ultricies augue sit amet est sollicitudin laoreet. Fusce ut congue felis. Fusce dictum tristique elit nec iaculis. Mauris sodales tempus fringilla. Fusce nec nunc tempus, tempor sapien sit amet, ultricies erat. Mauris ultrices ac lorem ultrices facilisis. Nam pharetra, nisi a imperdiet interdum, nunc justo ultricies nisl, a laoreet massa dui vel enim. Pellentesque et magna ac tellus ullamcorper malesuada a ac nisl. Curabitur id est et neque convallis accumsan. Aliquam eleifend varius massa. Curabitur eu finibus tortor. Vivamus aliquam nisl rutrum orci volutpat porta in ornare est. Quisque ligula ipsum, vulputate id aliquam vitae, semper vitae orci. Nam non pulvinar ligula, eget tincidunt ante. Quisque sapien massa, varius tempus pretium id, vehicula at magna. Ut ut ultrices augue. Nam nec ullamcorper tellus, at finibus lectus. Fusce vel iaculis mauris, id porta nulla. Aenean ac mollis sapien. Morbi imperdiet augue tempus nulla luctus, sit amet feugiat purus elementum.</div><div><br></div><div>suscipit varius non at erat. Pellentesque non euismod diam, nec dapibus quam. Aliquam et posuere massa. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam eu nibh sed diam posuere tincidunt et non felis. Aliquam sodales facilisis tortor, at maximus ante varius quis. Suspendisse ornare est ac auctor pulvinar. Nam in venenatis risus. In facilisis tristique mollis. Curabitur tempus ipsum eget ipsum pharetra ornare. Quisque imperdiet nunc at massa dictum volutpat. Etiam id orci ipsum. Integer id ex dignissim est blandit sollicitudin non ut felis. Mauris nec mattis lacus. Cras consequat sapien a nisl faucibus, id consequat velit aliquet. Donec tincidunt quam elit, et scelerisque ipsum aliquet ac. Suspendisse lectus enim, auctor non justo et, vehicula consectetur nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fermentum ipsum vitae ligula interdum vulputate. Aenean bibendum molestie pharetra. Praesent aliquam, sapien ac rutrum rhoncus, enim mauris lacinia ligula, vitae fermentum purus lacus nec ex. Donec vel dolor pulvinar, dignissim nunc id, tempus risus.</div><div><br></div><div>Phasellus blandit, leo ut semper vulputate, dui est fringilla purus, eu ullamcorper leo quam ut odio. Nunc tincidunt est eros, a dapibus massa hendrerit in. Aenean pellentesque ante eu justo pulvinar, eget sodales diam auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent vulputate nunc ut lorem viverra, ac condimentum sem vehicula. Etiam in dui quam. Aenean tincidunt porttitor dignissim. Aenean id est erat. Praesent tempus est ullamcorper tincidunt ultricies. Mauris ac velit lorem. Maecenas quis dui vel neque aliquet mattis aliquet et ante.</div><div><br></div><div>Vivamus porttitor, erat at aliquam mollis, risus ligula suscipit metus, id semper nisi dui lacinia leo. Praesent at feugiat sem. Vivamus consectetur arcu sit amet metus efficitur dapibus. Sed metus ligula, efficitur quis finibus nec, pellentesque nec nulla. Nunc nec magna iaculis turpis vehicula condimentum id lobortis lectus. Etiam tempus nisi arcu, in condimentum felis vestibulum vitae. Donec fermentum dolor consequat nulla dignissim, non tempus leo viverra. Aenean magna magna, ultricies ut rutrum et, malesuada non nibh. Nam ligula erat, elementum sit amet justo eget, venenatis hendrerit nibh. In ac ipsum nunc. Nullam purus dolor, rhoncus eu justo id, vulputate ultrices nunc. Nam et risus velit. Fusce aliquam blandit urna quis pulvinar. Donec luctus tincidunt ipsum eu condimentum. Etiam porttitor dui in pulvinar vulputate. Quisque augue diam, convallis nec mollis in, placerat nec elit. Aliquam non erat tristique, consequat tortor ultricies, sodales erat. Aliquam quis enim eu nulla facilisis sollicitudin eu mollis mauris. Donec ornare urna non libero volutpat tempus. Mauris elementum egestas ex, a laoreet urna. Ut a magna mattis, sodales massa a, blandit justo. Nunc placerat ante quis lacus dictum dictum vitae eu nisi. Fusce quis est sodales justo sollicitudin mollis. Suspendisse posuere, augue a ultricies lacinia, tortor tortor faucibus purus, pulvinar suscipit erat orci varius arcu. Phasellus id nisl vitae eros dignissim consectetur. Ut ac ex ac arcu vestibulum sagittis sit amet a massa.</div><div><br></div><div>Suspendisse elit libero, placerat vel ipsum vitae, tristique faucibus nulla. Aliquam ac elit porttitor, vestibulum turpis nec, bibendum dui. Vivamus quam orci, consequat in scelerisque id, dignissim vel purus. Proin rhoncus ante eu nisi dictum lacinia. Proin congue tempor nunc, eu semper elit tincidunt ut. Duis vehicula purus at lorem sollicitudin porttitor. Nulla facilisi. Donec non dapibus neque. Donec neque massa, sodales vitae eros nec, lacinia vestibulum neque. Nullam venenatis vitae tortor sed fermentum. Aenean massa enim, placerat eu ligula quis, tincidunt rutrum purus. Ut tincidunt egestas varius.</div>', '1565648628199.png', 'https://www.youtube.com/watch?v=ArwVHSydxIw', 2, 0, 1565648628199, 'VIDEO', 0, 1, 1565648628199, 1565658504720),
(133, 'Travel Photography in Indonesia, A trip through a wonderful land', '<div>Nam efficitur scelerisque velit, vel cursus metus dignissim vel. Morbi fringilla magna in est tincidunt gravida. Vestibulum rhoncus aliquam nunc, non viverra nisl aliquet vel. Proin id neque justo. Ut gravida cursus justo nec aliquet. Integer ultrices ipsum eget mi tristique, sed feugiat lorem semper. Aenean tempus, nulla at interdum molestie, neque justo posuere lorem, id imperdiet turpis ipsum a libero. Nunc eget molestie felis. Donec vel lectus et quam fringilla egestas in in elit. Nam molestie faucibus lacinia.</div><div><br></div><div>Etiam vitae nibh tellus. Praesent imperdiet pretium molestie. Praesent eleifend ipsum sapien, vel molestie nibh blandit et. Duis accumsan dignissim velit, ut auctor sapien egestas accumsan. Duis vel bibendum libero. Nullam venenatis tempus libero. Nulla accumsan mi eu tellus rutrum, ac vestibulum est cursus. Suspendisse pharetra urna ac nisl viverra, at euismod nisi aliquam. Fusce sit amet faucibus arcu. Nulla nec convallis neque. Aenean sed pretium orci. Duis dictum commodo euismod. Etiam faucibus sapien arcu, nec tincidunt felis luctus vitae.</div><div><br></div><div>Aliquam in risus nibh. Pellentesque lacinia nisi ac est porta, nec convallis eros luctus. Phasellus dictum ornare euismod. Quisque tellus lacus, ornare ut sapien non, ornare commodo elit. Nunc et iaculis est. Donec consectetur rutrum ante ut elementum. Vestibulum dignissim sagittis porta. Sed ut pharetra massa.</div><div><br></div><div>Curabitur ac aliquet odio. Nam consequat urna augue, a cursus tellus faucibus eu. Suspendisse eros ante, placerat eget ultricies ut, porta non ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse dapibus tempus turpis et viverra. Nullam nec gravida risus. Nulla faucibus in elit id semper. Duis eu ante ut metus consequat convallis non sit amet eros. Nam sed eros eu enim auctor dignissim quis in ante. Maecenas aliquam ut lorem ac sagittis. Nullam in ligula quam. Praesent ultricies ipsum quis lacus mollis interdum. Maecenas quis posuere leo. Duis ut tortor vitae nisi commodo dictum. Quisque ac ante et purus auctor iaculis at sed erat. Duis vestibulum elit et mollis pharetra.</div><div><br></div><div>Donec sed tempus est, id bibendum felis. Sed volutpat nulla luctus nisi mollis, id vulputate velit sollicitudin. Cras at lobortis velit. In eu turpis euismod dolor feugiat placerat gravida a ante. Duis consequat massa sit amet metus convallis mattis a id nibh. Nulla rhoncus ornare magna, ut faucibus libero imperdiet non. Phasellus congue ac quam sed semper. Nulla non finibus leo. Suspendisse gravida ultrices tincidunt. Suspendisse at arcu in ex viverra volutpat. Ut nisl dui, varius non faucibus sed, iaculis vel purus. Donec eget massa fermentum dolor porta tristique dignissim sed arcu. Nam id pretium orci. Pellentesque lobortis congue arcu. Donec nec felis mauris. Vivamus quis lorem vel nulla vestibulum lobortis a vel lacus.</div><div><br></div><div>Aliquam id tincidunt lacus, id imperdiet mauris. Phasellus quis leo lectus. Etiam tortor augue, condimentum eu ultrices et, malesuada sed ipsum. In rutrum turpis felis. Ut sodales libero non nibh convallis, ac vehicula tellus laoreet. Suspendisse non ante eget ligula sollicitudin maximus. Quisque sit amet velit vulputate, pulvinar diam eu, feugiat magna. Donec vel semper dolor. Maecenas venenatis eget ligula a hendrerit. Mauris sit amet massa eget tortor lobortis efficitur. Nunc sit amet sodales massa. Etiam porttitor sed nisi ac suscipit.</div><div><br></div><div>Praesent eget justo dolor. Sed vitae orci eleifend nisl suscipit rhoncus et sit amet nibh. Nunc malesuada risus ut scelerisque consectetur. Pellentesque vel nibh cursus, mattis tellus in, feugiat sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras massa nunc, congue vel tincidunt id, iaculis at dolor. Nulla vel gravida enim. Quisque sollicitudin libero sem, non porta nisl efficitur tincidunt. Aliquam purus odio, pulvinar in hendrerit id, mattis eu magna. Praesent id massa tempor, sodales magna vel, luctus massa. Aenean pharetra turpis luctus, aliquet ligula eget, congue turpis.</div><div><br></div><div>Nam aliquet eget nibh at dictum. Proin volutpat, eros egestas ornare auctor, mauris ante ultricies mi, at ultricies nibh urna ac enim. Phasellus a turpis id nisi aliquet convallis nec sed sapien. Donec at ex in mauris pharetra lacinia id a metus. Aenean consectetur leo quis libero vulputate tristique. Proin commodo porttitor felis. Integer auctor nulla tincidunt faucibus tempus. In at viverra tellus, vitae ultrices risus. Donec molestie, mi et porttitor accumsan, libero enim congue est, non mattis diam quam non odio. Pellentesque vitae lacus ut orci vestibulum sollicitudin. Duis efficitur quam at rutrum feugiat. Aliquam eget aliquam felis, vel vestibulum ligula. Pellentesque tincidunt sollicitudin lacus quis imperdiet. Curabitur id accumsan nisl, eu iaculis nisi. Vivamus consequat ut justo eu ultricies.</div><div><br></div><div>Donec massa odio, auctor id tempor sit amet, blandit nec nisi. Cras nec dui maximus, auctor leo sed, malesuada mi. Vivamus sollicitudin magna ac nibh varius viverra. Aenean in malesuada urna, ut volutpat nibh. Nunc vel dignissim metus. Morbi ac libero et ipsum tempus laoreet. Integer egestas placerat malesuada. Praesent mollis pharetra nisl nec blandit. Sed ac consectetur mi, eget mollis ante. Quisque in mauris diam. In venenatis consequat sollicitudin. In hac habitasse platea dictumst. Mauris malesuada porta tortor non auctor. Duis sodales ligula non scelerisque molestie. In hac habitasse platea dictumst. Donec tempor nibh sit amet quam ultrices, nec pretium tellus accumsan.</div><div><br></div><div>Etiam faucibus ante tortor, nec efficitur eros lacinia ut. Proin facilisis cursus enim, at congue lorem iaculis ut. Maecenas porta dapibus ante eu posuere. Nullam lacinia in ligula vel cursus. Fusce sed odio felis. Vivamus nec lectus auctor, sagittis turpis et, mollis justo. Nulla vehicula justo nunc, eu hendrerit magna finibus vitae.</div>', '1565656159623.png', '', 5, 0, 1565656159623, 'GALLERY', 0, 1, 1565656159623, 1565658565941),
(137, 'Viennese turn noses up at scented subway trains', '<div>Nam efficitur scelerisque velit, vel cursus metus dignissim vel. Morbi fringilla magna in est tincidunt gravida. Vestibulum rhoncus aliquam nunc, non viverra nisl aliquet vel. Proin id neque justo. Ut gravida cursus justo nec aliquet. Integer ultrices ipsum eget mi tristique, sed feugiat lorem semper. Aenean tempus, nulla at interdum molestie, neque justo posuere lorem, id imperdiet turpis ipsum a libero. Nunc eget molestie felis. Donec vel lectus et quam fringilla egestas in in elit. Nam molestie faucibus lacinia.</div><div><br></div><div>Etiam vitae nibh tellus. Praesent imperdiet pretium molestie. Praesent eleifend ipsum sapien, vel molestie nibh blandit et. Duis accumsan dignissim velit, ut auctor sapien egestas accumsan. Duis vel bibendum libero. Nullam venenatis tempus libero. Nulla accumsan mi eu tellus rutrum, ac vestibulum est cursus. Suspendisse pharetra urna ac nisl viverra, at euismod nisi aliquam. Fusce sit amet faucibus arcu. Nulla nec convallis neque. Aenean sed pretium orci. Duis dictum commodo euismod. Etiam faucibus sapien arcu, nec tincidunt felis luctus vitae.</div><div><br></div><div>Aliquam in risus nibh. Pellentesque lacinia nisi ac est porta, nec convallis eros luctus. Phasellus dictum ornare euismod. Quisque tellus lacus, ornare ut sapien non, ornare commodo elit. Nunc et iaculis est. Donec consectetur rutrum ante ut elementum. Vestibulum dignissim sagittis porta. Sed ut pharetra massa.</div><div><br></div><div>Curabitur ac aliquet odio. Nam consequat urna augue, a cursus tellus faucibus eu. Suspendisse eros ante, placerat eget ultricies ut, porta non ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse dapibus tempus turpis et viverra. Nullam nec gravida risus. Nulla faucibus in elit id semper. Duis eu ante ut metus consequat convallis non sit amet eros. Nam sed eros eu enim auctor dignissim quis in ante. Maecenas aliquam ut lorem ac sagittis. Nullam in ligula quam. Praesent ultricies ipsum quis lacus mollis interdum. Maecenas quis posuere leo. Duis ut tortor vitae nisi commodo dictum. Quisque ac ante et purus auctor iaculis at sed erat. Duis vestibulum elit et mollis pharetra.</div><div><br></div><div>Donec sed tempus est, id bibendum felis. Sed volutpat nulla luctus nisi mollis, id vulputate velit sollicitudin. Cras at lobortis velit. In eu turpis euismod dolor feugiat placerat gravida a ante. Duis consequat massa sit amet metus convallis mattis a id nibh. Nulla rhoncus ornare magna, ut faucibus libero imperdiet non. Phasellus congue ac quam sed semper. Nulla non finibus leo. Suspendisse gravida ultrices tincidunt. Suspendisse at arcu in ex viverra volutpat. Ut nisl dui, varius non faucibus sed, iaculis vel purus. Donec eget massa fermentum dolor porta tristique dignissim sed arcu. Nam id pretium orci. Pellentesque lobortis congue arcu. Donec nec felis mauris. Vivamus quis lorem vel nulla vestibulum lobortis a vel lacus.</div>', '1565658080683.png', '', 0, 0, 1565658080683, 'ARTICLE', 0, 0, 1565658080683, 1565658080683);

-- --------------------------------------------------------

--
-- Table structure for table `news_comment`
--

CREATE TABLE `news_comment` (
  `id` bigint(20) NOT NULL,
  `news_id` bigint(20) NOT NULL,
  `user_app_id` bigint(20) NOT NULL,
  `comment` text NOT NULL,
  `status` enum('SHOW','HIDE') NOT NULL DEFAULT 'SHOW',
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `news_gallery`
--

CREATE TABLE `news_gallery` (
  `news_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_gallery`
--

INSERT INTO `news_gallery` (`news_id`, `name`) VALUES
(133, '1565656159623_.png'),
(133, '1565656159624_.png'),
(133, '1565656159625_.png'),
(133, '1565656159626_.png'),
(133, '1565656159627_.png');

-- --------------------------------------------------------

--
-- Table structure for table `news_topic`
--

CREATE TABLE `news_topic` (
  `news_id` bigint(20) NOT NULL,
  `topic_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_topic`
--

INSERT INTO `news_topic` (`news_id`, `topic_id`) VALUES
(104, 5),
(124, 5),
(124, 15),
(133, 21),
(137, 5),
(137, 21);

-- --------------------------------------------------------

--
-- Table structure for table `notif_device`
--

CREATE TABLE `notif_device` (
  `id` bigint(20) NOT NULL,
  `device_id` varchar(255) NOT NULL,
  `device_name` varchar(100) NOT NULL,
  `os_version` varchar(100) NOT NULL,
  `app_version` varchar(10) NOT NULL,
  `regid` text NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notif_history`
--

CREATE TABLE `notif_history` (
  `id` bigint(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(200) NOT NULL,
  `type` varchar(50) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `link` varchar(1000) NOT NULL,
  `target` varchar(50) NOT NULL,
  `created_at` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `color` varchar(7) NOT NULL,
  `draft` tinyint(1) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 0,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id`, `name`, `icon`, `color`, `draft`, `featured`, `priority`, `created_at`, `last_update`) VALUES
(5, 'Technology', '1565508731114.png', '#7692f5', 0, 1, 44, 1560904747938, 1565684143723),
(15, 'Video', '1565509384881.png', '#cfe354', 0, 1, 54, 1565509384881, 1565834034793),
(21, 'Traveling', '1565600054739.png', '#ded500', 0, 1, 47, 1565600054739, 1565683946720);

-- --------------------------------------------------------

--
-- Table structure for table `user_app`
--

CREATE TABLE `user_app` (
  `id` bigint(11) NOT NULL,
  `name` varchar(15) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` text CHARACTER SET utf8 NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE',
  `notif_device` varchar(255) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_app`
--

INSERT INTO `user_app` (`id`, `name`, `email`, `password`, `image`, `status`, `notif_device`, `created_at`, `last_update`) VALUES
(2, 'Test User 123', 'admin@mail.com', 'V1ZkU2RHRlhORDA9', 'avatar_1562654733811.png', 'ACTIVE', 'fc7deae843c51ac8', 1547862709403, 1565689560088);

-- --------------------------------------------------------

--
-- Table structure for table `user_panel`
--

CREATE TABLE `user_panel` (
  `id` bigint(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` text CHARACTER SET utf8 NOT NULL,
  `role` varchar(50) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_panel`
--

INSERT INTO `user_panel` (`id`, `name`, `username`, `email`, `password`, `role`, `created_at`, `last_update`) VALUES
(1, 'First Admin', 'admin', 'admin@mail.com', '21232f297a57a5a743894a0e4a801fc3', 'ADMIN', 0, 1565750663468),
(5, 'First Writer', 'writer', 'writer@mail.com', 'a82feee3cc1af8bcabda979e8775ef0f', 'WRITER', 1558752526765, 1565750673241);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_version`
--
ALTER TABLE `app_version`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `license`
--
ALTER TABLE `license`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_comment`
--
ALTER TABLE `news_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_news_comment_2` (`user_app_id`) USING BTREE,
  ADD KEY `index_news_comment_1` (`news_id`) USING BTREE;

--
-- Indexes for table `news_gallery`
--
ALTER TABLE `news_gallery`
  ADD KEY `fk_news_gallery` (`news_id`);

--
-- Indexes for table `news_topic`
--
ALTER TABLE `news_topic`
  ADD KEY `pk_news_topic` (`news_id`,`topic_id`) USING BTREE,
  ADD KEY `fk_news_topic_2` (`topic_id`) USING BTREE;

--
-- Indexes for table `notif_device`
--
ALTER TABLE `notif_device`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notif_history`
--
ALTER TABLE `notif_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique` (`name`);

--
-- Indexes for table `user_app`
--
ALTER TABLE `user_app`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_panel`
--
ALTER TABLE `user_panel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_username` (`username`),
  ADD UNIQUE KEY `unique_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_version`
--
ALTER TABLE `app_version`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `license`
--
ALTER TABLE `license`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `news_comment`
--
ALTER TABLE `news_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notif_device`
--
ALTER TABLE `notif_device`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notif_history`
--
ALTER TABLE `notif_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_app`
--
ALTER TABLE `user_app`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_panel`
--
ALTER TABLE `user_panel`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news_comment`
--
ALTER TABLE `news_comment`
  ADD CONSTRAINT `fk_news_comment_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_news_comment_2` FOREIGN KEY (`user_app_id`) REFERENCES `user_app` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news_gallery`
--
ALTER TABLE `news_gallery`
  ADD CONSTRAINT `fk_news_gallery` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news_topic`
--
ALTER TABLE `news_topic`
  ADD CONSTRAINT `fk_news_topic_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_news_topic_2` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
