USE beauty;
CREATE TABLE `safeshopping` (
  `sid` int(11) NOT NULL,
  `img` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `details` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `safeshopping`
--

INSERT INTO `safeshopping` (`sid`, `img`, `title`, `details`) VALUES
(1, 'img/safeShopping/20170515142054653.png', '美白', '白嫩无暇遮百丑'),
(2, 'img/safeShopping/20170515142103595.png', '面部提拉', '对抗时间重塑V脸'),
(3, 'img/safeShopping/20170420220545236.png', '祛痘', '最重要的是“无暇”'),
(4, 'img/safeShopping/20170515142118861.png', '瘦身', '瘦才能百搭'),
(5, 'img/safeShopping/20170515142111451.png', '除皱', '是时候抗老啦');

-- --------------------------------------------------------

--
-- 表的结构 `safeshoppingsecond`
--

CREATE TABLE `safeshoppingsecond` (
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `safeshoppingsecond`
--

INSERT INTO `safeshoppingsecond` (`img`, `title`, `details`) VALUES
('img/safeShopping/20170420160118770.png', '白富美必备', '高端定制'),
('img/safeShopping/20170420160208371.png', '学生白领馆', '变美趁早'),
('img/safeShopping/20170420160237237.png', '专家医生馆', '安心靠谱'),
('img/safeShopping/20170420160311926.png', '日记返巨款', '变美返现'),
('img/safeShopping/20170420160337527.png', '韩日泰港台', '海外整形'),
('img/safeShopping/20170420160359622.png', '瘦才是王道', '快速瘦身'),
('img/safeShopping/20170420160424753.png', '初恋少女馆', '脂肪填充'),
('img/safeShopping/20170515142622230.png', '换季护肤馆', '皮肤管理');

