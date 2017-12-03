use beauty;
--
-- 表的结构 `safeshoppingsecond`
--
drop table if exists safeshoppingsecond;
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