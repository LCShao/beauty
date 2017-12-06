-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-11-19 16:33:00
-- 服务器版本： 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beauty`
--
SET NAMES UTF8;
DROP DATABASE IF EXISTS beauty;
CREATE DATABASE beauty CHARSET=UTF8;
USE beauty;
-- --------------------------------------------------------

--
-- 表的结构 `be_index_carousel`
--
drop table if exists be_index_carousel;
CREATE TABLE `be_index_carousel` (
  `pid` int(11) NOT NULL,
  `img` varchar(128) NOT NULL,
  `title` varchar(64) NOT NULL,
  `href` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `be_index_carousel`
--

INSERT INTO `be_index_carousel` (`pid`, `img`, `title`, `href`) VALUES
(1, 'img/picture/20170930204303220.jpg', 'pic1', 'product_details.html?lid=28'),
(2, 'img/picture/20170930204303320.jpg', 'pic2', 'product_details.html?lid=2'),
(3, 'img/picture/20170930204304912.jpg', 'pic3', 'product_details.html?lid=1'),
(4, 'img/picture/20170930204305249.jpg', 'pic4', ''),
(5, 'img/picture/20170930204305600.jpg', 'pic5', 'product_details.html?lid=3');

-- --------------------------------------------------------

--
-- 表的结构 `be_user`
--
drop table if exists be_user;
CREATE TABLE `be_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) NOT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `be_user`
--

INSERT INTO `be_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `gender`) VALUES
(1, 'jingjing', '123456', 'jing@qq.com', '13512312345', 'default.img', 0),
(2, 'dongdong', '123456', 'dong@qq.com', '13523423456', 'default.img', 1),
(3, 'xiaoxin', '123456', 'xin@qq.com', '13513513579', 'default.img', 0),
(4, 'jinzi', '123456', 'jin@qq.com', '13524624689', 'default.img', 0);


-- --------------------------------------------------------

--
-- 表的结构 `brand_message`
--
drop table if exists brand_message;
CREATE TABLE `brand_message` (
  `id` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `brandMessage` varchar(128) DEFAULT NULL,
  `bg` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `brand_message`
--

INSERT INTO `brand_message` (`id`, `title`, `brandMessage`, `bg`) VALUES
(1, '悦之匠心 · 美之初心', '依托多年诚信建院的历史，拥有亚洲激光美容科研基地的科研实力，由国内外著名医疗美容专家组成的医疗科研团队，严格恪守医美行业道德规范，积极推行健康求美观念，达成求美者从外表到形体多层面的提升！', 'img/device-pic/wh_img42.jpg'),
(2, '优雅环境与国际化接轨', '拥有近3000㎡ 超五星酒店式的诊疗环境，JCI、ISO认证的国际标准化医美检测系统，完善的陪伴式\'医美\'解决方案，顶尖的医疗激光美容器械设备，数百项具有国际专利的临床应用。', 'img/device-pic/wh_img43.jpg'),
(3, '悦人、悦己、悦心', '多年来用专业、诚信、品质 、服务，创造了一个亚洲首屈一指的\'医美\'品牌,倡导科学美容、规范美容、个性美容、绿色美容，并将医学与美学相结合，开创东方式的\'医美\'新理念，成功为数十万爱美人士实现了美丽蜕变！', 'img/device-pic/wh_img44.jpg'),
(4, '皮肤健康微生态五步一体动态平衡体系', '此体系建立在科学的\'检、诊、治、养、调\'五步上，重建皮肤健康微生态，使得细胞内外环境达到长久的动态平衡，美肤效果持久、抑制反弹，是目前较为科学有效的皮肤诊疗体系。', 'img/device-pic/wh_img45.jpg'),
(5, '先进医美设备同步引进', '海医悦美同步要求其技术的先进性、安全性、便捷性，只选择世界顶级医疗美容品牌进行合作，与全球数十家医疗美容科研机构建立了长期战略伙伴关系，确保全球最新的科研成果都将于第一时间在海医悦美得到运用。', 'img/device-pic/wh_img46.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `case_pic`
--
drop table if exists case_pic;
CREATE TABLE `case_pic` (
  `pid` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `required` varchar(128) DEFAULT NULL,
  `doctor` varchar(64) DEFAULT NULL,
  `solution` varchar(128) DEFAULT NULL,
  `sm` varchar(128) DEFAULT NULL,
  `bm` varchar(128) DEFAULT NULL,
  `md` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `case_pic`
--

INSERT INTO `case_pic` (`pid`, `title`, `age`, `name`, `required`, `doctor`, `solution`, `sm`, `bm`, `md`) VALUES
(1, 'pic1', 25, '于小姐', '面部暗沉,皮肤粗糙', '纪敏', '皮秒美白嫩肤', 'img/index/scase1.jpg', 'img/index/case1.png', NULL),
(2, 'pic2', 22, '李小姐', '腰腹,上臂脂肪堆积', '常冬青', '光线无痕溶脂', 'img/index/scase2.jpg', 'img/index/case2.png', NULL),
(3, 'pic1', 20, '冯小姐', '面部轮廓松弛,有皱纹', '纪敏', '多极射频面部颈部提升', 'img/index/scase3.jpg', 'img/index/case3.png', NULL),
(4, 'pic2', 23, '车小姐', '哺乳后胸部下垂', '常冬青', '内窥镜隆胸', 'img/index/scase4.jpg', 'img/index/case4.png', NULL),
(5, 'pic3', 26, '牛小姐', '面部凹陷,泪沟,鼻唇沟明显', '常冬青', '自体脂肪面部填充', 'img/index/scase5.jpg', 'img/index/case5.png', NULL),
(6, 'pic4', 35, '张小姐', '眯眯眼,肿眼泡', '常冬青', '韩式双眼皮+开眼角', 'img/index/scase6.jpg', 'img/index/case6.png', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `dairy_info`
--
drop table if exists dairy_info;
CREATE TABLE `dairy_info` (
  `dairy_id` int(11) NOT NULL,
  `days` int(11) DEFAULT NULL,
  `after_pic` varchar(255) DEFAULT NULL,
  `before_pic` varchar(255) DEFAULT NULL,
  `detail_id` varchar(255) DEFAULT NULL,
  `doctor_id` varchar(255) DEFAULT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dairy_info`
--

INSERT INTO `dairy_info` (`dairy_id`, `days`, `after_pic`, `before_pic`, `detail_id`, `doctor_id`, `uid`) VALUES
(1, 73, 'img/picture2/20171017133207891_240_320.jpg', 'img/picture2/20171009182133801_240_360.jpg', '2', '1', '1'),
(2, 62, 'img/picture2/20171031163648597_240_324.jpg', 'img/picture2/20170820235200881_240_160.jpg', '3', '3', '1'),
(3, 56, 'img/picture2/20171101141348161_240_427.jpg', 'img/picture2/20170906171720619_240_208.jpg', '1', '2', '4'),
(4, 57, 'img/picture2/20171104171401934_240_240.jpg', 'img/picture2/20170904101221557_240_160.jpg', '1', '2', '1'),
(5, 63, 'img/picture2/20171014165317746_240_320.jpg', 'img/picture2/20170906171720619_240_208.jpg', '6', '1', '1'),
(6, 91, 'img/picture2/20171106101251142_240_320.jpg', 'img/picture2/20170913162155156_240_180.jpg', '7', '2', '2'),
(7, 104, 'img/picture2/20170906185008302_240_320.jpg', 'img/picture2/20170525150912973_240_320.jpg', '10', '5', '4'),
(8, 66, 'img/picture2/20171104095548120_240_320.jpg', 'img/picture2/20170905110651992_240_320.jpg', '1', '6', '3'),
(9, 73, 'img/picture2/20171104102339840_240_427.jpg', 'img/picture2/20170823102214215_240_160.jpg', '11', '4', '2'),
(10, 309, 'img/picture2/20171005112644244_240_138.png', 'img/picture2/20170825151308254_240_270.jpg', '8', '1', '4'),
(11, 70, 'img/picture2/20171101141348161_240_427.jpg', 'img/picture2/20170904101221557_240_160.jpg', '3', '1', '3'),
(12, 140, 'img/picture2/20171017133207891_240_320.jpg', 'img/picture2/20171009182133801_240_360.jpg', '8', '7', '1'),
(13, 160, 'img/picture2/20171104171401934_240_240.jpg', 'img/picture2/20170904101221557_240_160.jpg', '4', '8', '2'),
(14, 43, 'img/picture2/20171104102339840_240_427.jpg', 'img/picture2/20170823102214215_240_160.jpg', '3', '2', '3'),
(15, 268, 'img/picture2/20171031163648597_240_324.jpg', 'img/picture2/20170820235200881_240_160.jpg', '1', '2', '1'),
(16, 16, 'img/picture2/20171017133207891_240_320.jpg', 'img/picture2/20171009182133801_240_360.jpg', '5', '9', '4'),
(17, 75, 'img/picture2/20171031163648597_240_324.jpg', 'img/picture2/20170820235200881_240_160.jpg', '9', '3', '2'),
(18, 110, 'img/picture2/20171106101251142_240_320.jpg', 'img/picture2/20170913162155156_240_180.jpg', '3', '4', '1'),
(19, 153, 'img/picture2/20170906185008302_240_320.jpg', 'img/picture2/20170525150912973_240_320.jpg', '3', '4', '4'),
(20, 43, 'img/picture2/20171005112644244_240_138.png', 'img/picture2/20170825151308254_240_270.jpg', '4', '9', '3'),
(21, 73, 'img/picture2/20171017133207891_240_320.jpg', 'img/picture2/20171009182133801_240_360.jpg', '2', '1', '3'),
(22, 62, 'img/picture2/20171031163648597_240_324.jpg', 'img/picture2/20170820235200881_240_160.jpg', '3', '3', '1'),
(23, 56, 'img/picture2/20171101141348161_240_427.jpg', 'img/picture2/20170906171720619_240_208.jpg', '1', '2', '4'),
(24, 57, 'img/picture2/20171104171401934_240_240.jpg', 'img/picture2/20170904101221557_240_160.jpg', '1', '2', '2'),
(25, 63, 'img/picture2/20171014165317746_240_320.jpg', 'img/picture2/20170906171720619_240_208.jpg', '6', '1', '1'),
(26, 91, 'img/picture2/20171106101251142_240_320.jpg', 'img/picture2/20170913162155156_240_180.jpg', '7', '2', '2'),
(27, 104, 'img/picture2/20170906185008302_240_320.jpg', 'img/picture2/20170525150912973_240_320.jpg', '10', '5', '4'),
(28, 66, 'img/picture2/20171104095548120_240_320.jpg', 'img/picture2/20170905110651992_240_320.jpg', '1', '6', '3'),
(29, 73, 'img/picture2/20171104102339840_240_427.jpg', 'img/picture2/20170823102214215_240_160.jpg', '11', '4', '2'),
(30, 309, 'img/picture2/20171005112644244_240_138.png', 'img/picture2/20170825151308254_240_270.jpg', '8', '1', '4'),
(31, 70, 'img/picture2/20171101141348161_240_427.jpg', 'img/picture2/20170904101221557_240_160.jpg', '3', '1', '3'),
(32, 140, 'img/picture2/20171017133207891_240_320.jpg', 'img/picture2/20171009182133801_240_360.jpg', '8', '7', '1'),
(33, 160, 'img/picture2/20171104171401934_240_240.jpg', 'img/picture2/20170904101221557_240_160.jpg', '4', '8', '2'),
(34, 43, 'img/picture2/20171104102339840_240_427.jpg', 'img/picture2/20170823102214215_240_160.jpg', '3', '2', '3'),
(35, 268, 'img/picture2/20171031163648597_240_324.jpg', 'img/picture2/20170820235200881_240_160.jpg', '1', '2', '1'),
(36, 16, 'img/picture2/20171017133207891_240_320.jpg', 'img/picture2/20171009182133801_240_360.jpg', '5', '9', '4'),
(37, 75, 'img/picture2/20171031163648597_240_324.jpg', 'img/picture2/20170820235200881_240_160.jpg', '9', '3', '2'),
(38, 110, 'img/picture2/20171106101251142_240_320.jpg', 'img/picture2/20170913162155156_240_180.jpg', '3', '4', '1'),
(39, 153, 'img/picture2/20170906185008302_240_320.jpg', 'img/picture2/20170525150912973_240_320.jpg', '3', '4', '4'),
(40, 43, 'img/picture2/20171005112644244_240_138.png', 'img/picture2/20170825151308254_240_270.jpg', '4', '9', '3');

-- --------------------------------------------------------

--
-- 表的结构 `cart`
--
drop table if exists cart;
CREATE TABLE `cart` (
  `cid` INT PRIMARY KEY AUTO_INCREMENT,
  `iid` varchar(128) DEFAULT NULL,
  `count` decimal default 0,
  `checked` char default false,
  uid int
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cart`
--


-- --------------------------------------------------------

--
-- 表的结构 `device_pic`
--
drop table if exists device_pic;
CREATE TABLE `device_pic` (
  `pid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `device_pic`
--

INSERT INTO `device_pic` (`pid`, `img`, `title`, `href`) VALUES
(1, 'img/device-pic/img1.jpg', 'pic1', '1'),
(2, 'img/device-pic/img2.jpg', 'pic2', '1'),
(3, 'img/device-pic/img3.jpg', 'pic3', '2'),
(4, 'img/device-pic/img4.jpg', 'pic4', '2'),
(5, 'img/device-pic/img5.jpg', 'pic5', '3'),
(6, 'img/device-pic/img6.jpg', 'pic6', '3'),
(7, 'img/device-pic/img7.jpg', 'pic7', '4'),
(8, 'img/device-pic/img8.jpg', 'pic8', '4'),
(9, 'img/device-pic/img9.jpg', 'pic9', '5'),
(10, 'img/device-pic/img10.jpg', 'pic10', '5');

-- --------------------------------------------------------

--
-- 表的结构 `index_doctors`
--
drop table if exists index_doctors;
CREATE TABLE `index_doctors` (
  `picId` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(36) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `index_doctors`
--

INSERT INTO `index_doctors` (`picId`, `img`, `title`, `href`) VALUES
(1, 'img/picture/1.jpg', 'pic1', 'index.html?picId=1'),
(2, 'img/picture/2.jpg', 'pic2', 'index.html?picId=2'),
(3, 'img/picture/3.jpg', 'pic3', 'index.html?picId=3'),
(4, 'img/picture/4.jpg', 'pic4', 'index.html?picId=4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `be_user`
--
ALTER TABLE `be_user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `brand_message`
--
ALTER TABLE `brand_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dairy_info`
--
ALTER TABLE `dairy_info`
  ADD PRIMARY KEY (`dairy_id`);

--
-- Indexes for table `device_pic`
--
ALTER TABLE `device_pic`
  ADD PRIMARY KEY (`pid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `be_user`
--
ALTER TABLE `be_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `brand_message`
--
ALTER TABLE `brand_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `dairy_info`
--
ALTER TABLE `dairy_info`
  MODIFY `dairy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- 使用表AUTO_INCREMENT `device_pic`
--
ALTER TABLE `device_pic`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

drop table if exists skills;
CREATE TABLE skills(
  skill_id INT PRIMARY KEY AUTO_INCREMENT,
  skill_name VARCHAR(255), #擅长项目名
  skill_subs varchar(255),
  skill_content VARCHAR(255)
);

insert into skills (skill_id, skill_name, skill_subs ,skill_content) values
(1, '玻尿酸', '五官调整:玻尿酸去黑眼圈,玻尿酸填充卧蚕,玻尿酸填充泪沟,玻尿酸隆鼻;其他填充项目:玻尿酸去法令纹,玻尿酸垫下巴,玻尿酸填充苹果肌', '通过注射的方式，将玻尿酸注入鼻部然后进行塑形，实现鼻部增高、鼻型美化的目的。'),
(2,'肉毒素', '肉毒素:肉毒素缩鼻头,肉毒素瘦小腿,肉毒素瘦肩肌', '通过注射肉毒素，能阻断乙酰神经胆碱的释放，从而阻断了神经对肌肉的传导，使眼部过度收缩的肌肉松弛，进而使眼尾的动态性皱纹消失，达到去鱼尾纹的目的。'),
(3,'皮肤美容', '美白嫩肤:美白针,光子嫩肤,白瓷娃娃;抗衰紧致:射频紧肤,热玛吉,热提拉;祛痘祛疤:激光祛痘祛痘印,黄金微针,射频微针,红蓝光美肤', 'RPR自体血清（是Platelet Rich Plasma富含血小板的血浆简称PRP）被广泛应用于去除各种衰老所致的面颈部皱纹，通过采集人体自身的静脉血液，经过离心浓缩血小板、白细胞等制作流程来制作成富高浓度生长因子的自体血浆，再注射回面颈部皮肤的表皮层与真皮层之间，达到修复受损皮肤、延缓皮肤老化的作用。'),
(4,'眼部整形', '双眼皮:埋线双眼皮,切开双眼皮,韩式定点双眼皮;眼袋:外切去眼袋,内切去眼袋,激光去眼袋;黑眼圈:玻尿酸去黑眼圈,激光去黑眼圈,手术去黑眼圈', '内眦成形术俗称开内眼角。它是通过手术方式，对内侧眼角进行矫正放大，以去除内眦赘皮、延长眼裂水平长度，来达到放大眼睛的效果。'),
(5,'鼻部整形', '隆鼻:膨体隆鼻,硅胶隆鼻,自体软骨隆鼻;鼻头整形:肉毒素缩鼻头,自体软骨垫鼻尖,手术缩鼻头;鼻翼整形:手术缩鼻翼','硅胶隆鼻是将医用固体硅胶假体埋入鼻背筋膜下面，使鼻梁或鼻尖突起，从而改变鼻子的形状，达到预期的效果。对于鼻梁低鼻尖形状较好者可单纯施此种手术。手术无痛苦，表面无痕迹，4-7天恢复正常。'),
(6,'面部轮廓', '颧骨颧弓:颧骨降低,3D颧骨旋转术,颧弓内推;V型脸:V-LINE瓜子脸手术,下颌角整形;额头:假体填充额头,自体脂肪填充额头,玻尿酸填充额头','额部扁平是由先天和后天性因素导致的，以先天性因素为主；假体丰额头是通过手术方式将假体材料（硅胶/膨体），植入到额部的骨与软组织之间，不但可以使扁平、狭窄的额头变得立体饱满，同时还能在一定程度上减轻额部皱纹。'),
(7,'自体脂肪', '自体脂肪填充:自体脂肪填充额头,自体脂肪填充太阳穴,自体脂肪隆鼻,自体脂肪填充泪沟','自体脂肪丰额头是从腹部或大腿内侧等脂肪堆积较多的地方抽取脂肪，再将脂肪进行离心提纯后注入到额部，其脂肪一旦存活效果永久。'),
(8,'胸部整形', '隆胸:假体隆胸,自体脂肪隆胸;乳头:乳头整形;去副乳:吸脂去副乳,手术去副乳','假体隆胸是通过应用质量优良和大小适中的乳房假体植入于胸大肌下，以增加乳房体积，改善乳房外形和对称性而手感又良好的方法，它是世界上开展时间最长、临床应用最多的办法。'),
(9,'美体塑形', '吸脂:吸脂瘦手臂,吸脂瘦腰部,吸脂瘦腹部;激光溶脂:激光溶脂瘦手臂,激光溶脂瘦腰部,激光溶脂瘦腹部;冷冻溶脂:冷冻溶脂瘦手臂,冷冻溶脂瘦腰部','使用RFAL专利技术，双层加热三维紧肤，让电流从深入脂肪层的内电极流向置于皮肤表面的外电极，形成闭合环路，由内而外释放射频能量，溶解脂肪的同时，使皮肤真皮层、皮下筋膜层、隔膜层三维收缩，皮肤紧致提升可达40%，而且创伤更小，术后舒适感更高。'),
(10,'抗衰抗初老', '韩式半永久:半永久纹眉,半永久睫毛线,半永久纹唇,半永久纹发际线,半永久美瞳线,半永久纹眼线','大拉皮手术提升也称为全面部冠状切口除皱术，是在发际内切一环状切口，然后将额部、颞部、上脸颊等部位的皮肤剥离，把整体面部的皮肤上提，适合面颈部下垂松弛明显者。'),
(11,'牙齿美容', '','超声波洁牙，是通过超声波的高频震荡作用去除牙石、菌斑和色素清洁牙面，以延迟菌斑和牙石的再沉积。其具有高效、优质、省时省力的特点，对牙面的损害极小。'),
(12,'半永久妆', '','半永久是整形美容术和化妆术相结合衍生的一项美容技能。使用天然色料，将植物色料植入眉部表皮内，可以随着表皮细胞的慢慢更新被逐步代谢，一般2-3年后慢慢消失。注入的颜色能够精确地将皮肤染色，让眉形呈现出自然的化妆效果。'),
(13,'激光脱毛', '','激光脱手臂是依据选择性的光热动力学原理，通过合理调节激光波长能量脉宽，激光便能穿过皮肤表层到达毛发的根部毛囊，光能被吸收并转化为破坏毛囊组织的热能，从而使毛发失去再生能力同时又可能会损伤周边组织、刺痛感轻的技术。'),
(14,'毛发种植', '','种植发际线是运用自体毛发移植的原理，采取后枕部永久性生长的健康毛囊，移植到没有头发或头发稀缺的发际线区域，移植的毛囊成功存活后便会生长出健康的新发，并保持原有头发的一切生物学特性，不会再次脱落或坏死。'),
(15,'私密整形', '','阴道紧缩术有利于预防和治疗因盆底组织松弛而导致的子宫脱垂及阴道前后壁膨出等疾患；手术根据患者的不同年龄、阴道松弛及会阴损伤的不同程度进行修补，通过手术修复损伤松弛的肌肉和筋膜，使阴道弹性增强，松紧度变得合适，解除了患者心理上和生理上的痛苦，并提高了性生活质量，恢复了女性的自信心。'),
(16,'唇部整形', '','厚唇变薄术是对患者的实际情况先进行术前精细设计，根据需切除红唇组织的宽度设计切口，再按照设计线切开黏膜，楔形加深切口适量切除口轮匝肌，并按照患者的五官比例设计出唇部的自然形态。厚唇变薄术后自然协调，美观大方。'),
(17,'耳部整形', '','招风耳是一种较常见的先天耳廓畸形，多见于双侧，特点是耳廓略大，上半部扁平。对耳轮发育不全，性态消失。美容医学上专门针对这种缺陷的手术方法就叫招风耳矫正术。');

drop table if exists doctors;
CREATE TABLE doctors(
  doctor_id INT PRIMARY KEY AUTO_INCREMENT,
  doctor_name VARCHAR(255),  #医生姓名
  pic VARCHAR(255),          #图片
  hospital VARCHAR(255),     #所在医院
  title VARCHAR(255),        #当前职务
  qualify VARCHAR(255),      #资质
  years INT,                 #年限
  edu_level VARCHAR(255),   #学历
  country VARCHAR(255)       #国家
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'刘天一',
'img/picture2/20160127105224120_200_200.jpg',
'上海复旦大学附属华东医院','医生','助教',8,'双博士','台湾'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'刘至昱',
'img/picture2/20151106180213433_200_200.jpg',
'【新氧云诊所】上海星和医疗美容门诊部','主任医师','执业中医师',7,'硕士','台湾'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'王琳',
'img/picture2/20160607112430342_200_200.jpg',
'大连市中心医院','外聘教授','主任中医师',12,'双硕士','韩国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'周宜国',
'img/picture2/20170217170407934_200_200.jpg',
'北京悦丽汇三里屯诊所','主任医师','执业中医师',4,'专科','台湾'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'黄名斗',
'img/picture2/20170730100025269_200_200.png',
'南京美贝尔医疗美容医院','主任医师','主治中医师',1,'双博士','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'李雯',
'img/picture2/20170711115652840_200_200.jpg',
'长沙星雅医疗美容','医生','执业中医师',11,'双硕士','日本'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'王芳',
'img/picture2/20161010152612849_200_200.jpg',
'北京欧华医疗美容诊所','研究员','助理执业医师',7,'本科','日本'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'张广巍',
'img/picture2/20170605181008313_200_200.jpg',
'西安华旗唯美门诊部','研究员','助教',2,'专科','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'余文杰',
'img/picture2/20141129100220308_200_200.jpg',
'长沙伊百丽医学美肤连锁','院长','主任医师',5,'进修','日本'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'周雪',
'img/picture2/20170416154736192_200_200.jpg',
'德阳金荣医学美容专科医院','副院长','讲师',3,'硕士','日本'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'谢俊',
'img/picture2/20160719170859728_200_200.png',
'深圳丽港丽格医疗美容门诊部','外聘教授','硕士研究生导师',8,'博士后','韩国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'陈咏玲',
'img/picture2/20170427170409297_200_200.png',
'长沙科颜美整形美容','主任医师','副教授',4,'硕士','香港'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'张立彬',
'img/picture2/20161220153315914_200_200.jpg',
'北京新星靓医疗美容门诊部','主任医师','硕士研究生导师',7,'双博士','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'瞿敏',
'img/picture2/20170901095648159_200_200.jpg',
'武汉洪山爱美汇整形美容','主任医师','执业中医师',1,'双博士','台湾'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'辛晴',
'img/picture2/20170928191942264_200_200.jpg',
'北京金圣整形医疗美容','副院长','助教',0,'硕士','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'薛提朋',
'img/picture2/20170510110046925_200_200.jpg',
'长沙素妍医疗美容','中心主任','主任医师',12,'本科','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'赵惠春',
'img/picture2/20161209131311665_200_200.jpg',
'北京金燕子医疗美容诊所','副院长','讲师',4,'进修','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'王海龙',
'img/picture2/20151104112300756_200_200.png',
'上海茸城医疗美容医院','医生','讲师',10,'博士','香港'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'苏鹏',
'img/picture2/20170817095723658_200_200.png',
'西安施尔绮医学美容机构','主诊医生','副主任中医师',12,'双硕士','台湾'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'聂祝锋',
'img/picture2/20160526151455752_200_200.jpg',
'武汉新至美医疗美容医院','研究员','副主任医师',9,'硕士','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'王会勇',
'img/picture2/20170718132436907_200_200.jpg',
'上海喜美医疗美容','主任医师','主任中医师',9,'硕士','香港'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'杨军庭',
'img/picture2/20170530121437764_200_200.jpg',
'北京利美康岩之畔美容门诊部','中心主任','主任医师',5,'双博士','香港'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'于海成',
'img/picture2/20160921164812608_200_200.jpg',
'缔妍医疗美容','主任医师','执业中医师',6,'博士','台湾'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'周文亮',
'img/picture2/20170704160004820_200_200.jpg',
'长沙美莱整形美容医院','研究员','助教',7,'双博士','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'丁砚江',
'img/picture2/20141127114446614_200_200.jpg',
'北京世熙医疗美容','研究员','执业中医师',15,'专科','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'卢元刚',
'img/picture2/20160318142150165_200_200.jpg',
'北京世熙医疗美容','研究员','助教',0,'博士后','韩国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'袁强',
'img/picture2/20140906104256722_200_200.jpg',
'北京市第六人民医院','实习医生','教授',9,'进修','韩国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'皮刚',
'img/picture2/20171110103219716_200_200.png',
'扬州美贝尔医疗美容','实习医生','副主任医师',8,'进修','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'孙万秀',
'img/picture2/20160618170014589_200_200.jpg',
'南京和美医疗美容','外聘教授','教授',7,'本科','日本'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'赵璐',
'img/picture2/20170915133056152_200_200.jpg',
'新氧云诊所北京丽扬店','副研究员','执业医师',11,'硕士','日本'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'崔军',
'img/picture2/20170713171559504_200_200.jpg',
'深圳医美汇医疗美容门诊部','副院长','讲师',2,'硕士','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'苗春来',
'img/picture2/20160105142140878_200_200.jpg',
'深圳仁安雅医疗美容门诊部','研究员','副主任中医师',15,'双博士','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'邹志英',
'img/picture2/20171103101447847_200_200.jpg',
'常州美贝尔医疗美容医院','院长','主任中医师',13,'双硕士','台湾'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'魏志香',
'img/picture2/20170817110708572_200_200.jpg',
'北京丽星整形','中心主任','助教',8,'本科','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'薛云鹏',
'img/picture2/20170626174539923_200_200.jpg',
'天津知妍医疗美容','主任医师','讲师',3,'本科','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'贾亮',
'img/picture2/20170604134942599_200_200.jpg',
'郑州都市风韵医疗美容门诊部','院长','助教',0,'专科','台湾'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'杨顺江',
'img/picture2/20170823184746560_200_200.jpg',
'台州悠美丽思医疗美容门诊部','主诊医生','硕士研究生导师',4,'进修','香港'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'孙小应',
'img/picture2/20170331165952321_200_200.jpg',
'武汉沃美整形医院','主任医师','教授',5,'博士','韩国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'谈宇腾',
'img/picture2/20150716171424834_200_200.jpg',
'上海百达丽医疗美容门诊部','研究员','助理执业医师',5,'硕士','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'徐增亮',
'img/picture2/20171106175821114_200_200.jpg',
'苏州瑞芙臣医疗美容诊所','实习医生','主任中医师',5,'专科','香港'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'马永奇',
'img/picture2/20160412105351138_200_200.jpg',
'北京伟力嘉美信医疗美容门诊部','实习医生','助理执业中医师',8,'硕士','韩国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'吴琼',
'img/picture2/20170531145207755_200_200.jpg',
'北京新星靓医疗美容门诊部','医生','硕士研究生导师',9,'博士','韩国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'王科学',
'img/picture2/20151128131609112_200_200.png',
'广州健丽医美','外聘教授','助教',15,'双博士','日本'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'项力源',
'img/picture2/20170905095342523_200_200.jpg',
'北京英煌医疗美容','主任医师','助教',12,'博士后','香港'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'陈远海',
'img/picture2/20151209172609672_200_200.jpg',
'武汉美仑医疗美容门诊部','院长','助教',6,'双博士','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'石晓川',
'img/picture2/20170616122631244_200_200.png',
'北京清木医疗美容诊所','副院长','助教',3,'专科','台湾'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'倪胜德',
'img/picture2/20170625203241324_200_200.jpg',
'长沙美莱整形美容医院','主任医师','主治中医师',2,'进修','香港'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'聂婕',
'img/picture2/20170303145456892_200_200.jpg',
'上海华美医疗美容医院','医生','主任中医师',0,'本科','韩国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'张兵',
'img/picture2/20140528104800117_200_200.png',
'上海慕正医疗美容外科（原上海清杨）','副院长','主任中医师',6,'双博士','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'周鹏起',
'img/picture2/20170522145000658_200_200.jpg',
'成都美未央医疗美容','副研究员','助理执业医师',5,'双硕士','台湾'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'张贝',
'img/picture2/20170913141034988_200_200.jpg',
'新氧云诊所北京丽扬店','主任医师','执业医师',3,'博士','台湾'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'王振荣',
'img/picture2/20160811085630337_200_200.jpg',
'武汉茜韵医疗美容门诊部','中心主任','主治中医师',10,'双硕士','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'张亮',
'img/picture2/20171006162339964_200_200.jpg',
'北京润美玉之光医疗美容','副主任医师','讲师',11,'进修','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'李生富',
'img/picture2/20151019105421469_200_200.jpg',
'北京溪峰聚美仕整形','副研究员','副主任医师',1,'硕士','日本'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'齐永乐',
'img/picture2/20161207115649518_200_200.jpg',
'北京当代医疗美容门诊部','副院长','教授',7,'进修','韩国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'王俊',
'img/picture2/20171027103515142_200_200.jpg',
'台州长青医疗美容','副主任医师','副主任医师',7,'双博士','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'游小明',
'img/picture2/20150331115423258_200_200.jpg',
'北京新美丽邦医疗美容诊所','研究员','主治医师',9,'专科','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'鹿永平',
'img/picture2/20170331093945286_200_200.jpg',
'武汉沃美整形医院','医生','主治医师',7,'进修','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'付荣峰',
'img/picture2/20170124100059258_200_200.jpg',
'武汉中爱医疗美容整形','研究员','讲师',13,'进修','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'吴宇宏',
'img/picture2/20170116153149935_200_200.png',
'北京方舟皮肤病医院整形美容中心','副主任医师','主任医师',2,'博士后','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'杨明洁',
'img/picture2/20170102000942181_200_200.jpg',
'大连科美整形','副院长','助教',2,'博士','日本'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'孟明星',
'img/picture2/20171105105949803_200_200.jpg',
'郑州明星医疗美容','院长','主任医师',15,'进修','大陆'
);
drop table if exists doctor_skill_rel;
CREATE TABLE doctor_skill_rel(
  rel_id INT PRIMARY KEY AUTO_INCREMENT,
  doctor_id INT,  #医生编号
  skill_id INT    #技能编号
);
insert into doctor_skill_rel (doctor_id,skill_id) values
(1,5),
(1,16),
(1,2),
(2,14),
(2,1),
(2,12),
(3,1),
(3,4),
(3,6),
(4,9),
(4,10),
(4,17),
(5,12),
(5,4),
(5,6),
(6,11),
(6,16),
(6,17),
(7,2),
(7,9),
(7,6),
(8,9),
(8,12),
(8,5),
(9,9),
(9,10),
(9,7),
(10,16),
(10,7),
(10,15),
(11,5),
(11,10),
(11,6),
(12,7),
(12,11),
(12,13),
(13,7),
(13,13),
(13,8),
(14,5),
(14,13),
(14,14),
(15,16),
(15,3),
(15,9),
(16,7),
(16,4),
(16,14),
(17,9),
(17,6),
(17,10),
(18,7),
(18,6),
(18,1),
(19,12),
(19,14),
(19,15),
(20,15),
(20,9),
(20,17),(21,9),(21,12),(21,2),(22,7),(22,8),(22,1),(23,14),(23,4),(23,12),(24,17),(24,16),(24,11),(25,7),(25,13),(25,15),(26,4),(26,2),(26,9),(27,4),(27,12),(27,14),(28,17),(28,7),(28,10),(29,16),(29,7),(29,2),(30,11),(30,12),(30,17),(31,3),(31,15),(31,7),(32,16),(32,6),(32,14),(33,10),(33,13),(33,12),(34,3),(34,16),(34,15),(35,10),(35,7),(35,17),(36,1),(36,8),(36,4),(37,11),(37,1),(37,4),(38,4),(38,3),(38,12),(39,4),(39,11),(39,2),(40,8),(40,3),(40,12),(41,12),(41,2),(41,17),(42,1),(42,10),(42,14),(43,15),(43,16),(43,17),(44,12),(44,16),(44,15),(45,5),(45,8),(45,7),(46,7),(46,11),(46,12),(47,17),(47,9),(47,5),(48,5),(48,6),(48,14),(49,14),(49,6),(49,2),(50,8),(50,12),(50,7),(51,4),(51,2),(51,14),(52,9),(52,5),(52,3),(53,6),(53,17),(53,13),(54,8),(54,3),(54,4),(55,6),(55,3),(55,13),(56,3),(56,13),(56,16),(57,15),(57,7),(57,12),(58,4),(58,10),(58,17),(59,12),(59,10),(59,3),(60,15),(60,12),(60,2),(61,4),(61,1),(61,13),(62,14),(62,1),(62,13);

drop table if exists products;
CREATE TABLE `products` (
  `product_id` INT PRIMARY KEY AUTO_INCREMENT,
  kword varchar(128) DEFAULT NULL,
  title varchar(128) DEFAULT NULL,
  doctor_id int,
  newPrice decimal default 0,
  oldPrice decimal default 0,
  yy_count int,
  d_count int,
  `score` double default 0,
  spec1 int,
  spec2 int,
  spec3 int
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into products (kword, title, doctor_id, newPrice, oldPrice, yy_count, d_count, score, spec1, spec2, spec3) values
 ('埋线提升,抗衰老','速拉美抗衰提升孙玮骏医师亲自操作，提升紧致不是梦！更可尊享免费接机服务',54,'68000','78000','180','30','5',0,0,0),('眼部综合','（贺12周年庆）@薛轶群 芭比眼综合、桃花眼、柳叶眼、丹凤眼、混血型',62,'6800','14800','14','30','5',4,6,0),('定点双眼皮','北京美诗沁 皮下速接双眼皮！专注眼部整形23年！本月下单皮下速接双眼皮送水光！',62,'6800','12800','383','30','5',0,0,0),('私人定制,全面部整形','宫廷隆鼻术+美杜沙美眼术 仁医仁术@薛轶群',47,'14800','23800','4','30','5',5,0,0),('自体脂肪填充','自体脂肪填充全面部 原脂原味还您饱满童颜',44,'29800','38000','109','7','5',0,2,2),('自体脂肪隆胸','自体脂肪丰胸，好评率高达99%，秒变C杯，写日记返1600元，私信送100元红包',20,'9800','28800','1917','47','0',0,0,0),('牙齿','金属托槽牙齿矫正套餐  经济实惠 窟牙也能开心笑',58,'8800','13180','111','1','4.9',5,0,3),('冷冻溶脂','热力塑|冷冻减脂|紧肤提拉|年卡套餐',11,'26800','188888','525','30','5',0,1,0),('埋线提升','中日友好@薛志强 面部蝶翼网状提升',52,'15800','18900','73','3','5',0,0,4),('激光去眼袋','不开刀去眼袋 北京美诗沁 22年专注不开刀去眼袋！',15,'6800','12800','742','30','4.9',0,0,1),('鼻综合','【中日友好@薛志强】肋软骨综合鼻整形   写日记即返3000元！！！',33,'45800','74000','585','30','5',0,5,1),('激光去眼袋','不开刀去眼袋  专利技术 不肿胀 不反弹 签约保障',28,'7800','12800','845','30','5',0,0,0),('自体脂肪填充','全脸黄金脂肪+PRP，案例招募价，双十一限量秒杀',50,'6600','19800','74','30','5',1,0,0),('冷冻溶脂','冷冻减脂 安心享瘦 拥有窈窕好身姿',20,'999','1999','326','30','5',4,0,0),('面部轮廓,埋线提升','【V-LINE瓜子脸手术】线雕瘦脸，肉毒素瘦脸，面部吸脂，面部提升打造上镜小V脸！',24,'2980','9800','2370','58','0',0,0,0),('埋线提升','{超人气项目}随做随走，领航 V 脸新概念，到院赠送激光美肤项目3选1',47,'2680','6800','122','30','4.8',5,0,0),('脂肪填充','【自体脂肪移植填充全脸】脂肪填太阳穴 填额头 填苹果肌',54,'5880','26800','537','30','5',0,0,0),('埋线提升','蛋白逆龄童颜术  重塑年轻轮廓~全面部线雕特惠【日记返现】',10,'4980','12800','520','30','0',4,1,0),('超声刀','美版超声刀  全脸',53,'19800','29800','2','0','5',0,0,6),('吸脂','水动力定位吸脂 分层精细吸脂 水动力吸脂瘦身 水动力精雕瘦身新体验 写日记返现',37,'1198','5000','1077','117','5',0,0,6),('自体脂肪填充,丰胸','脂肪精细吸脂自体脂肪丰胸，让美胸更坚“挺”任学会院长亲自操作',29,'128000','160000','50','18','5',0,0,0),('假体隆胸','【美国曼托】院长亲操，私信即送活肤一次',29,'29999','68000','69','30','4.9',0,0,0),('埋线隆鼻,线雕隆鼻','线雕鼻综合 鼻头+鼻背+鼻尖+鼻小柱 不限根数 私信即送项目',35,'2800','10800','452','30','4.8',0,0,0),('埋线提升','大V线线雕提升 不限根数 私信送项目 改善面部轮廓 抗衰瘦脸 秒变明星同款V脸',28,'2800','9800','423','30','5',0,0,0),('皮肤','【伊肤泉微针舒缓修复套餐】限时特惠每人限购一次体验',19,'999','2680','107','7','5',0,4,0),('毛发种植,植眉','眉毛种植 /艺术植眉/无痕眉毛种植参与日记高额返现3000元',20,'10000','25000','16','30','5',0,0,4),('鼻综合','网红逆天颜值养成术【眼综合+威宁假体鼻综合+脂肪填充】发日记返现',30,'56999','128000','336','30','5',3,0,2),('埋线提升','【线雕提升法令纹】不限根数！下单即送“超声波导入精华”',40,'2400','12600','25','30','0',0,0,0),('超声刀','【超声刀全面部提升】12800 元2次 不开刀 全脸逆龄提升',40,'12800','29800','62','0','5',0,0,0),('鼻部','【双12年终感恩】芭比混血威宁硅胶假体隆鼻+耳软骨垫鼻尖 精雕混血小翘鼻',8,'4668','9800','29','30','0',0,0,5),('吸脂瘦腰部','双十一优惠5999 腰腹环吸 解决游泳圈 实现小蛮腰',27,'5999','19800','17','1','5',0,0,0),('眼部综合','北京美莱周年庆 韩式切开双眼皮+开内眼角 放大双眸 私信即送5800元美肤季卡！',44,'7800','13600','427','30','4.6',0,0,0),('埋线提升','韩国进口美迪塑PPDO线,维持时间更久,拉力更强不易断,全脸提拉收紧,不限根数!',7,'9600','28800','443','28','5',6,4,4),('毛发种植','发际线种植，发际线调整，术后写日记高返现3000元，前额矫正',31,'5999','12000','96','56','5',0,0,0),('冷冻溶脂','热力塑|冷冻减脂|紧肤提拉|年卡套餐',6,'26800','188888','66','5','4.9',0,0,5),('毛发种植','发际线调整  写日记返现3000元！!！',52,'6400','8000','773','68','4.7',0,0,4),('光纤溶脂瘦脸','30分钟轻松拥有小V脸,不住院,工作学习不耽误!光线溶脂+分层吸脂',9,'1480','6800','100','30','5',4,5,0),('面部提升','【双旦消费送iPhone8】恒生品牌 面部紧致拉提 随做随走 不限根数！',15,'12800','49800','333','71','4.8',0,0,1),('面部吸脂','【下面部吸脂】吸脂瘦脸',41,'5200','6000','582','36','5',0,0,0),('鼻部综合','威宁假体垫鼻梁+耳软骨垫鼻尖+鼻头/鼻翼缩小，写日记返1600元，私信送满减红包',48,'8800','26800','390','30','5',0,0,4),('自体脂肪填充','梁耀婵优活细胞编程丰胸—瘦女人的专场！',36,'68000','88000','2618','33','4.6',0,0,0),('吸脂','【日记返现】全身精雕立体吸脂火热登场  享“瘦”一生~【满减签约效果】',34,'699','3800','895','30','0',3,0,0),('自体脂肪面部填充','自体脂肪填充心形脸,鹅蛋脸，瓜子脸，写日记返1000元，私信送100元尾款红包',44,'800','3800','378','30','5',0,0,6),('自体脂肪全脸填充','【双12年终感恩】全面部脂肪填充 改善面部凹陷打造童颜心型脸 私信即领300红包',41,'7999','30000','24','30','5',0,0,0),('毛发种植','稀疏加密种植，浓密秀发就是你',56,'12800','16000','40','30','0',0,5,5),('双眼皮','【北京协和@白明】协和品质 精雕埋线双眼皮 灵动双眸 宛若天生',49,'2800','8000','35','0','5',0,0,0),('吸脂','【腰腹部+双大腿】360度环吸，瘦身组合',9,'11123','48000','56','19','0',0,0,0),('私密整形','激光阴道紧缩,有效改善阴道松弛,当晚见效！私信领取满减红包',4,'2299','12800','86','30','5',2,2,0),('全切双眼皮','马晓艳院长主刀 全切开双眼皮 清新自然 7天恢复',27,'3800','9800','290','30','4.8',5,0,0),('衡力肉毒素200单位','瘦腿针/瘦肩针 任选一项 200单位 专业医生团队 支持现场验药',14,'1780','9000','703','86','5',2,5,0);

drop table if exists pics;
CREATE TABLE `pics` (
  `pic_id` INT PRIMARY KEY AUTO_INCREMENT,
  product_id int,
  sm varchar(128) DEFAULT NULL,
  md varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into pics (product_id, sm, md) values
(1,'20171120720171120142314340989421799_226.jpg','20171120720171120142314340989421799_400.jpg'),(1,'20171119120171119175459361581538789_226.jpg','20171119120171119175459361581538789_400.jpg'),(1,'20171118120171118114456205735626076_226.jpg','20171118120171118114456205735626076_400.jpg'),(1,'20171026020171026205725709742513948_226.jpg','20171026020171026205725709742513948_400.jpg'),(1,'201711141201711141020453581844307_226.jpg','201711141201711141020453581844307_400.jpg'),(2,'2017112442017112416485553709392162_226.jpg','2017112442017112416485553709392162_400.jpg'),(2,'2017111472017111414453685141151593_226.jpg','2017111472017111414453685141151593_400.jpg'),(2,'20171116920171116162136898793725905_226.jpg','20171116920171116162136898793725905_400.jpg'),(2,'20171115520171115114726457947667650_226.jpg','20171115520171115114726457947667650_400.jpg'),(2,'20171120620171120110242646262716943_226.jpg','20171120620171120110242646262716943_400.jpg'),(3,'20171114120171114144814534236654538_226.jpg','20171114120171114144814534236654538_400.jpg'),(3,'20171112620171112113718809337677405_226.jpg','20171112620171112113718809337677405_400.jpg'),(3,'20171112820171112110452883198413696_226.jpg','20171112820171112110452883198413696_400.jpg'),(4,'20171026020171026205725709742513948_226.jpg','20171026020171026205725709742513948_400.jpg'),(4,'20171117720171117114806358314183975_226.jpg','20171117720171117114806358314183975_400.jpg'),(4,'20171115520171115114726457947667650_226.jpg','20171115520171115114726457947667650_400.jpg'),(4,'20171112820171112110452883198413696_226.jpg','20171112820171112110452883198413696_400.jpg'),(5,'20171110020171110121315461700671552_226.jpg','20171110020171110121315461700671552_400.jpg'),(5,'20171120520171120144915606983119957_226.jpg','20171120520171120144915606983119957_400.jpg'),(5,'20171112620171112113718809337677405_226.jpg','20171112620171112113718809337677405_400.jpg'),(5,'20171121020171121193736470190381875_226.jpg','20171121020171121193736470190381875_400.jpg'),(5,'20171026020171026205725709742513948_226.jpg','20171026020171026205725709742513948_400.jpg'),(6,'20171115020171115102815252367893990_226.jpg','20171115020171115102815252367893990_400.jpg'),(6,'20171115520171115114726457947667650_226.jpg','20171115520171115114726457947667650_400.jpg'),(6,'20171121020171121193736470190381875_226.jpg','20171121020171121193736470190381875_400.jpg'),(7,'20171120020171120151405867229252290_226.jpg','20171120020171120151405867229252290_400.jpg'),(7,'20171114620171114145431306901826558_226.jpg','20171114620171114145431306901826558_400.jpg'),(7,'20171122220171122172930721410285552_226.jpg','20171122220171122172930721410285552_400.jpg'),(7,'20171112820171112110452883198413696_226.jpg','20171112820171112110452883198413696_400.jpg'),(7,'20171026020171026205725709742513948_226.jpg','20171026020171026205725709742513948_400.jpg'),(7,'20171124120171124171705231119653389_226.jpg','20171124120171124171705231119653389_400.jpg'),(7,'2017112442017112416485553709392162_226.jpg','2017112442017112416485553709392162_400.jpg'),(8,'20171117120171117122502138163857266_226.jpg','20171117120171117122502138163857266_400.jpg'),(8,'20171121020171121193736470190381875_226.jpg','20171121020171121193736470190381875_400.jpg'),(8,'20171119120171119175459361581538789_226.jpg','20171119120171119175459361581538789_400.jpg'),(8,'20171112620171112113718809337677405_226.jpg','20171112620171112113718809337677405_400.jpg'),(8,'20171119120171119175459361581538789_226.jpg','20171119120171119175459361581538789_400.jpg'),(8,'20171026020171026205725709742513948_226.jpg','20171026020171026205725709742513948_400.jpg'),(9,'20171120720171120142314340989421799_226.jpg','20171120720171120142314340989421799_400.jpg'),(9,'20171122720171122115258429060837716_226.jpg','20171122720171122115258429060837716_400.jpg'),(9,'20171115020171115171407588621294110_226.jpg','20171115020171115171407588621294110_400.jpg'),(9,'20171115020171115102815252367893990_226.jpg','20171115020171115102815252367893990_400.jpg'),(9,'20171117120171117122502138163857266_226.jpg','20171117120171117122502138163857266_400.jpg'),(9,'20171123920171123181346347911730980_226.jpg','20171123920171123181346347911730980_400.jpg'),(10,'2017111792017111715380116029750219_226.jpg','2017111792017111715380116029750219_400.jpg'),(10,'20171112620171112110857930794414167_226.jpg','20171112620171112110857930794414167_400.jpg'),(10,'20171121020171121193736470190381875_226.jpg','20171121020171121193736470190381875_400.jpg'),(10,'20171123920171123181346347911730980_226.jpg','20171123920171123181346347911730980_400.jpg'),(10,'20171030620171030144733373089527867_226.jpg','20171030620171030144733373089527867_400.jpg'),(10,'20171120020171120151405867229252290_226.jpg','20171120020171120151405867229252290_400.jpg'),(11,'20171117120171117122502138163857266_226.jpg','20171117120171117122502138163857266_400.jpg'),(11,'20171112620171112110857930794414167_226.jpg','20171112620171112110857930794414167_400.jpg'),(11,'20171112820171112110452883198413696_226.jpg','20171112820171112110452883198413696_400.jpg'),(11,'2017111472017111414453685141151593_226.jpg','2017111472017111414453685141151593_400.jpg'),(12,'2017112252017112209523014450950093_226.jpg','2017112252017112209523014450950093_400.jpg'),(12,'20171121020171121193736470190381875_226.jpg','20171121020171121193736470190381875_400.jpg'),(12,'20171117720171117114806358314183975_226.jpg','20171117720171117114806358314183975_400.jpg'),(12,'20171103320171103100322908695940256_226.jpg','20171103320171103100322908695940256_400.jpg'),(12,'20171120720171120142314340989421799_226.jpg','20171120720171120142314340989421799_400.jpg'),(13,'2017112252017112209523014450950093_226.jpg','2017112252017112209523014450950093_400.jpg'),(13,'20171120620171120110242646262716943_226.jpg','20171120620171120110242646262716943_400.jpg'),(13,'20171115920171115115102361823287593_226.jpg','20171115920171115115102361823287593_400.jpg'),(13,'20171113820171113141053978416400389_226.jpg','20171113820171113141053978416400389_400.jpg'),(13,'20171124120171124171705231119653389_226.jpg','20171124120171124171705231119653389_400.jpg'),(14,'20171112820171112110452883198413696_226.jpg','20171112820171112110452883198413696_400.jpg'),(14,'20171119120171119175459361581538789_226.jpg','20171119120171119175459361581538789_400.jpg'),(14,'20171030620171030144733373089527867_226.jpg','20171030620171030144733373089527867_400.jpg'),(14,'2017112252017112209523014450950093_226.jpg','2017112252017112209523014450950093_400.jpg'),(14,'201711141201711141020453581844307_226.jpg','201711141201711141020453581844307_400.jpg'),(15,'20171116020171116153023689154690673_226.jpg','20171116020171116153023689154690673_400.jpg'),(15,'20171117120171117122502138163857266_226.jpg','20171117120171117122502138163857266_400.jpg'),(15,'20171120720171120142314340989421799_226.jpg','20171120720171120142314340989421799_400.jpg'),(15,'20171109020171109170654350115983937_226.jpg','20171109020171109170654350115983937_400.jpg'),(16,'201711141201711141020453581844307_226.jpg','201711141201711141020453581844307_400.jpg'),(16,'20171116220171116152156311825927760_226.jpg','20171116220171116152156311825927760_400.jpg'),(16,'2017111792017111715380116029750219_226.jpg','2017111792017111715380116029750219_400.jpg'),(16,'20171117120171117122502138163857266_226.jpg','20171117120171117122502138163857266_400.jpg'),(16,'20171117120171117122502138163857266_226.jpg','20171117120171117122502138163857266_400.jpg'),(16,'20171115920171115115102361823287593_226.jpg','20171115920171115115102361823287593_400.jpg'),(17,'20171117120171117122502138163857266_226.jpg','20171117120171117122502138163857266_400.jpg'),(17,'20171121020171121193736470190381875_226.jpg','20171121020171121193736470190381875_400.jpg'),(17,'2017112442017112416485553709392162_226.jpg','2017112442017112416485553709392162_400.jpg'),(18,'20171124120171124171705231119653389_226.jpg','20171124120171124171705231119653389_400.jpg'),(18,'20171115020171115102815252367893990_226.jpg','20171115020171115102815252367893990_400.jpg'),(18,'20171122220171122155030936170786480_226.jpg','20171122220171122155030936170786480_400.jpg'),(18,'201711141201711141020453581844307_226.jpg','201711141201711141020453581844307_400.jpg'),(18,'20171122720171122114722647640139826_226.jpg','20171122720171122114722647640139826_400.jpg'),(18,'20171122220171122172930721410285552_226.jpg','20171122220171122172930721410285552_400.jpg'),(18,'20171123920171123181346347911730980_226.jpg','20171123920171123181346347911730980_400.jpg'),(19,'20171116920171116162136898793725905_226.jpg','20171116920171116162136898793725905_400.jpg'),(19,'2017112252017112209523014450950093_226.jpg','2017112252017112209523014450950093_400.jpg'),(19,'20171109020171109170654350115983937_226.jpg','20171109020171109170654350115983937_400.jpg'),(19,'20171110020171110121315461700671552_226.jpg','20171110020171110121315461700671552_400.jpg'),(19,'20171122720171122115258429060837716_226.jpg','20171122720171122115258429060837716_400.jpg'),(19,'20171112620171112110857930794414167_226.jpg','20171112620171112110857930794414167_400.jpg'),(19,'20171115720171115144319221759303844_226.jpg','20171115720171115144319221759303844_400.jpg'),(20,'20171110020171110121315461700671552_226.jpg','20171110020171110121315461700671552_400.jpg'),(20,'2017112252017112209523014450950093_226.jpg','2017112252017112209523014450950093_400.jpg'),(20,'20171120720171120142314340989421799_226.jpg','20171120720171120142314340989421799_400.jpg'),(20,'20171120520171120144915606983119957_226.jpg','20171120520171120144915606983119957_400.jpg'),(20,'20171103320171103100322908695940256_226.jpg','20171103320171103100322908695940256_400.jpg'),(21,'20171120720171120142314340989421799_226.jpg','20171120720171120142314340989421799_400.jpg'),(21,'20171122720171122115258429060837716_226.jpg','20171122720171122115258429060837716_400.jpg'),(21,'20171117720171117114806358314183975_226.jpg','20171117720171117114806358314183975_400.jpg'),(22,'20171122720171122114722647640139826_226.jpg','20171122720171122114722647640139826_400.jpg'),(22,'2017111482017111416253973853826216_226.jpg','2017111482017111416253973853826216_400.jpg'),(22,'20171115920171115115102361823287593_226.jpg','20171115920171115115102361823287593_400.jpg'),(22,'2017111472017111414453685141151593_226.jpg','2017111472017111414453685141151593_400.jpg'),(22,'2017112442017112416485553709392162_226.jpg','2017112442017112416485553709392162_400.jpg'),(22,'20171112620171112110857930794414167_226.jpg','20171112620171112110857930794414167_400.jpg'),(22,'20171112620171112110857930794414167_226.jpg','20171112620171112110857930794414167_400.jpg'),(23,'20171122220171122155030936170786480_226.jpg','20171122220171122155030936170786480_400.jpg'),(23,'20171117720171117114806358314183975_226.jpg','20171117720171117114806358314183975_400.jpg'),(23,'20171112620171112110857930794414167_226.jpg','20171112620171112110857930794414167_400.jpg'),(23,'20171124120171124171705231119653389_226.jpg','20171124120171124171705231119653389_400.jpg'),(24,'2017112442017112416485553709392162_226.jpg','2017112442017112416485553709392162_400.jpg'),(24,'20171122720171122114722647640139826_226.jpg','20171122720171122114722647640139826_400.jpg'),(24,'20171120720171120142314340989421799_226.jpg','20171120720171120142314340989421799_400.jpg'),(24,'20171103320171103100322908695940256_226.jpg','20171103320171103100322908695940256_400.jpg'),(24,'20171112820171112110452883198413696_226.jpg','20171112820171112110452883198413696_400.jpg'),(24,'20171112620171112113718809337677405_226.jpg','20171112620171112113718809337677405_400.jpg'),(24,'20171112620171112110857930794414167_226.jpg','20171112620171112110857930794414167_400.jpg'),(25,'20171115020171115102815252367893990_226.jpg','20171115020171115102815252367893990_400.jpg'),(25,'20171115920171115115102361823287593_226.jpg','20171115920171115115102361823287593_400.jpg'),(25,'20171117720171117114806358314183975_226.jpg','20171117720171117114806358314183975_400.jpg'),(25,'2017112442017112416485553709392162_226.jpg','2017112442017112416485553709392162_400.jpg'),(25,'2017112442017112416485553709392162_226.jpg','2017112442017112416485553709392162_400.jpg'),(25,'20171120720171120142314340989421799_226.jpg','20171120720171120142314340989421799_400.jpg'),(26,'20171109020171109170654350115983937_226.jpg','20171109020171109170654350115983937_400.jpg'),(26,'20171118120171118114456205735626076_226.jpg','20171118120171118114456205735626076_400.jpg'),(26,'201711141201711141020453581844307_226.jpg','201711141201711141020453581844307_400.jpg'),(26,'20171026020171026205725709742513948_226.jpg','20171026020171026205725709742513948_400.jpg'),(26,'20171120520171120144915606983119957_226.jpg','20171120520171120144915606983119957_400.jpg'),(27,'20171117120171117122502138163857266_226.jpg','20171117120171117122502138163857266_400.jpg'),(27,'2017112442017112416485553709392162_226.jpg','2017112442017112416485553709392162_400.jpg'),(27,'20171120020171120151405867229252290_226.jpg','20171120020171120151405867229252290_400.jpg'),(27,'20171115520171115114726457947667650_226.jpg','20171115520171115114726457947667650_400.jpg'),(27,'20171113820171113141053978416400389_226.jpg','20171113820171113141053978416400389_400.jpg'),(28,'20171121020171121193736470190381875_226.jpg','20171121020171121193736470190381875_400.jpg'),(28,'201711141201711141020453581844307_226.jpg','201711141201711141020453581844307_400.jpg'),(28,'20171112820171112110452883198413696_226.jpg','20171112820171112110452883198413696_400.jpg'),(28,'20171122720171122114722647640139826_226.jpg','20171122720171122114722647640139826_400.jpg'),(28,'2017111482017111416253973853826216_226.jpg','2017111482017111416253973853826216_400.jpg'),(28,'20171110020171110121315461700671552_226.jpg','20171110020171110121315461700671552_400.jpg'),(29,'20171117720171117114806358314183975_226.jpg','20171117720171117114806358314183975_400.jpg'),(29,'20171117120171117122502138163857266_226.jpg','20171117120171117122502138163857266_400.jpg'),(29,'20171115520171115114726457947667650_226.jpg','20171115520171115114726457947667650_400.jpg'),(29,'20171115020171115171407588621294110_226.jpg','20171115020171115171407588621294110_400.jpg'),(29,'20171103320171103100322908695940256_226.jpg','20171103320171103100322908695940256_400.jpg'),(29,'201711141201711141020453581844307_226.jpg','201711141201711141020453581844307_400.jpg'),(30,'20171121020171121193736470190381875_226.jpg','20171121020171121193736470190381875_400.jpg'),(30,'20171116020171116153023689154690673_226.jpg','20171116020171116153023689154690673_400.jpg'),(30,'20171122720171122114722647640139826_226.jpg','20171122720171122114722647640139826_400.jpg'),(30,'20171122720171122115258429060837716_226.jpg','20171122720171122115258429060837716_400.jpg'),(30,'20171110020171110121315461700671552_226.jpg','20171110020171110121315461700671552_400.jpg'),(30,'20171120020171120151405867229252290_226.jpg','20171120020171120151405867229252290_400.jpg'),(31,'2017112252017112209523014450950093_226.jpg','2017112252017112209523014450950093_400.jpg'),(31,'20171030620171030144733373089527867_226.jpg','20171030620171030144733373089527867_400.jpg'),(31,'20171115520171115114726457947667650_226.jpg','20171115520171115114726457947667650_400.jpg'),(31,'20171120620171120110242646262716943_226.jpg','20171120620171120110242646262716943_400.jpg'),(31,'20171103320171103100322908695940256_226.jpg','20171103320171103100322908695940256_400.jpg'),(32,'20171113820171113141053978416400389_226.jpg','20171113820171113141053978416400389_400.jpg'),(32,'20171122720171122115258429060837716_226.jpg','20171122720171122115258429060837716_400.jpg'),(32,'20171030620171030144733373089527867_226.jpg','20171030620171030144733373089527867_400.jpg'),(32,'20171119120171119175459361581538789_226.jpg','20171119120171119175459361581538789_400.jpg'),(33,'20171121020171121193736470190381875_226.jpg','20171121020171121193736470190381875_400.jpg'),(33,'20171115720171115144319221759303844_226.jpg','20171115720171115144319221759303844_400.jpg'),(33,'20171119120171119175459361581538789_226.jpg','20171119120171119175459361581538789_400.jpg'),(34,'20171114120171114144814534236654538_226.jpg','20171114120171114144814534236654538_400.jpg'),(34,'20171118120171118114456205735626076_226.jpg','20171118120171118114456205735626076_400.jpg'),(34,'20171030620171030144733373089527867_226.jpg','20171030620171030144733373089527867_400.jpg'),(34,'20171120620171120110242646262716943_226.jpg','20171120620171120110242646262716943_400.jpg'),(34,'201711141201711141020453581844307_226.jpg','201711141201711141020453581844307_400.jpg'),(34,'20171119120171119175459361581538789_226.jpg','20171119120171119175459361581538789_400.jpg'),(34,'20171120620171120110242646262716943_226.jpg','20171120620171120110242646262716943_400.jpg'),(35,'20171122720171122114722647640139826_226.jpg','20171122720171122114722647640139826_400.jpg'),(35,'20171114620171114145431306901826558_226.jpg','20171114620171114145431306901826558_400.jpg'),(35,'20171115520171115114726457947667650_226.jpg','20171115520171115114726457947667650_400.jpg'),(35,'20171115520171115114726457947667650_226.jpg','20171115520171115114726457947667650_400.jpg'),(35,'20171116920171116162136898793725905_226.jpg','20171116920171116162136898793725905_400.jpg'),(35,'20171124120171124171705231119653389_226.jpg','20171124120171124171705231119653389_400.jpg'),(36,'20171117120171117122502138163857266_226.jpg','20171117120171117122502138163857266_400.jpg'),(36,'20171116220171116152156311825927760_226.jpg','20171116220171116152156311825927760_400.jpg'),(36,'20171112620171112113718809337677405_226.jpg','20171112620171112113718809337677405_400.jpg'),(36,'20171116120171116165423399827120960_226.jpg','20171116120171116165423399827120960_400.jpg'),(36,'20171110020171110121315461700671552_226.jpg','20171110020171110121315461700671552_400.jpg'),(37,'20171114620171114145431306901826558_226.jpg','20171114620171114145431306901826558_400.jpg'),(37,'20171114620171114145431306901826558_226.jpg','20171114620171114145431306901826558_400.jpg'),(37,'20171030620171030144733373089527867_226.jpg','20171030620171030144733373089527867_400.jpg'),(37,'20171030620171030144733373089527867_226.jpg','20171030620171030144733373089527867_400.jpg'),(37,'20171113820171113141053978416400389_226.jpg','20171113820171113141053978416400389_400.jpg'),(37,'20171030620171030144733373089527867_226.jpg','20171030620171030144733373089527867_400.jpg'),(38,'20171117120171117122502138163857266_226.jpg','20171117120171117122502138163857266_400.jpg'),(38,'2017112442017112416485553709392162_226.jpg','2017112442017112416485553709392162_400.jpg'),(38,'20171120520171120144915606983119957_226.jpg','20171120520171120144915606983119957_400.jpg'),(38,'20171115520171115114726457947667650_226.jpg','20171115520171115114726457947667650_400.jpg'),(38,'20171122720171122114722647640139826_226.jpg','20171122720171122114722647640139826_400.jpg'),(38,'20171116020171116153023689154690673_226.jpg','20171116020171116153023689154690673_400.jpg'),(39,'20171030620171030144733373089527867_226.jpg','20171030620171030144733373089527867_400.jpg'),(39,'2017111792017111715380116029750219_226.jpg','2017111792017111715380116029750219_400.jpg'),(39,'20171122220171122172930721410285552_226.jpg','20171122220171122172930721410285552_400.jpg'),(39,'20171124120171124171705231119653389_226.jpg','20171124120171124171705231119653389_400.jpg'),(39,'20171117120171117122502138163857266_226.jpg','20171117120171117122502138163857266_400.jpg'),(40,'20171114620171114145431306901826558_226.jpg','20171114620171114145431306901826558_400.jpg'),(40,'20171120020171120151405867229252290_226.jpg','20171120020171120151405867229252290_400.jpg'),(40,'20171116920171116162136898793725905_226.jpg','20171116920171116162136898793725905_400.jpg'),(40,'20171117720171117114806358314183975_226.jpg','20171117720171117114806358314183975_400.jpg'),(40,'20171120020171120151405867229252290_226.jpg','20171120020171120151405867229252290_400.jpg'),(41,'2017111482017111416253973853826216_226.jpg','2017111482017111416253973853826216_400.jpg'),(41,'20171122220171122172930721410285552_226.jpg','20171122220171122172930721410285552_400.jpg'),(41,'20171122220171122172930721410285552_226.jpg','20171122220171122172930721410285552_400.jpg'),(42,'20171121020171121193736470190381875_226.jpg','20171121020171121193736470190381875_400.jpg'),(42,'20171120720171120142314340989421799_226.jpg','20171120720171120142314340989421799_400.jpg'),(42,'20171115720171115144319221759303844_226.jpg','20171115720171115144319221759303844_400.jpg'),(42,'20171109020171109170654350115983937_226.jpg','20171109020171109170654350115983937_400.jpg'),(42,'20171117120171117122502138163857266_226.jpg','20171117120171117122502138163857266_400.jpg'),(42,'20171116920171116162136898793725905_226.jpg','20171116920171116162136898793725905_400.jpg'),(42,'20171115920171115115102361823287593_226.jpg','20171115920171115115102361823287593_400.jpg'),(43,'20171109020171109170654350115983937_226.jpg','20171109020171109170654350115983937_400.jpg'),(43,'20171120720171120142314340989421799_226.jpg','20171120720171120142314340989421799_400.jpg'),(43,'2017111482017111416253973853826216_226.jpg','2017111482017111416253973853826216_400.jpg'),(43,'20171113820171113141053978416400389_226.jpg','20171113820171113141053978416400389_400.jpg'),(43,'20171110020171110121315461700671552_226.jpg','20171110020171110121315461700671552_400.jpg'),(44,'20171115520171115114726457947667650_226.jpg','20171115520171115114726457947667650_400.jpg'),(44,'20171120620171120110242646262716943_226.jpg','20171120620171120110242646262716943_400.jpg'),(44,'20171026020171026205725709742513948_226.jpg','20171026020171026205725709742513948_400.jpg'),(44,'20171123920171123181346347911730980_226.jpg','20171123920171123181346347911730980_400.jpg'),(44,'20171116220171116152156311825927760_226.jpg','20171116220171116152156311825927760_400.jpg'),(45,'20171103320171103100322908695940256_226.jpg','20171103320171103100322908695940256_400.jpg'),(45,'20171115920171115115102361823287593_226.jpg','20171115920171115115102361823287593_400.jpg'),(45,'20171115520171115114726457947667650_226.jpg','20171115520171115114726457947667650_400.jpg'),(45,'20171116920171116162136898793725905_226.jpg','20171116920171116162136898793725905_400.jpg'),(45,'20171113820171113141053978416400389_226.jpg','20171113820171113141053978416400389_400.jpg'),(46,'20171116920171116162136898793725905_226.jpg','20171116920171116162136898793725905_400.jpg'),(46,'2017112252017112209523014450950093_226.jpg','2017112252017112209523014450950093_400.jpg'),(46,'20171115520171115114726457947667650_226.jpg','20171115520171115114726457947667650_400.jpg'),(47,'20171120720171120142314340989421799_226.jpg','20171120720171120142314340989421799_400.jpg'),(47,'2017111482017111416253973853826216_226.jpg','2017111482017111416253973853826216_400.jpg'),(47,'20171103320171103100322908695940256_226.jpg','20171103320171103100322908695940256_400.jpg'),(47,'20171116020171116153023689154690673_226.jpg','20171116020171116153023689154690673_400.jpg'),(47,'20171122220171122172930721410285552_226.jpg','20171122220171122172930721410285552_400.jpg'),(47,'2017111472017111414453685141151593_226.jpg','2017111472017111414453685141151593_400.jpg'),(48,'20171116920171116162136898793725905_226.jpg','20171116920171116162136898793725905_400.jpg'),(48,'20171103320171103100322908695940256_226.jpg','20171103320171103100322908695940256_400.jpg'),(48,'20171112820171112110452883198413696_226.jpg','20171112820171112110452883198413696_400.jpg'),(48,'20171116120171116165423399827120960_226.jpg','20171116120171116165423399827120960_400.jpg'),(48,'20171114620171114145431306901826558_226.jpg','20171114620171114145431306901826558_400.jpg'),(48,'20171114120171114144814534236654538_226.jpg','20171114120171114144814534236654538_400.jpg'),(49,'20171122220171122155030936170786480_226.jpg','20171122220171122155030936170786480_400.jpg'),(49,'20171109020171109170654350115983937_226.jpg','20171109020171109170654350115983937_400.jpg'),(49,'20171122720171122115258429060837716_226.jpg','20171122720171122115258429060837716_400.jpg'),(49,'20171123920171123181346347911730980_226.jpg','20171123920171123181346347911730980_400.jpg'),(50,'20171112820171112110452883198413696_226.jpg','20171112820171112110452883198413696_400.jpg'),(50,'20171103320171103100322908695940256_226.jpg','20171103320171103100322908695940256_400.jpg'),(50,'20171114120171114144814534236654538_226.jpg','20171114120171114144814534236654538_400.jpg'),(50,'20171120620171120110242646262716943_226.jpg','20171120620171120110242646262716943_400.jpg'),(50,'20171115520171115114726457947667650_226.jpg','20171115520171115114726457947667650_400.jpg');


drop table if exists cart;
create table cart(
  iid INT PRIMARY KEY AUTO_INCREMENT,
  uid int,
  pid int,
  count int,
  checked char
) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

drop table if exists safeshopping;
CREATE TABLE `safeshopping` (
  `sid` int(11) NOT NULL,
  `img` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `details` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `safeshopping` (`sid`, `img`, `title`, `details`) VALUES
(1, 'img/safe-shopping/20170515142054653.png', '美白', '白嫩无暇遮百丑'),
(2, 'img/safe-shopping/20170515142103595.png', '面部提拉', '对抗时间重塑V脸'),
(3, 'img/safe-shopping/20170420220545236.png', '祛痘', '最重要的是“无暇”'),
(4, 'img/safe-shopping/20170515142118861.png', '瘦身', '瘦才能百搭'),
(5, 'img/safe-shopping/20170515142111451.png', '除皱', '是时候抗老啦');

drop table if exists safeshoppingsecond;
CREATE TABLE `safeshoppingsecond` (
  `sid` int(11) NOT NULL,
  `img` varchar(256) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `details` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `safeshoppingsecond` (sid, `img`, `title`, `details`) VALUES
(1,'img/safe-shopping/20170420160118770.png', '白富美必备', '高端定制'),
(2,'img/safe-shopping/20170420160208371.png', '学生白领馆', '变美趁早'),
(3,'img/safe-shopping/20170420160237237.png', '专家医生馆', '安心靠谱'),
(4,'img/safe-shopping/20170420160311926.png', '日记返巨款', '变美返现'),
(5,'img/safe-shopping/20170420160337527.png', '韩日泰港台', '海外整形'),
(6,'img/safe-shopping/20170420160359622.png', '瘦才是王道', '快速瘦身'),
(7,'img/safe-shopping/20170420160424753.png', '初恋少女馆', '脂肪填充'),
(8,'img/safe-shopping/20170515142622230.png', '换季护肤馆', '皮肤管理');

