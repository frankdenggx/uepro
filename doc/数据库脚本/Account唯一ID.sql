--ORACLE
create sequence NUMSEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 30
increment by 1
cache 20;

--MYSQL

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ue_bas_seq`
-- ----------------------------
DROP TABLE IF EXISTS `ue_bas_seq`;
CREATE TABLE `ue_bas_seq` (
  `fnumber` int(11) NOT NULL AUTO_INCREMENT COMMENT '模拟oracle sequence',
  KEY `fnumber` (`fnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;


使用方式：package ue.common.utils.NumberCreator