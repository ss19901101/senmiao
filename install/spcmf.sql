-- ThinkCMF SQL Dump Program
-- 
-- DATE : 2015-08-04 06:59:35
-- Vol : 1
DROP TABLE IF EXISTS `sp_access`;
CREATE TABLE `sp_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `g` varchar(20) NOT NULL COMMENT '项目',
  `m` varchar(20) NOT NULL COMMENT '模块',
  `a` varchar(20) NOT NULL COMMENT '方法',
  KEY `groupId` (`role_id`),
  KEY `gma` (`g`,`m`,`a`,`role_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_ad`;
CREATE TABLE `sp_ad` (
  `ad_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `ad_name` varchar(255) NOT NULL,
  `ad_content` text,
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  PRIMARY KEY (`ad_id`),
  KEY `ad_name` (`ad_name`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_asset`;
CREATE TABLE `sp_asset` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `unique` varchar(14) NOT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `filepath` varchar(200) NOT NULL,
  `uploadtime` int(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `meta` text,
  `suffix` varchar(50) DEFAULT NULL,
  `download_times` int(6) NOT NULL,
  PRIMARY KEY (`aid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_auth_access`;
CREATE TABLE `sp_auth_access` (
  `role_id` mediumint(8) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(255) NOT NULL COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) DEFAULT NULL COMMENT '权限规则分类，请加应用前缀,如admin_',
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','admin/content/default','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminterm/index','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminterm/delete','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminterm/edit','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminterm/edit_post','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminterm/add','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminterm/add_post','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminterm/listorders','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpage/index','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpage/delete','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpage/edit','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpage/edit_post','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpage/add','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpage/add_post','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpage/listorders','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','admin/recycle/default','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpage/recyclebin','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpage/clean','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpage/restore','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpost/recyclebin','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpost/restore','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpost/clean','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpost/index','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpost/move','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpost/check','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpost/delete','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpost/edit','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpost/edit_post','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpost/add','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpost/add_post','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpost/listorders','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpost/top','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','portal/adminpost/recommend','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','api/guestbookadmin/index','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','api/guestbookadmin/delete','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','comment/commentadmin/index','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','comment/commentadmin/delete','admin_url');
INSERT INTO sp_auth_access ( `role_id`, `rule_name`, `type` ) VALUES  ('2','comment/commentadmin/check','admin_url');
DROP TABLE IF EXISTS `sp_auth_rule`;
CREATE TABLE `sp_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '1' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(255) DEFAULT NULL COMMENT '额外url参数',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('156','Admin','admin_url','admin/content/default','','内容管理','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('157','Api','admin_url','api/guestbookadmin/index','','所有留言','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('158','Api','admin_url','api/guestbookadmin/delete','','删除网站留言','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('159','Comment','admin_url','comment/commentadmin/index','','评论管理','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('160','Comment','admin_url','comment/commentadmin/delete','','删除评论','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('161','Comment','admin_url','comment/commentadmin/check','','评论审核','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('162','Portal','admin_url','portal/adminpost/index','','文章管理','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('163','Portal','admin_url','portal/adminpost/listorders','','文章排序','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('164','Portal','admin_url','portal/adminpost/top','','文章置顶','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('165','Portal','admin_url','portal/adminpost/recommend','','文章推荐','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('166','Portal','admin_url','portal/adminpost/move','','批量移动','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('167','Portal','admin_url','portal/adminpost/check','','文章审核','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('168','Portal','admin_url','portal/adminpost/delete','','删除文章','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('169','Portal','admin_url','portal/adminpost/edit','','编辑文章','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('170','Portal','admin_url','portal/adminpost/edit_post','','提交编辑','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('171','Portal','admin_url','portal/adminpost/add','','添加文章','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('172','Portal','admin_url','portal/adminpost/add_post','','提交添加','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('173','Portal','admin_url','portal/adminterm/index','','分类管理','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('174','Portal','admin_url','portal/adminterm/listorders','','文章分类排序','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('175','Portal','admin_url','portal/adminterm/delete','','删除分类','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('176','Portal','admin_url','portal/adminterm/edit','','编辑分类','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('177','Portal','admin_url','portal/adminterm/edit_post','','提交编辑','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('178','Portal','admin_url','portal/adminterm/add','','添加分类','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('179','Portal','admin_url','portal/adminterm/add_post','','提交添加','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('180','Portal','admin_url','portal/adminpage/index','','页面管理','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('181','Portal','admin_url','portal/adminpage/listorders','','页面排序','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('182','Portal','admin_url','portal/adminpage/delete','','删除页面','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('183','Portal','admin_url','portal/adminpage/edit','','编辑页面','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('184','Portal','admin_url','portal/adminpage/edit_post','','提交编辑','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('185','Portal','admin_url','portal/adminpage/add','','添加页面','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('186','Portal','admin_url','portal/adminpage/add_post','','提交添加','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('187','Admin','admin_url','admin/recycle/default','','回收站','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('188','Portal','admin_url','portal/adminpost/recyclebin','','文章回收','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('189','Portal','admin_url','portal/adminpost/restore','','文章还原','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('190','Portal','admin_url','portal/adminpost/clean','','彻底删除','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('191','Portal','admin_url','portal/adminpage/recyclebin','','页面回收','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('192','Portal','admin_url','portal/adminpage/clean','','彻底删除','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('193','Portal','admin_url','portal/adminpage/restore','','页面还原','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('194','Admin','admin_url','admin/extension/default','','扩展工具','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('195','Admin','admin_url','admin/backup/default','','备份管理','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('196','Admin','admin_url','admin/backup/restore','','数据还原','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('197','Admin','admin_url','admin/backup/index','','数据备份','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('198','Admin','admin_url','admin/backup/index_post','','提交数据备份','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('199','Admin','admin_url','admin/backup/download','','下载备份','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('200','Admin','admin_url','admin/backup/del_backup','','删除备份','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('201','Admin','admin_url','admin/backup/import','','数据备份导入','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('202','Admin','admin_url','admin/plugin/index','','插件管理','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('203','Admin','admin_url','admin/plugin/toggle','','插件启用切换','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('204','Admin','admin_url','admin/plugin/setting','','插件设置','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('205','Admin','admin_url','admin/plugin/setting_post','','插件设置提交','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('206','Admin','admin_url','admin/plugin/install','','插件安装','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('207','Admin','admin_url','admin/plugin/uninstall','','插件卸载','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('208','Admin','admin_url','admin/plugin/update','','插件更新','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('209','Admin','admin_url','admin/storage/index','','文件存储','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('210','Admin','admin_url','admin/storage/setting_post','','文件存储设置提交','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('211','Admin','admin_url','admin/slide/default','','幻灯片','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('212','Admin','admin_url','admin/slide/index','','幻灯片管理','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('213','Admin','admin_url','admin/slide/listorders','','幻灯片排序','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('214','Admin','admin_url','admin/slide/toggle','','幻灯片显示切换','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('215','Admin','admin_url','admin/slide/ban','','禁用幻灯片','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('216','Admin','admin_url','admin/slide/cancelban','','启用幻灯片','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('217','Admin','admin_url','admin/slide/delete','','删除幻灯片','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('218','Admin','admin_url','admin/slide/edit','','编辑幻灯片','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('219','Admin','admin_url','admin/slide/edit_post','','提交编辑','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('220','Admin','admin_url','admin/slide/add','','添加幻灯片','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('221','Admin','admin_url','admin/slide/add_post','','提交添加','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('222','Admin','admin_url','admin/slidecat/index','','幻灯片分类','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('223','Admin','admin_url','admin/slidecat/delete','','删除分类','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('224','Admin','admin_url','admin/slidecat/edit','','编辑分类','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('225','Admin','admin_url','admin/slidecat/edit_post','','提交编辑','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('226','Admin','admin_url','admin/slidecat/add','','添加分类','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('227','Admin','admin_url','admin/slidecat/add_post','','提交添加','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('228','Admin','admin_url','admin/ad/index','','网站广告','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('229','Admin','admin_url','admin/ad/toggle','','广告显示切换','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('230','Admin','admin_url','admin/ad/delete','','删除广告','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('231','Admin','admin_url','admin/ad/edit','','编辑广告','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('232','Admin','admin_url','admin/ad/edit_post','','提交编辑','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('233','Admin','admin_url','admin/ad/add','','添加广告','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('234','Admin','admin_url','admin/ad/add_post','','提交添加','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('235','Admin','admin_url','admin/link/index','','友情链接','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('236','Admin','admin_url','admin/link/listorders','','友情链接排序','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('237','Admin','admin_url','admin/link/toggle','','友链显示切换','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('238','Admin','admin_url','admin/link/delete','','删除友情链接','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('239','Admin','admin_url','admin/link/edit','','编辑友情链接','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('240','Admin','admin_url','admin/link/edit_post','','提交编辑','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('241','Admin','admin_url','admin/link/add','','添加友情链接','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('242','Admin','admin_url','admin/link/add_post','','提交添加','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('243','Api','admin_url','api/oauthadmin/setting','','第三方登陆','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('244','Api','admin_url','api/oauthadmin/setting_post','','提交设置','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('245','Admin','admin_url','admin/menu/default','','菜单管理','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('246','Admin','admin_url','admin/navcat/default1','','前台菜单','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('247','Admin','admin_url','admin/nav/index','','菜单管理','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('248','Admin','admin_url','admin/nav/listorders','','前台导航排序','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('249','Admin','admin_url','admin/nav/delete','','删除菜单','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('250','Admin','admin_url','admin/nav/edit','','编辑菜单','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('251','Admin','admin_url','admin/nav/edit_post','','提交编辑','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('252','Admin','admin_url','admin/nav/add','','添加菜单','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('253','Admin','admin_url','admin/nav/add_post','','提交添加','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('254','Admin','admin_url','admin/navcat/index','','菜单分类','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('255','Admin','admin_url','admin/navcat/delete','','删除分类','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('256','Admin','admin_url','admin/navcat/edit','','编辑分类','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('257','Admin','admin_url','admin/navcat/edit_post','','提交编辑','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('258','Admin','admin_url','admin/navcat/add','','添加分类','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('259','Admin','admin_url','admin/navcat/add_post','','提交添加','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('260','Admin','admin_url','admin/menu/index','','后台菜单','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('261','Admin','admin_url','admin/menu/add','','添加菜单','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('262','Admin','admin_url','admin/menu/add_post','','提交添加','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('263','Admin','admin_url','admin/menu/listorders','','后台菜单排序','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('264','Admin','admin_url','admin/menu/export_menu','','菜单备份','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('265','Admin','admin_url','admin/menu/edit','','编辑菜单','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('266','Admin','admin_url','admin/menu/edit_post','','提交编辑','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('267','Admin','admin_url','admin/menu/delete','','删除菜单','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('268','Admin','admin_url','admin/menu/lists','','所有菜单','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('269','Admin','admin_url','admin/setting/default','','设置','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('270','Admin','admin_url','admin/setting/userdefault','','个人信息','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('271','Admin','admin_url','admin/user/userinfo','','修改信息','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('272','Admin','admin_url','admin/user/userinfo_post','','修改信息提交','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('273','Admin','admin_url','admin/setting/password','','修改密码','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('274','Admin','admin_url','admin/setting/password_post','','提交修改','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('275','Admin','admin_url','admin/setting/site','','网站信息','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('276','Admin','admin_url','admin/setting/site_post','','提交修改','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('277','Admin','admin_url','admin/route/index','','路由列表','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('278','Admin','admin_url','admin/route/add','','路由添加','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('279','Admin','admin_url','admin/route/add_post','','路由添加提交','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('280','Admin','admin_url','admin/route/edit','','路由编辑','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('281','Admin','admin_url','admin/route/edit_post','','路由编辑提交','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('282','Admin','admin_url','admin/route/delete','','路由删除','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('283','Admin','admin_url','admin/route/ban','','路由禁止','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('284','Admin','admin_url','admin/route/open','','路由启用','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('285','Admin','admin_url','admin/route/listorders','','路由排序','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('286','Admin','admin_url','admin/mailer/default','','邮箱配置','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('287','Admin','admin_url','admin/mailer/index','','SMTP配置','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('288','Admin','admin_url','admin/mailer/index_post','','提交配置','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('289','Admin','admin_url','admin/mailer/active','','邮件模板','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('290','Admin','admin_url','admin/mailer/active_post','','提交模板','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('291','Admin','admin_url','admin/setting/clearcache','','清除缓存','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('292','User','admin_url','user/indexadmin/default','','用户管理','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('293','User','admin_url','user/indexadmin/default1','','用户组','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('294','User','admin_url','user/indexadmin/index','','本站用户','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('295','User','admin_url','user/indexadmin/ban','','拉黑会员','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('296','User','admin_url','user/indexadmin/cancelban','','启用会员','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('297','User','admin_url','user/oauthadmin/index','','第三方用户','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('298','User','admin_url','user/oauthadmin/delete','','第三方用户解绑','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('299','User','admin_url','user/indexadmin/default3','','管理组','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('300','Admin','admin_url','admin/rbac/index','','角色管理','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('301','Admin','admin_url','admin/rbac/member','','成员管理','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('302','Admin','admin_url','admin/rbac/authorize','','权限设置','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('303','Admin','admin_url','admin/rbac/authorize_post','','提交设置','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('304','Admin','admin_url','admin/rbac/roleedit','','编辑角色','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('305','Admin','admin_url','admin/rbac/roleedit_post','','提交编辑','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('306','Admin','admin_url','admin/rbac/roledelete','','删除角色','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('307','Admin','admin_url','admin/rbac/roleadd','','添加角色','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('308','Admin','admin_url','admin/rbac/roleadd_post','','提交添加','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('309','Admin','admin_url','admin/user/index','','管理员','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('310','Admin','admin_url','admin/user/ban','','禁用管理员','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('311','Admin','admin_url','admin/user/cancelban','','启用管理员','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('312','Admin','admin_url','admin/user/delete','','删除管理员','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('313','Admin','admin_url','admin/user/edit','','管理员编辑','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('314','Admin','admin_url','admin/user/edit_post','','编辑提交','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('315','Admin','admin_url','admin/user/add','','管理员添加','1','');
INSERT INTO sp_auth_rule ( `id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition` ) VALUES  ('316','Admin','admin_url','admin/user/add_post','','添加提交','1','');
DROP TABLE IF EXISTS `sp_comments`;
CREATE TABLE `sp_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_table` varchar(100) NOT NULL COMMENT '评论内容所在表，不带表前缀',
  `post_id` int(11) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL COMMENT '原文地址',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_uid` int(11) NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `full_name` varchar(50) DEFAULT NULL COMMENT '评论者昵称',
  `email` varchar(255) DEFAULT NULL COMMENT '评论者邮箱',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `content` text NOT NULL COMMENT '评论内容',
  `type` smallint(1) NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `parentid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `path` varchar(500) DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '1' COMMENT '状态，1已审核，0未审核',
  PRIMARY KEY (`id`),
  KEY `comment_post_ID` (`post_id`),
  KEY `comment_approved_date_gmt` (`status`),
  KEY `comment_parent` (`parentid`),
  KEY `table_id_status` (`post_table`,`post_id`,`status`),
  KEY `createtime` (`createtime`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_common_action_log`;
CREATE TABLE `sp_common_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` bigint(20) DEFAULT '0' COMMENT '用户id',
  `object` varchar(100) DEFAULT NULL COMMENT '访问对象的id,格式：不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) DEFAULT NULL COMMENT '操作名称；格式规定为：应用名+控制器+操作名；也可自己定义格式只要不发生冲突且惟一；',
  `count` int(11) DEFAULT '0' COMMENT '访问次数',
  `last_time` int(11) DEFAULT '0' COMMENT '最后访问的时间戳',
  `ip` varchar(15) DEFAULT NULL COMMENT '访问者最后访问ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user`,`object`,`action`),
  KEY `user_object_action_ip` (`user`,`object`,`action`,`ip`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('1','0','posts1','Portal-Article-index','3','1421563806','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('2','0','posts2','Portal-Article-index','4','1423466122','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('3','0','posts4','Portal-Article-index','14','1431437701','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('4','0','posts5','Portal-Article-index','5','1431449100','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('5','0','posts14','Portal-Article-index','1','1423991554','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('6','0','posts15','Portal-Article-index','2','1424006260','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('7','0','posts17','Portal-Article-index','43','1438446488','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('8','0','posts18','Portal-Article-index','7','1433690593','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('9','0','posts19','Portal-Article-index','6','1433690595','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('10','0','posts20','Portal-Article-index','32','1433690561','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('11','0','posts23','Portal-Article-index','26','1438446485','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('12','0','posts24','Portal-Article-index','37','1438637374','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('13','0','posts26','Portal-Article-index','20','1438255116','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('14','0','posts30','Portal-Article-index','2','1438616585','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('15','0','posts29','Portal-Article-index','5','1438280473','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('16','0','posts31','Portal-Article-index','1','1438447232','0.0.0.0');
INSERT INTO sp_common_action_log ( `id`, `user`, `object`, `action`, `count`, `last_time`, `ip` ) VALUES  ('17','0','posts','Portal-Article-index','2','1438627567','0.0.0.0');
DROP TABLE IF EXISTS `sp_guestbook`;
CREATE TABLE `sp_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) NOT NULL COMMENT '留言者姓名',
  `email` varchar(100) NOT NULL COMMENT '留言者邮箱',
  `title` varchar(255) DEFAULT NULL COMMENT '留言标题',
  `msg` text NOT NULL COMMENT '留言内容',
  `createtime` datetime NOT NULL,
  `status` smallint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_guestbook ( `id`, `full_name`, `email`, `title`, `msg`, `createtime`, `status` ) VALUES  ('1','shenshuo','350988801@qq.com','','hello','2015-05-09 02:07:49','1');
DROP TABLE IF EXISTS `sp_links`;
CREATE TABLE `sp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL COMMENT '友情链接地址',
  `link_name` varchar(255) NOT NULL COMMENT '友情链接名称',
  `link_image` varchar(255) DEFAULT NULL COMMENT '友情链接图标',
  `link_target` varchar(25) NOT NULL DEFAULT '_blank' COMMENT '友情链接打开方式',
  `link_description` text NOT NULL COMMENT '友情链接描述',
  `link_status` int(2) NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `link_rel` varchar(255) DEFAULT '',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_status`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_links ( `link_id`, `link_url`, `link_name`, `link_image`, `link_target`, `link_description`, `link_status`, `link_rating`, `link_rel`, `listorder` ) VALUES  ('1','http://www.senmiaosw.com/','森淼商务网','','_blank','','1','0','','0');
DROP TABLE IF EXISTS `sp_menu`;
CREATE TABLE `sp_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `app` char(20) NOT NULL COMMENT '应用名称app',
  `model` char(20) NOT NULL COMMENT '控制器',
  `action` char(20) NOT NULL COMMENT '操作名称',
  `data` char(50) NOT NULL COMMENT '额外参数',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '菜单类型  1：权限认证+菜单；0：只作为菜单',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态，1显示，0不显示',
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parentid`),
  KEY `model` (`model`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('239','0','Admin','Setting','default','','0','1','设置','cogs','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('51','0','Admin','Content','default','','0','1','内容管理','th','','30');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('245','51','Portal','AdminTerm','index','','0','1','分类管理','','','2');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('299','260','Api','Oauthadmin','setting','','1','1','第三方登陆','leaf','','4');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('252','239','Admin','Setting','userdefault','','0','1','个人信息','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('253','252','Admin','User','userinfo','','1','1','修改信息','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('254','252','Admin','Setting','password','','1','1','修改密码','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('260','0','Admin','Extension','default','','0','1','扩展工具','cloud','','40');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('262','260','Admin','Slide','default','','1','1','幻灯片','','','1');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('264','262','Admin','Slide','index','','1','1','幻灯片管理','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('265','260','Admin','Ad','index','','1','1','网站广告','','','2');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('268','262','Admin','Slidecat','index','','1','1','幻灯片分类','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('270','260','Admin','Link','index','','0','1','友情链接','','','3');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('277','51','Portal','AdminPage','index','','1','1','页面管理','','','3');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('301','300','Portal','AdminPage','recyclebin','','1','1','页面回收','','','1');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('302','300','Portal','AdminPost','recyclebin','','1','1','文章回收','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('300','51','Admin','Recycle','default','','1','1','回收站','','','4');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('284','239','Admin','Setting','site','','1','1','网站信息','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('285','51','Portal','AdminPost','index','','1','1','文章管理','','','1');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('286','0','User','Indexadmin','default','','1','1','用户管理','group','','10');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('287','289','User','Indexadmin','index','','1','0','本站用户','leaf','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('288','289','User','Oauthadmin','index','','1','1','第三方用户','leaf','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('289','286','User','Indexadmin','default1','','1','0','用户组','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('290','286','User','Indexadmin','default3','','1','1','管理组','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('291','290','Admin','Rbac','index','','1','1','角色管理','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('292','290','Admin','User','index','','1','1','管理员','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('293','0','Admin','Menu','default','','1','1','菜单管理','list','','20');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('294','293','Admin','Navcat','default1','','1','1','前台菜单','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('295','294','Admin','Nav','index','','1','1','菜单管理','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('296','294','Admin','Navcat','index','','1','1','菜单分类','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('297','293','Admin','Menu','index','','1','1','后台菜单','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('298','239','Admin','Setting','clearcache','','1','1','清除缓存','','','1');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('319','260','Admin','Backup','default','','1','1','备份管理','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('480','292','Admin','User','delete','','1','0','删除管理员','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('479','292','Admin','User','edit','','1','1','管理员编辑','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('478','292','Admin','User','add','','1','0','管理员添加','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('477','245','Portal','AdminTerm','delete','','1','0','删除分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('476','245','Portal','AdminTerm','edit','','1','0','编辑分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('475','245','Portal','AdminTerm','add','','1','0','添加分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('474','268','Admin','Slidecat','delete','','1','0','删除分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('473','268','Admin','Slidecat','edit','','1','0','编辑分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('472','268','Admin','Slidecat','add','','1','0','添加分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('471','264','Admin','Slide','delete','','1','0','删除幻灯片','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('470','264','Admin','Slide','edit','','1','0','编辑幻灯片','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('469','264','Admin','Slide','add','','1','0','添加幻灯片','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('467','291','Admin','Rbac','member','','1','0','成员管理','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('465','291','Admin','Rbac','authorize','','1','0','权限设置','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('464','291','Admin','Rbac','roleedit','','1','0','编辑角色','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('463','291','Admin','Rbac','roledelete','','1','1','删除角色','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('462','291','Admin','Rbac','roleadd','','1','1','添加角色','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('458','302','Portal','AdminPost','restore','','1','0','文章还原','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('457','302','Portal','AdminPost','clean','','1','0','彻底删除','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('456','285','Portal','AdminPost','move','','1','0','批量移动','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('455','285','Portal','AdminPost','check','','1','0','文章审核','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('454','285','Portal','AdminPost','delete','','1','0','删除文章','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('452','285','Portal','AdminPost','edit','','1','0','编辑文章','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('451','285','Portal','AdminPost','add','','1','0','添加文章','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('450','301','Portal','AdminPage','clean','','1','0','彻底删除','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('449','301','Portal','AdminPage','restore','','1','0','页面还原','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('448','277','Portal','AdminPage','delete','','1','0','删除页面','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('446','277','Portal','AdminPage','edit','','1','0','编辑页面','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('445','277','Portal','AdminPage','add','','1','0','添加页面','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('444','296','Admin','Navcat','delete','','1','0','删除分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('443','296','Admin','Navcat','edit','','1','0','编辑分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('442','296','Admin','Navcat','add','','1','0','添加分类','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('441','295','Admin','Nav','delete','','1','0','删除菜单','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('440','295','Admin','Nav','edit','','1','0','编辑菜单','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('439','295','Admin','Nav','add','','1','0','添加菜单','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('436','297','Admin','Menu','export_menu','','1','0','菜单备份','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('434','297','Admin','Menu','edit','','1','0','编辑菜单','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('433','297','Admin','Menu','delete','','1','0','删除菜单','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('432','297','Admin','Menu','lists','','1','0','所有菜单','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('430','270','Admin','Link','delete','','1','0','删除友情链接','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('429','270','Admin','Link','edit','','1','0','编辑友情链接','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('428','270','Admin','Link','add','','1','0','添加友情链接','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('424','319','Admin','Backup','download','','1','0','下载备份','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('423','319','Admin','Backup','del_backup','','1','0','删除备份','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('422','319','Admin','Backup','import','','1','0','数据备份导入','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('421','319','Admin','Backup','restore','','1','1','数据还原','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('420','265','Admin','Ad','delete','','1','0','删除广告','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('419','265','Admin','Ad','edit','','1','0','编辑广告','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('418','265','Admin','Ad','add','','1','0','添加广告','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('496','319','Admin','Backup','index','','1','1','数据备份','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('497','418','Admin','Ad','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('498','419','Admin','Ad','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('499','428','Admin','Link','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('500','429','Admin','Link','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('501','536','Admin','Menu','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('502','434','Admin','Menu','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('503','439','Admin','Nav','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('504','440','Admin','Nav','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('505','442','Admin','Navcat','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('506','443','Admin','Navcat','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('507','445','Portal','AdminPage','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('508','446','Portal','AdminPage','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('509','451','Portal','AdminPost','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('510','452','Portal','AdminPost','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('511','462','Admin','Rbac','roleadd_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('512','464','Admin','Rbac','roleedit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('513','465','Admin','Rbac','authorize_post','','1','0','提交设置','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('514','284','Admin','Setting','site_post','','1','0','提交修改','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('515','254','Admin','Setting','password_post','','1','0','提交修改','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('516','469','Admin','Slide','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('517','470','Admin','Slide','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('518','472','Admin','Slidecat','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('519','473','Admin','Slidecat','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('520','475','Portal','AdminTerm','add_post','','1','0','提交添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('521','476','Portal','AdminTerm','edit_post','','1','0','提交编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('522','478','Admin','User','add_post','','1','0','添加提交','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('523','479','Admin','User','edit_post','','1','0','编辑提交','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('524','253','Admin','User','userinfo_post','','1','0','修改信息提交','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('525','299','Api','Oauthadmin','setting_post','','1','0','提交设置','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('526','533','Admin','Mailer','index','','1','1','SMTP配置','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('527','526','Admin','Mailer','index_post','','1','0','提交配置','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('528','533','Admin','Mailer','active','','1','1','邮件模板','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('529','528','Admin','Mailer','active_post','','1','0','提交模板','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('533','239','Admin','Mailer','default','','1','1','邮箱配置','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('536','297','Admin','Menu','add','','1','0','添加菜单','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('546','496','Admin','Backup','index_post','','1','0','提交数据备份','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('547','270','Admin','Link','listorders','','1','0','友情链接排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('548','297','Admin','Menu','listorders','','1','0','后台菜单排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('549','295','Admin','Nav','listorders','','1','0','前台导航排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('550','277','Portal','AdminPage','listorders','','1','0','页面排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('551','285','Portal','AdminPost','listorders','','1','0','文章排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('552','264','Admin','Slide','listorders','','1','0','幻灯片排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('553','245','Portal','AdminTerm','listorders','','1','0','文章分类排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('554','51','Api','Guestbookadmin','index','','1','1','所有留言','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('555','554','Api','Guestbookadmin','delete','','1','0','删除网站留言','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('557','51','Comment','Commentadmin','index','','1','0','评论管理','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('559','557','Comment','Commentadmin','delete','','1','0','删除评论','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('560','557','Comment','Commentadmin','check','','1','0','评论审核','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('561','287','User','Indexadmin','ban','','1','0','拉黑会员','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('562','287','User','Indexadmin','cancelban','','1','0','启用会员','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('563','288','User','Oauthadmin','delete','','1','0','第三方用户解绑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('564','284','Admin','Route','index','','1','0','路由列表','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('565','284','Admin','Route','add','','1','0','路由添加','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('566','565','Admin','Route','add_post','','1','0','路由添加提交','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('567','284','Admin','Route','edit','','1','0','路由编辑','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('568','567','Admin','Route','edit_post','','1','0','路由编辑提交','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('569','284','Admin','Route','delete','','1','0','路由删除','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('572','284','Admin','Route','ban','','1','0','路由禁止','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('573','284','Admin','Route','open','','1','0','路由启用','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('574','284','Admin','Route','listorders','','1','0','路由排序','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('575','285','Portal','AdminPost','top','','1','0','文章置顶','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('576','285','Portal','AdminPost','recommend','','1','0','文章推荐','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('577','260','Admin','Plugin','index','','1','1','插件管理','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('578','577','Admin','Plugin','toggle','','1','0','插件启用切换','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('579','577','Admin','Plugin','setting','','1','0','插件设置','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('580','579','Admin','Plugin','setting_post','','1','0','插件设置提交','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('581','577','Admin','Plugin','install','','1','0','插件安装','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('582','577','Admin','Plugin','uninstall','','1','0','插件卸载','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('583','577','Admin','Plugin','update','','1','0','插件更新','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('584','260','Admin','Storage','index','','1','1','文件存储','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('585','584','Admin','Storage','setting_post','','1','0','文件存储设置提交','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('586','264','Admin','Slide','toggle','','1','0','幻灯片显示切换','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('587','264','Admin','Slide','ban','','1','0','禁用幻灯片','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('588','264','Admin','Slide','cancelban','','1','0','启用幻灯片','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('589','265','Admin','Ad','toggle','','1','0','广告显示切换','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('590','270','Admin','Link','toggle','','1','0','友链显示切换','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('591','292','Admin','User','ban','','1','0','禁用管理员','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('592','292','Admin','User','cancelban','','1','0','启用管理员','','','0');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('482','288','Api','Oauthadmin','delete','','1','0','删除第三方用户','','','1000');
INSERT INTO sp_menu ( `id`, `parentid`, `app`, `model`, `action`, `data`, `type`, `status`, `name`, `icon`, `remark`, `listorder` ) VALUES  ('483','287','Member','Indexadmin','delete','','1','0','删除用户','','','1000');
DROP TABLE IF EXISTS `sp_nav`;
CREATE TABLE `sp_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `target` varchar(50) DEFAULT NULL,
  `href` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `listorder` int(6) DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('1','1','0','首页','','home','','1','0','0-1');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('2','1','0','集团介绍','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"1\";}}','','1','0','0-2');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('3','1','0','园林景观','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"2\";}}','','1','2','0-3');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('4','1','0','生态旅游','','home','','1','2','0-4');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('5','1','0','绿色饮食','','home','','1','2','0-5');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('6','1','0','种业苗木','','home','','1','2','0-6');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('7','1','0','招贤纳士','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"41\";}}','','1','2','0-7');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('8','1','2','集团简介','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"33\";}}','','1','11','0-2-8');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('9','1','2','发展历程','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"35\";}}','','1','12','0-2-9');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('41','6','0','企业领导','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"36\";}}','','1','3','0-41');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('11','1','2','企业领导','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"36\";}}','','1','14','0-2-11');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('12','1','0','联系我们','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"3\";}}','','1','2','0-12');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('13','1','0','新闻中心','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"1\";}}','','1','1','0-13');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('14','1','3','产业介绍','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"21\";}}','','1','0','0-3-14');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('15','1','3','景观资质','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"28\";}}','','1','0','0-3-15');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('16','1','3','施工案例','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"3\";}}','','1','0','0-3-16');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('17','1','3','设计案例','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"2\";}}','','1','0','0-3-17');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('18','2','0','施工案例','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"3\";}}','','1','4','0-18');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('19','2','0','设计案例','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"2\";}}','','1','3','0-19');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('20','2','0','产业简介','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"21\";}}','','1','1','0-20');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('21','2','0','资质证书','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"28\";}}','','1','2','0-21');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('22','1','6',' 产业简介','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"22\";}}','','1','0','0-6-22');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('23','1','6','研发平台','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"25\";}}','','1','0','0-6-23');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('24','1','6','产业布局','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"43\";}}','','1','1','0-6-24');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('25','1','6','产品展示','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"4\";}}','','1','0','0-6-25');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('26','3','0','产业简介','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"22\";}}','','1','0','0-26');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('31','3','0','产品展示','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"4\";}}','','1','0','0-31');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('30','3','0','研发平台','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"25\";}}','','1','0','0-30');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('29','3','0','产业布局','','home','','1','0','0-29');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('32','1','5','森淼天精菜','','home','','1','0','0-5-32');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('33','1','5','森淼红运果','','home','','1','0','0-5-33');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('34','1','5','森淼蓝月谷','','on','','1','0','0-5-34');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('35','1','2','企业文化','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"34\";}}','','1','13','0-2-35');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('51','6','0','大事纪要','','home','','1','5','0-51');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('37','1','2','企业荣誉','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"42\";}}','','1','15','0-2-37');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('38','6','0','集团简介','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"33\";}}','','1','0','0-38');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('39','6','0','发展历程','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"35\";}}','','1','2','0-39');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('40','6','0','企业文化','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"34\";}}','','1','1','0-40');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('42','1','4','景区简介','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"37\";}}','','1','0','0-4-42');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('43','1','4','照片墙','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"38\";}}','','1','0','0-4-43');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('44','1','4','视频展示','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"39\";}}','','1','0','0-4-44');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('45','1','4','旅游路线','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"40\";}}','','1','0','0-4-45');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('48','4','0','图片墙','','home','','1','2','0-48');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('47','4','0','景区简介','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"37\";}}','','1','1','0-47');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('49','4','0','视频展示','','home','','1','3','0-49');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('50','4','0','旅游路线','','home','','1','4','0-50');
INSERT INTO sp_nav ( `id`, `cid`, `parentid`, `label`, `target`, `href`, `icon`, `status`, `listorder`, `path` ) VALUES  ('52','6','0','企业荣誉','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"42\";}}','','1','6','0-52');
DROP TABLE IF EXISTS `sp_nav_cat`;
CREATE TABLE `sp_nav_cat` (
  `navcid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `remark` text,
  PRIMARY KEY (`navcid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_nav_cat ( `navcid`, `name`, `active`, `remark` ) VALUES  ('1','主导航','1','主导航');
INSERT INTO sp_nav_cat ( `navcid`, `name`, `active`, `remark` ) VALUES  ('2','景观菜单','0','园林景观项目菜单');
INSERT INTO sp_nav_cat ( `navcid`, `name`, `active`, `remark` ) VALUES  ('3','种业菜单','0','种业项目菜单');
INSERT INTO sp_nav_cat ( `navcid`, `name`, `active`, `remark` ) VALUES  ('4','生态旅游菜单','0','生态旅游项目菜单');
INSERT INTO sp_nav_cat ( `navcid`, `name`, `active`, `remark` ) VALUES  ('5','绿色饮食菜单','0','绿色饮食项目菜单');
INSERT INTO sp_nav_cat ( `navcid`, `name`, `active`, `remark` ) VALUES  ('6','集团简介','0','集团介绍菜单');
DROP TABLE IF EXISTS `sp_oauth_user`;
CREATE TABLE `sp_oauth_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `from` varchar(20) NOT NULL COMMENT '用户来源key',
  `name` varchar(30) NOT NULL COMMENT '第三方昵称',
  `head_img` varchar(200) NOT NULL COMMENT '头像',
  `uid` int(20) NOT NULL COMMENT '关联的本站用户id',
  `create_time` datetime NOT NULL COMMENT '绑定时间',
  `last_login_time` datetime NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(16) NOT NULL COMMENT '最后登录ip',
  `login_times` int(6) NOT NULL COMMENT '登录次数',
  `status` tinyint(2) NOT NULL,
  `access_token` varchar(60) NOT NULL,
  `expires_date` int(12) NOT NULL COMMENT 'access_token过期时间',
  `openid` varchar(40) NOT NULL COMMENT '第三方用户id',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_options`;
CREATE TABLE `sp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_options ( `option_id`, `option_name`, `option_value`, `autoload` ) VALUES  ('1','member_email_active','{\"title\":\"ThinkCMF\\u90ae\\u4ef6\\u6fc0\\u6d3b\\u901a\\u77e5.\",\"template\":\"<p>\\u672c\\u90ae\\u4ef6\\u6765\\u81ea<a href=\\\"http:\\/\\/www.thinkcmf.com\\\">ThinkCMF<\\/a><br\\/><br\\/>&nbsp; &nbsp;<strong>---------------<\\/strong><br\\/>&nbsp; &nbsp;<strong>\\u5e10\\u53f7\\u6fc0\\u6d3b\\u8bf4\\u660e<\\/strong><br\\/>&nbsp; &nbsp;<strong>---------------<\\/strong><br\\/><br\\/>&nbsp; &nbsp; \\u5c0a\\u656c\\u7684<span style=\\\"FONT-SIZE: 16px; FONT-FAMILY: Arial; COLOR: rgb(51,51,51); LINE-HEIGHT: 18px; BACKGROUND-COLOR: rgb(255,255,255)\\\">#username#\\uff0c\\u60a8\\u597d\\u3002<\\/span>\\u5982\\u679c\\u60a8\\u662fThinkCMF\\u7684\\u65b0\\u7528\\u6237\\uff0c\\u6216\\u5728\\u4fee\\u6539\\u60a8\\u7684\\u6ce8\\u518cEmail\\u65f6\\u4f7f\\u7528\\u4e86\\u672c\\u5730\\u5740\\uff0c\\u6211\\u4eec\\u9700\\u8981\\u5bf9\\u60a8\\u7684\\u5730\\u5740\\u6709\\u6548\\u6027\\u8fdb\\u884c\\u9a8c\\u8bc1\\u4ee5\\u907f\\u514d\\u5783\\u573e\\u90ae\\u4ef6\\u6216\\u5730\\u5740\\u88ab\\u6ee5\\u7528\\u3002<br\\/>&nbsp; &nbsp; \\u60a8\\u53ea\\u9700\\u70b9\\u51fb\\u4e0b\\u9762\\u7684\\u94fe\\u63a5\\u5373\\u53ef\\u6fc0\\u6d3b\\u60a8\\u7684\\u5e10\\u53f7\\uff1a<br\\/>&nbsp; &nbsp; <a title=\\\"\\\" href=\\\"http:\\/\\/#link#\\\" target=\\\"_self\\\">http:\\/\\/#link#<\\/a><br\\/>&nbsp; &nbsp; (\\u5982\\u679c\\u4e0a\\u9762\\u4e0d\\u662f\\u94fe\\u63a5\\u5f62\\u5f0f\\uff0c\\u8bf7\\u5c06\\u8be5\\u5730\\u5740\\u624b\\u5de5\\u7c98\\u8d34\\u5230\\u6d4f\\u89c8\\u5668\\u5730\\u5740\\u680f\\u518d\\u8bbf\\u95ee)<br\\/>&nbsp; &nbsp; \\u611f\\u8c22\\u60a8\\u7684\\u8bbf\\u95ee\\uff0c\\u795d\\u60a8\\u4f7f\\u7528\\u6109\\u5feb\\uff01<br\\/><br\\/>&nbsp; &nbsp; \\u6b64\\u81f4<br\\/>&nbsp; &nbsp; ThinkCMF \\u7ba1\\u7406\\u56e2\\u961f.<\\/p>\"}','1');
INSERT INTO sp_options ( `option_id`, `option_name`, `option_value`, `autoload` ) VALUES  ('2','site_options','{\"site_name\":\"\\u68ee\\u6dfc\\u96c6\\u56e2\",\"site_host\":\"http:\\/\\/localhost\\/senmiao\\/\",\"site_tpl\":\"s_tpl\",\"site_adminstyle\":\"bluesky\",\"site_icp\":\"\\u65e0\",\"site_admin_email\":\"350988801@qq.com\",\"site_tongji\":\"\",\"site_copyright\":\"\\u68ee\\u6dfc\\u96c6\\u56e2\",\"site_seo_title\":\"\\u7eff\\u8272\\u5065\\u5eb7\\u65b0\\u751f\\u6d3b\",\"site_seo_keywords\":\"\\u68ee\\u6dfc \\u68ee\\u6dfc\\u96c6\\u56e2\",\"site_seo_description\":\"\\u68ee\\u6dfc\\u96c6\\u56e2\\u516c\\u53f8\\u5b98\\u7f51\\u540e\\u53f0\",\"urlmode\":\"1\",\"html_suffix\":\"\",\"comment_time_interval\":60}','1');
INSERT INTO sp_options ( `option_id`, `option_name`, `option_value`, `autoload` ) VALUES  ('3','cmf_settings','{\"banned_usernames\":\"\"}','1');
DROP TABLE IF EXISTS `sp_plugins`;
CREATE TABLE `sp_plugins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(50) NOT NULL COMMENT '插件名，英文',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '插件名称',
  `description` text COMMENT '插件描述',
  `type` tinyint(2) DEFAULT '0' COMMENT '插件类型, 1:网站；8;微信',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态；1开启；',
  `config` text COMMENT '插件配置',
  `hooks` varchar(255) DEFAULT NULL COMMENT '实现的钩子;以“，”分隔',
  `has_admin` tinyint(2) DEFAULT '0' COMMENT '插件是否有后台管理界面',
  `author` varchar(50) DEFAULT '' COMMENT '插件作者',
  `version` varchar(20) DEFAULT '' COMMENT '插件版本号',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `listorder` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_posts`;
CREATE TABLE `sp_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned DEFAULT '0' COMMENT '发表者id',
  `post_keywords` varchar(150) NOT NULL COMMENT 'seo keywords',
  `post_date` datetime DEFAULT '0000-00-00 00:00:00' COMMENT 'post创建日期，永久不变，一般不显示给用户',
  `post_content` longtext COMMENT 'post内容',
  `post_title` text COMMENT 'post标题',
  `post_excerpt` text COMMENT 'post摘要',
  `post_status` int(2) DEFAULT '1' COMMENT 'post状态，1已审核，0未审核',
  `comment_status` int(2) DEFAULT '1' COMMENT '评论状态，1允许，0不允许',
  `post_modified` datetime DEFAULT '0000-00-00 00:00:00' COMMENT 'post更新时间，可在前台修改，显示给用户',
  `post_content_filtered` longtext,
  `post_parent` bigint(20) unsigned DEFAULT '0' COMMENT 'post的父级post id,表示post层级关系',
  `post_type` int(2) DEFAULT NULL,
  `post_mime_type` varchar(100) DEFAULT '',
  `comment_count` bigint(20) DEFAULT '0',
  `smeta` text COMMENT 'post的扩展字段，保存相关扩展属性，如缩略图；格式为json',
  `post_hits` int(11) DEFAULT '0' COMMENT 'post点击数，查看数',
  `post_like` int(11) DEFAULT '0' COMMENT 'post赞数',
  `istop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '置顶 1置顶； 0不置顶',
  `recommended` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐 1推荐 0不推荐',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`id`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_date` (`post_date`) USING BTREE
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('21','1','景观简介','2015-05-12 22:15:43','<p style=\"text-align: justify;\"><span style=\"color: rgb(72, 70, 60); font-family: Simsun, sans-serif; font-size: 12px; line-height: 24px;\">&nbsp; </span><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; color: rgb(72, 70, 60); font-size: 18px; line-height: 24px;\">集团公司下设宁夏森淼景观规划设计院有限公司和宁夏森淼园林景观绿化工程有限公司。拥有市政风景园林设计甲级资质、园林绿化施工一级资质、地质灾害环境治理工程设计乙级资质、建筑行业丙级资质、测绘资质。公司主要从事园林景观工程总体规划设计与施工，园林方案、施工图制作、效果图制作、灌溉、灯光、雕塑、假山、喷泉、叠水等园林小品的景观规划设计与施工，企业形象及企业文化宣传设计，设计跟踪、现场指导、林业技术咨询等技术服务，园林建筑工程规划设计。出版了《宁夏平原地区城市园林绿化关键技术与规程》等技术研究专著。编写了《平原城镇园林绿化种植工程技术规程》、《平原城镇绿地植物景观种植设计规程》两部地方标准。</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(72, 70, 60); font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 18px; line-height: 24px;\">&nbsp; 通过竞标承揽绿化工程设计与施工项目200余项，累计造价4亿元。内容涉及：公园、广场、学校、酒店、厂区、旅游区、住宅区、办公区及绿化带等各种类型的景观规划设计与绿化工程。具备大规格苗木全冠移栽成活率98%以上的技术实力。</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(72, 70, 60); font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 18px; line-height: 24px;\">&nbsp; 宁夏沙湖假日酒店景观工程、灵武市世界枣博园园林工程荣获“第六届中国人居典范建筑规划设计方案金奖”，宁夏财政厅干部培训中心别墅区绿地景观工程荣获“宁夏回族自治区二〇〇五年度优秀工程勘察设计三等奖”，宁夏迎宾馆园林景观工程荣获“宁夏回族自治区二〇〇八年度优秀工程勘察设计奖、2011年度中国风景园林学会“优秀园林绿化工程奖”银奖。”。</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(72, 70, 60); font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 18px; line-height: 24px;\">&nbsp;我们本着“设计是一门艺术，创新是一种理念”，坚持把“美丽写在大地上”的宗旨，树立了园林施工是园林艺术的再创造和合同就是标准的理念，对每一个项目始终遵循“高起点规划，高水平设计、高质量施工、高标准管理”的 原则，顺应城市化发展趋势，重信誉、树形象、精雕细琢，锻造精品，获得了社会各界的认可和赞誉。</span></p>','景观简介','','1','1','2015-05-12 22:15:10','','0','2','','0','{\"thumb\":\"\",\"template\":\"jingguan_page\"}','0','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('3','1','森淼集团 联系方式','2015-02-15 12:25:58','','联系我们','','1','1','2015-02-15 12:25:37','','0','2','','0','{\"thumb\":\"\",\"template\":\"contact1\"}','0','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('17','1','公示','2015-04-19 20:13:24','<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style-type: none; font-size: 12px; font-family: Simsun, sans-serif; line-height: 19.2000007629395px; white-space: normal; text-align: left;\"><span style=\"font-size: 16px;\"><span style=\"text-indent: 32px; line-height: 24px; font-family: Verdana, sans-serif;\"></span></span></p><p><br/></p><p><br/></p><p><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style-type: none; font-size: 12px; font-family: Simsun, sans-serif; line-height: 19.2000007629395px; white-space: normal; text-align: left;\"><span style=\"font-size: 16px;\"><span style=\"text-indent: 32px; line-height: 24px; font-family: Verdana, sans-serif;\"></span></span><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-family: 仿宋_GB2312;font-size: 16px;line-height: 24px\">经过漫长冬季的等待</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 仿宋_GB2312\">郁金香竞相开放</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 仿宋_GB2312\">经过十几年的等待</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 仿宋_GB2312\">森淼生态旅游区终于开放</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 仿宋_GB2312\">&nbsp;</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 仿宋_GB2312\">我在春天等着你，已经等了很久</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 仿宋_GB2312\">2015</span><span style=\"font-size: 16px;line-height: 24px;font-family: 仿宋_GB2312\">年5月1日，对森淼生态旅游区来说意义非凡</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 仿宋_GB2312\">这一天，我们迎来了入园游客突破四万的历史新高</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 仿宋_GB2312\">这一天，我们迎来了属于森淼生态旅游区的春天</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 仿宋_GB2312\">&nbsp;</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 仿宋_GB2312\">这是一个值得纪念的历史性时刻</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 仿宋_GB2312\">森淼发力</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 仿宋_GB2312\">游客给力</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 仿宋_GB2312\">森淼生态旅游区一鸣惊人</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 仿宋_GB2312\">我们的品牌知名度再次升温</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 仿宋_GB2312\">它将带来的是春天的希望、生机与信心</span></p><p style=\";padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;text-align: justify;line-height: 18px\"><span style=\"font-family: 楷体;color: rgb(85, 85, 85)\">&nbsp;</span></p><p style=\";padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;text-align: justify;text-indent: 32px;line-height: 18px\"><span style=\"font-size: large\">今年的五一小长假，可谓是别样精彩。我们一改往日高速路上的拥堵，来到宁夏森淼生态旅游区，在花海中荡漾，在美食中回味。5月1日—3日，“我在春天等着你”宁夏森淼生态旅游区首届郁金香节暨回味宁夏美食节盛大启幕，6万余名银川市民及周边地区居民齐聚森淼生态旅游区，在这里感受假期的悠闲与惬意、尽享花海与美食的极致生活乐趣。</span></p><p style=\";padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;text-align: justify;text-indent: 32px;line-height: 18px\"><span style=\"font-size: large\">5月1日，宁夏森淼生态旅游区花团锦簇，彩旗飘扬，洋溢着一片欢乐祥和的节日气氛。上午10时，活动现场已是人山人海，游园的人们神清气爽，兴致盎然，翠色欲滴、花团锦簇的美景更是让游客垂涎。园区内，四千亩繁茂植被打造的绿色奇迹，置身其中犹如走进绿色植物博物馆，感受天然氧吧带给我们的小清新。花海中，有黄、红、粉、蓝、白、紫等各色郁金香竞相开放，更有杯形、碗形、卵形、钟形等奇花异卉争奇斗艳，五彩缤纷的视觉体验犹如油画般美妙绝伦，让每一位游客在花海中身心荡漾。</span></p><p style=\";padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;text-align: justify;text-indent: 32px;line-height: 18px\"><span style=\"font-size: large\">为期三天的活动中，园区内不仅向游客提供了天然有机的生态采摘，休闲垂钓和特色烧烤，而且还有侏罗纪恐龙园的神秘之旅，惊险刺激的真人CS，更有各类宁夏风味美食小吃和精彩纷呈的互动游戏。游客们纷纷表示，此次活动不仅让自己回归自然，放松了身心，结识了好友，更收获了满满的快乐。</span></p><p style=\";padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;text-align: justify;text-indent: 32px;line-height: 18px\"><span style=\"font-size: large\">宁夏森淼生态旅游区始终倡导“生态、绿色、环保、养生”的理念将园区打造成为银川旅游新地标，本次活动以丰富多彩的互动活动为游客创造惊喜惬意的生活，初步实现了园区近郊休闲度假的最佳选择之一的愿景，同时，也开启</span><span style=\"font-size: large\">了家庭式旅游的新篇章。像这样意义非凡的活动森淼生态旅游区将会长期举办,继续为广大游客提供更舒心、更安心、更贴心的旅游服务。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style-type: none; font-size: 12px; font-family: Simsun, sans-serif; line-height: 19.2000007629395px; white-space: normal; text-align: left;\"><span style=\"font-size: 16px; line-height: 24px; font-family: 宋体;\"></span><br/></p><p><img src=\"http://localhost/senmiao/data/upload/ueditor/20150613/557c3033448e6.JPG\" style=\"\" title=\"1-我在春天等着你3.JPG\"/></p><p><img src=\"http://localhost/senmiao/data/upload/ueditor/20150613/557c30334d0a4.JPG\" style=\"\" title=\"1-我在春天等着你.JPG\"/></p><p><img src=\"http://localhost/senmiao/data/upload/ueditor/20150613/557c303352703.JPG\" style=\"\" title=\"1-我在春天等着你4.JPG\"/></p><p><br/></p>','我在春天等着你-宁夏森淼生态旅游区首届郁金香节暨回味宁夏美食节盛大启幕','宁夏森淼生态旅游区首届郁金香节暨回味宁夏美食节盛大启幕','1','1','2015-04-19 20:13:19','','0','0','','0','{\"thumb\":\"55747623e50de.JPG\"}','1','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('22','1','种业简介','2015-05-13 01:26:37','<p><span style=\"color: rgb(72, 70, 60); font-family: Simsun, sans-serif; font-size: 12px; line-height: 24px;\">&nbsp; <span style=\"color: rgb(72, 70, 60); font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px; line-height: 24px;\">森淼种业隶属于森淼集团，由三个子公司、八大生产基地和一个大型苗木超市构成。以节水耐旱园林观赏植物为主营业务，已经开发出彩叶、观果、观花、观枝与常绿五大系列园林绿化优良品种，同时开展工厂化育苗技术、设备的推广销售。 市场营销网络覆盖我国西北、华北、东北及河南、山东等15个省市自治区，并依托“国家经济林木种苗快繁工程技术研究中心”和“种苗生物工程国家重点实验室”为技术研发中心，开展园林绿化与经济林木良种种苗产业开发，工厂化育苗技术、工艺与设备开发。</span></span></p><p><span style=\"color: rgb(72, 70, 60); font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px; line-height: 24px;\">&nbsp; 森淼种业始终追求“自主研发节水耐旱园林观赏植物新品种，为您省下的水和钱”的理念，坚持“引领园林绿化新理念、节水耐旱、好看、好活、好管”的目标，为我国北方地区城市实现节水型园林绿化建设事业服务，达到资源节约型，环境 友好型的可持续发展的目标。</span></p>','种业简介','','1','1','2015-05-13 01:26:11','','0','2','','0','{\"thumb\":\"\",\"template\":\"zhongye_page\"}','0','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('23','1','','2015-06-13 21:45:26','<p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: 14px;font-family: 宋体;letter-spacing: -1px\">2015</span><span style=\"font-size: 14px;font-family: 宋体;letter-spacing: -1px\">年4月7日下午，美国驻华使馆大使Max Baucus先生一行莅临宁夏林业研究所参观考察。通过会议汇报、现场考察，Max Baucus先生一行全面了解了我所对外国际科技合作的工作情况，并对我所青年科技人员的培养模式给予了高度赞赏，并承诺愿为我所赴美签证的取得打开“绿色通道”。</span></p><p><span style=\"font-size: 14px;font-family: 宋体;letter-spacing: -1px\"><br/></span></p><p><img src=\"http://localhost/senmiao/data/upload/ueditor/20150613/557c33e22a900.JPG\" style=\"\" title=\"2-美国驻华使馆大使Max Baucus先生一行考察林业研究所.JPG\"/></p><p><img src=\"http://localhost/senmiao/data/upload/ueditor/20150613/557c33e22f0e1.JPG\" style=\"\" title=\"FH4A5217.JPG\"/></p><p><br/></p>','美国驻华使馆大使Max Baucus先生一行考察宁夏林业研究所','美国驻华使馆大使Max Baucus先生一行考察宁夏林业研究所','1','1','2015-06-13 21:44:09','','0','0','','0','{\"thumb\":\"557c342b925ed.JPG\"}','1','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('24','1','','2015-06-13 21:50:06','<p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"text-indent: 32px;font-size: 16px;line-height: 24px;font-family: 仿宋_GB2312\">走出银川金凤区南绕城，你将会看到一座碧绿青翠的园子，这就是沙漠中的奇迹</span><span style=\"text-indent: 32px;font-size: 16px;line-height: 24px;font-family: 黑体\">——</span><span style=\"text-indent: 32px;font-size: 16px;line-height: 24px;font-family: 仿宋_GB2312\">森淼生态旅游区。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;text-align: center;text-indent: 32px;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 仿宋_GB2312\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-size: 16px;line-height: 24px;font-family: 仿宋_GB2312\">——题引</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;text-indent: 32px;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 仿宋_GB2312\">&nbsp;</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;text-indent: 32px;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 宋体\">这是五月的第一个假期，天气晴朗，阳光明媚，不用计划，不用准备，不用预定机票、酒店，不用报团请导游，我带着你，你不用带着钱，我们抬起脚就出门，来一场真正的说走就走的旅行。目的地，就是森淼生态旅游区。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;text-indent: 28px;line-height: 18px\"><a href=\"http://www.sanwen8.cn/z/xiatian/\" target=\"_blank\" style=\"color: rgb(82, 82, 82)\"><span style=\"font-size: 16px;line-height: 24px;font-family: 宋体\">夏</span></a><span style=\"font-size: 16px;line-height: 24px;font-family: 宋体\">日柳絮随风飘起，白杨高大挺拔，像庄严的卫士，又像礼貌的迎宾人员，欢迎游人的到来。入园展目，一座小喷泉水光潋滟，四周绿毯葱茏，两边的花园里，一颗颗郁金香像骄傲的荷兰美女，争芳斗艳。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;text-indent: 32px;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 宋体\">正当你沉醉于郁金香那清雅的花朵与浓郁的花香时，一旁的园子里传来雄浑高昂的吼声，放眼望去，几个醒目的大字映入眼帘</span><span style=\"font-size: 16px;line-height: 24px;font-family: 黑体\">——</span><span style=\"font-size: 16px;line-height: 24px;font-family: 宋体\">“恐龙园”。瞬间那种沉醉于景色花香的宁静心情被远古的神秘吸引，燃烧起探个究竟的欲望。一棵远古树木的雕塑作为恐龙园的大门，一条艺术墙像一页页的古籍，展示着远古时代的气息。随着你前行的脚步，时光一下子倒流到距今几亿年前的远古时代，各种类型的恐龙一一出现在眼前，它们神态逼真，步履鲜活，仿佛立刻就要动起来，虽然它们只是一个个用塑胶制成的模型，但是在游人靠近它时会发出阵阵的“吼叫声”并低下它那硕大的头颅。感觉这里就是几亿年前的原始森林，它们按照各自的习性，生存其间。恐龙举着它长长的脖子吃树顶上的枝叶，翼龙振翅长飞，暴龙则张开它的血盆大口，准备随时扑向猎物……从生命的角度分析，人类在恐龙面前的确很渺小。在我看来，这就是旅游的心境，就是要进得去，还要出得来。旅游，有时候需要一点想象的空间，如果你看到的是一堆模型，那么，你得到的也是一堆模型。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;text-indent: 32px;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 宋体\">继续朝前走，是一座度假酒店，熟悉它是因为曾经在这里住过三个晚上，夏日阴雨黄昏后，开了一整天会回到酒店后，舒服的躺在沙发上，喝着枸杞茶，拿一本书，静读。眼困神乏时，从落地窗户向外看，满眼的绿，果树上挂满青涩的果子，树叶在雨中</span><span style=\"font-size: 16px;line-height: 24px;font-family: 宋体\">唦唦</span><span style=\"font-size: 16px;line-height: 24px;font-family: 宋体\">作响，享受</span><span style=\"font-size: 16px;line-height: 24px;font-family: 宋体\">这样的景致，心情也会随之宁静，与整个绿园融为一体，达到忘我的境地，只有这绿，这园，与雨声交响而成的乐曲，一直演奏到天黑。夜晚，这“乐曲”又会使人</span><span style=\"font-size: 16px;line-height: 24px;font-family: 宋体\">想起唐代诗人李商隐的</span><span style=\"font-size: 16px;line-height: 24px;font-family: 宋体\">《夜雨寄北》，不过，这时又是另外一种心境了。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;text-indent: 32px;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 宋体\">森淼生态旅游区园内的另外一个好处，在于它把现代农业科技真正切切的运用到了植物栽培与繁殖上，让科技转化成了丰硕的果实，坐落在森淼生态旅游区园内的好几个国家级重点实验室、以及塑料大棚就是证明，一边搞研发，一边把研发的成果运用到实际中去，走进大棚，每一棵植物都用不同于传统的生长方式生长着。如果说森淼生态旅游区的其他景致带给人以清新，奇特的美，那么这里则给人以充实之美，这里的美不光在于观赏价值，更展现了它们作为水果还是蔬菜的食用价值。如果说，其他的景致像小资，像白领一样追求清新脱俗，那么这里的景致则像朴实的农民，追求沉甸甸的果实。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;text-indent: 32px;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 宋体\">再往南走，一座欧式的庄园华丽地呈现在眼前，这就是“森淼兰月谷酒庄”，仅听这名字，仿佛就已经醉了，它带给人心旷神怡之感！ 酒庄的旁边，有一个专供品酒、展览的大厅，里面陈列着各种各样的葡萄美酒，有赤霞珠，有干红，有冰白等琳琅满目。走到这里时，你可能感觉到有点疲乏了，而这里正是一个休息的好地方，品一口葡萄美酒，顿时觉得馥郁清香、甘甜悠长。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;white-space: normal;text-indent: 32px;line-height: 18px\"><span style=\"font-size: 16px;line-height: 24px;font-family: 宋体\">走出园子时，太阳已经西斜，逛了大半天园区，还有很多地方没去，意犹未尽，但是想想，留一点新奇给明天吧，一下子走遍了所有的角落，看遍了反而感觉无趣。就好像读书一样，博览群书，未必能把每个作品都理解透彻，因为时间有限，精力有限；而要读透，就得细细地去读，而且只能选择最经典的那么几本。我想，做人做事，也是同样的道理吧。</span></p><p><span style=\"font-size: 16px;line-height: 24px;font-family: 宋体\"><br/></span></p><p><img src=\"http://localhost/senmiao/data/upload/ueditor/20150613/557c34dcc3b1b.JPG\" style=\"\" title=\"3-游园记1.JPG\"/></p><p><img src=\"http://localhost/senmiao/data/upload/ueditor/20150613/557c34dcde8c8.JPG\" style=\"\" title=\"3-游园记3.JPG\"/></p><p><br/></p>','森淼生态旅游区游园记','走出银川金凤区南绕城，你将会看到一座碧绿青翠的园子，这就是沙漠中的奇迹——森淼生态旅游区。','1','1','2015-06-13 21:48:24','','0','0','','0','{\"thumb\":\"557c34eb35452.JPG\"}','1','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('25','1','森淼 种业 研发平台','2015-07-04 00:54:14','<p dir=\"ltr\" style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0);\">公司拥有四个国家级研发平台：种苗生物工程国家重点实验室、国家林业局西北林木种苗工程重点实验室、国家经济林木种苗快繁工程技术研究中心、西北特色经济林栽培与利用国家地方联合工程研究中心。</span></p><p dir=\"ltr\" style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0);\"><br/></span></p><p dir=\"ltr\" style=\"text-indent: 2em; text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px; line-height: 24px;\">“实验室”在特色植物资源抗逆性机理、植物抗性转基因、植物脱毒与病毒检测、林业生态系统服务功能评价与碳汇研究中已引进了数位高端专家，初步建立起一支以中青年研发人员为主体，优秀务实的创新型人才团队。该团队实际现有固定研发人员22人，其中教授、研究员7人；博士2人，硕士10人；另有客座人员10人，引进中国工程院院士1人担任学术委员会主任；引进的高端专家已有1位成为国家“千人计划”专家，2位成为自治区“百人计划“专家；“实验室”现有享受政府特殊津贴专家6人。</span></p><p dir=\"ltr\" style=\"text-indent: 2em; text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px; line-height: 24px;\"><br/></span></p><p dir=\"ltr\" style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0);\">自2000年以来，承担国家或地方各类科研及推广项目48项。获国家科技进步二等奖3项，获省部级科技进步奖12项，其中一等奖3项、二等奖4项、三等奖5项，获梁希林业科技进步三等奖1项，何梁何利奖1项，创新团队奖1项。获国家专利4项，出版专著5部，制定地方标准5部，发表相关论文160余篇。</span></p><p dir=\"ltr\" style=\"text-indent: 2em; text-align: left;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; color: rgb(0, 0, 0);\"><br/></span></p><p dir=\"ltr\" style=\"text-indent: 2em; text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px; line-height: 24px;\">“实验室”建设运行以来，紧密结合地方区域、行业发展需求，在引进高端研发人才的同时，积极探索本土化高端研发人才、技能人才的培养路径。通过与国内外相关重点实验室共同培养研究生、从全国各大优秀院校选拔优秀研究生、联合召开国际学术研讨会等途径，选拔出了一批有潜力成长为高端研发人才的青年骨干；创造条件鼓励青年骨干竞争主持自治区自然科技基金项目和实验室自主研发项目，锻炼他们系统思维和独立工作的能力。从顶岗实习的高职院校实习生中，为实验室选拔培养出了一批操作技能精湛的研发辅助人员。</span></p><p><br/></p><p><br/></p><p><br/></p>','研发平台','  ','1','1','2015-07-04 00:49:37','','0','2','','0','{\"thumb\":\"\",\"template\":\"zhongye_page\"}','0','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('26','1','','2015-07-04 01:05:05','<p style=\"text-align: center;\"><img src=\"http://localhost/senmiao/data/upload/ueditor/20150704/5596c131dd83e.jpg\" style=\"\" title=\"DSC00616(1).jpg\"/></p><p style=\"text-align: center;\"><img src=\"http://localhost/senmiao/data/upload/ueditor/20150704/5596c131e3680.jpg\" style=\"\" title=\"DSC00617(1).jpg\"/></p><p style=\"text-align: center;\"><img src=\"http://localhost/senmiao/data/upload/ueditor/20150704/5596c131e83ec.jpg\" style=\"\" title=\"DSC00622(1).jpg\"/></p><p style=\"text-align: center;\"><img src=\"http://localhost/senmiao/data/upload/ueditor/20150704/5596c131eae7e.jpg\" style=\"\" title=\"DSC00618(1).jpg\"/></p><p style=\"text-align: center;\"><img src=\"http://localhost/senmiao/data/upload/ueditor/20150704/5596c131f1374.jpg\" style=\"\" title=\"DSC00628(1).jpg\"/></p><p style=\"text-align: center;\"><img src=\"http://localhost/senmiao/data/upload/ueditor/20150704/5596c13203b1b.jpg\" style=\"\" title=\"DSC00630(1).jpg\"/></p><p style=\"text-align: center;\"><img src=\"http://localhost/senmiao/data/upload/ueditor/20150704/5596c132065ac.jpg\" style=\"\" title=\"DSC00633(1).jpg\"/></p><p style=\"text-align: center;\"><img src=\"http://localhost/senmiao/data/upload/ueditor/20150704/5596c1320a60c.jpg\" style=\"\" title=\"DSC00634(1).jpg\"/></p><p style=\"text-align: center;\"><img src=\"http://localhost/senmiao/data/upload/ueditor/20150704/5596c13211370.jpg\" style=\"\" title=\"DSC00635(1).jpg\"/></p><p style=\"text-align: center;\"><img src=\"http://localhost/senmiao/data/upload/ueditor/20150704/5596c132134f7.jpg\" style=\"\" title=\"DSC00636(1).jpg\"/></p><p style=\"text-align: center;\"><img src=\"http://localhost/senmiao/data/upload/ueditor/20150704/5596c13221a7f.jpg\" style=\"\" title=\"DSC00637(1).jpg\"/></p><p style=\"text-align: center;\"><img src=\"http://localhost/senmiao/data/upload/ueditor/20150704/5596c13223eaa.jpg\" style=\"\" title=\"DSC00639(1).jpg\"/></p><p><br/></p>','宁夏回族自治区人民政府大院','宁夏回族自治区人民政府大院施工','1','1','2015-07-04 01:01:35','','0','0','','0','{\"thumb\":\"5596c1d24b2c7.jpg\"}','1','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('27','1','','2015-07-30 19:01:43','<p>aa<br/></p>','种业资质','','1','1','2015-07-30 19:01:22','','0','2','','0','{\"thumb\":\"\",\"template\":\"zhongye_page\"}','0','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('28','1','森淼集团 景观资质','2015-07-30 19:09:17','<p>a<br/></p>','景观资质','森淼集团园林景观相关资质','1','1','2015-07-30 19:01:44','','0','2','','0','{\"thumb\":\"\",\"template\":\"jingguan_zizhi\"}','0','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('29','1','','2015-07-31 01:55:46','<p style=\"text-align: center;\"><img src=\"http://localhost/senmiao/data/upload/ueditor/20150731/55ba651ca78ee.jpg\" title=\"kuangshan.jpg\" alt=\"kuangshan.jpg\"/></p>','宁夏石嘴山市惠农沉陷区矿山地质环境治理','宁夏石 嘴山 惠农','1','1','2015-07-31 01:54:38','','0','0','','0','{\"thumb\":\"55ba6afc29a66.jpg\"}','1','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('30','1','','2015-07-31 02:13:26','<p style=\"text-align: center;\"><img src=\"http://localhost/senmiao/data/upload/ueditor/20150731/55ba69362203d.jpg\" style=\"\" title=\"_DSC0132.jpg\"/></p><p style=\"text-align: center;\"><img src=\"http://localhost/senmiao/data/upload/ueditor/20150731/55ba69362817d.jpg\" style=\"\" title=\"_DSC0150.jpg\"/></p><p style=\"text-align: center;\"><img src=\"http://localhost/senmiao/data/upload/ueditor/20150731/55ba693629e9c.jpg\" style=\"\" title=\"yhbg.jpg\"/></p><p><br/></p>','宁夏迎宾馆','宁夏迎宾馆 施工','1','1','2015-07-31 01:55:47','','0','0','','0','{\"thumb\":\"55ba695b59541.jpg\"}','1','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('31','1','','2015-07-31 02:54:26','<p style=\"text-align: center;\"><img src=\"http://localhost/senmiao/data/upload/ueditor/20150731/55ba71f727bc6.jpg\" title=\"snsk.jpg\" alt=\"snsk.jpg\"/></p><h3 style=\"text-align: center;\">中接金叶榆球</h3><p style=\"text-align: center;\"><img src=\"http://localhost/senmiao/data/upload/ueditor/20150731/55ba727d0605a.jpg\" title=\"djjyyq.jpg\" alt=\"djjyyq.jpg\"/></p><h3 style=\"text-align: center;\">地接金叶榆球</h3><p><br/></p><p style=\"text-align: center;\"><img src=\"http://localhost/senmiao/data/upload/ueditor/20150731/55ba72b5b2736.jpg\" title=\"jjjjjj.jpg\" alt=\"jjjjjj.jpg\"/></p><h3 style=\"text-align: center;\">三年生金叶榆球</h3>','金叶榆球','金叶榆球','1','1','2015-07-31 02:48:27','','0','0','','0','{\"thumb\":\"55ba72d8079fd.jpg\"}','1','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('32','1','','2015-08-02 00:11:19','','企业简介','无','0','1','2015-08-02 00:10:53','','0','2','','0','{\"thumb\":\"\",\"template\":\"jituan_page\"}','0','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('33','1','','2015-08-02 00:12:17','<p>无</p>','集团简介','无','1','1','2015-08-02 00:11:20','','0','2','','0','{\"thumb\":\"\",\"template\":\"jituan_page\"}','0','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('34','1','','2015-08-02 00:15:12','<p>无<br/></p>','企业文化','无','1','1','2015-08-02 00:12:19','','0','2','','0','{\"thumb\":\"\",\"template\":\"jituan_page\"}','0','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('35','1','','2015-08-02 00:15:30','<div class=\"history\">
		<div class=\"history-date\">
			<ul>
				<h2 class=\"date02\"><a href=\"#nogo\">2012年</a></h2>
				<li class=\"green\">
					<h3>10<span>2012</span></h3>
					<dl>
						<dt>公司董事长李健光荣当选为中国共产党十八大代表</dt>
					</dl>
				</li>
				
			</ul>
		</div>
		
		<div class=\"history-date\">
			<ul>
				<h2 class=\"date02\"><a href=\"#nogo\">2010年</a></h2>
				<li class=\"green\">
					<h3>6<span>2010</span></h3>
					<dl>
						<dt>宁夏林业研究所（有限公司）变更为宁夏林业研究所股份有限公司</dt>
					</dl>
				</li>
				<li class=\"green\">
					<h3>6<span>2010</span></h3>
					<dl>
						<dt>成立宁夏森淼种业生物工程有限公司</dt>
					</dl>
				</li >
				<li class=\"green\">
					<h3>3.22<span>2010</span></h3>
					<dl>
                      <dt>中共中央总书记、国家主席、中央军委主席胡锦涛视察公司</dt>
					</dl>
				</li>
				
			</ul>
		</div>
  </div>','发展历程','无','1','1','2015-08-02 00:15:13','','0','2','','0','{\"thumb\":\"\",\"template\":\"jituan_lishi_page\"}','0','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('36','1','','2015-08-02 00:16:13','   <div class=\"span3 contentBlock\">                        <img src=\"http://localhost/senmiao/data/upload/ueditor/20150802/55bd00608c84e.png\" title=\"aa.png\" alt=\"aa.png\" width=\"180\" height=\"360\"/>                        <div class=\"txt\">                            <h3>沈效东</h3>                            <h4>总经理<br/>高级研究员，硕士生导师</h4>                            <p>拥沈效东获国家科技进步二等奖1项，省部级科技进步一等奖2项、二等奖4项；撰写论文20余篇，专著2部，获得国家专利2项，编制标准4部。是宁夏“313人才工程”人选，享受国务院特殊津贴。</p>                        </div>                    </div>  <div class=\"span3 contentBlock\">                        <img src=\"http://localhost/senmiao/data/upload/ueditor/20150802/55bd00608c84e.png\" title=\"aa.png\" alt=\"aa.png\" width=\"180\" height=\"360\"/>                        <div class=\"txt\">                            <h3>沈效东</h3>                            <h4>总经理<br/>高级研究员，硕士生导师</h4>                            <p>拥沈效东获国家科技进步二等奖1项，省部级科技进步一等奖2项、二等奖4项；撰写论文20余篇，专著2部，获得国家专利2项，编制标准4部。是宁夏“313人才工程”人选，享受国务院特殊津贴。</p>                        </div>                    </div>  <div class=\"span3 contentBlock\">                        <img src=\"http://localhost/senmiao/data/upload/ueditor/20150802/55bd00608c84e.png\" title=\"aa.png\" alt=\"aa.png\" width=\"180\" height=\"360\"/>                        <div class=\"txt\">                            <h3>沈效东</h3>                            <h4>总经理<br/>高级研究员，硕士生导师</h4>                            <p>拥沈效东获国家科技进步二等奖1项，省部级科技进步一等奖2项、二等奖4项；撰写论文20余篇，专著2部，获得国家专利2项，编制标准4部。是宁夏“313人才工程”人选，享受国务院特殊津贴。</p>                        </div>                    </div>  <div class=\"span3 contentBlock\">                        <img src=\"http://localhost/senmiao/data/upload/ueditor/20150802/55bd00608c84e.png\" title=\"aa.png\" alt=\"aa.png\" width=\"180\" height=\"360\"/>                        <div class=\"txt\">                            <h3>沈效东</h3>                            <h4>总经理<br/>高级研究员，硕士生导师</h4>                            <p>拥沈效东获国家科技进步二等奖1项，省部级科技进步一等奖2项、二等奖4项；撰写论文20余篇，专著2部，获得国家专利2项，编制标准4部。是宁夏“313人才工程”人选，享受国务院特殊津贴。</p>                        </div>                    </div>  <div class=\"span3 contentBlock\">                        <img src=\"http://localhost/senmiao/data/upload/ueditor/20150802/55bd00608c84e.png\" title=\"aa.png\" alt=\"aa.png\" width=\"180\" height=\"360\"/>                        <div class=\"txt\">                            <h3>沈效东</h3>                            <h4>总经理<br/>高级研究员，硕士生导师</h4>                            <p>拥沈效东获国家科技进步二等奖1项，省部级科技进步一等奖2项、二等奖4项；撰写论文20余篇，专著2部，获得国家专利2项，编制标准4部。是宁夏“313人才工程”人选，享受国务院特殊津贴。</p>                        </div>                    </div>','企业领导','无','1','1','2015-08-02 00:15:32','','0','2','','0','{\"thumb\":\"\",\"template\":\"jituan_lingdao_page\"}','0','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('37','1','','2015-08-04 04:34:53','<p>无</p>','景区简介','无','1','1','2015-08-04 04:34:24','','0','2','','0','{\"thumb\":\"\",\"template\":\"lvyou_page\"}','0','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('38','1','无','2015-08-04 05:32:12','<p>无</p>','照片墙','','1','1','2015-08-04 05:31:18','','0','2','','0','{\"thumb\":\"\",\"template\":\"lvyou_page\"}','0','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('39','1','','2015-08-04 05:32:35','<p>无</p>','视频展示','无','1','1','2015-08-04 05:32:13','','0','2','','0','{\"thumb\":\"\",\"template\":\"lvyou_page\"}','0','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('40','1','','2015-08-04 05:32:56','<p>无</p>','旅游路线','无','1','1','2015-08-04 05:32:38','','0','2','','0','{\"thumb\":\"\",\"template\":\"lvyou_page\"}','0','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('41','1','','2015-08-04 06:13:00','<p style=\"margin-top: 0px;margin-bottom: 6px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><span style=\"font-family: 仿宋_GB2312\">1.</span><span style=\"font-family: Arial, sans-serif\">&nbsp;</span><strong><span style=\"font-family: 仿宋_GB2312\">岗位：</span></strong><span style=\"font-family: 仿宋_GB2312\">风景园林规划设计师</span></span><span style=\"font-family: 仿宋_GB2312\"></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><strong><span style=\"font-family: 仿宋_GB2312\">隶属关系：</span></strong><span style=\"font-family: 仿宋_GB2312\">宁夏森淼景观规划设计院有限公司</span></span><span style=\"font-family: 仿宋_GB2312\"></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal;background-color: white\"><span style=\"font-size: larger\"><strong><span style=\"font-family: 仿宋_GB2312\">任职要求：</span></strong></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal;text-indent: 27px;background-color: white\"><span style=\"font-size: larger\"><span style=\"font-family: 仿宋_GB2312\">主要负责完成城市绿地系统规划、风景名胜区等规划类项目；完成规划项目基础资料收集、规划文本、规划说明书的撰写及相关规划图纸的制作。</span></span><span style=\"font-family: 仿宋_GB2312\"></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal;background-color: white\"><span style=\"font-size: larger\">&nbsp;<span style=\"font-family: Arial, sans-serif\">&nbsp;</span>&nbsp;<span style=\"font-family: Arial, sans-serif\">&nbsp;</span><span style=\"font-family: 仿宋_GB2312\">1.</span><span style=\"font-family: 仿宋_GB2312\">大学本科及以上学历，风景园林、城乡规划管理或城市规划相关专业。</span></span><span style=\"font-family: 仿宋_GB2312\"></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal;background-color: white\"><span style=\"font-size: larger\">&nbsp;<span style=\"font-family: Arial, sans-serif\">&nbsp;</span>&nbsp;<span style=\"font-family: Arial, sans-serif\">&nbsp;</span><span style=\"font-family: 仿宋_GB2312\">2.</span><span style=\"font-family: 仿宋_GB2312\">从事过2-3年规划工作，有工作经验；有较强的城市绿地规划设计方案主创能力，文字统筹能力强。</span></span><span style=\"font-family: 仿宋_GB2312\"></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal;background-color: white\"><span style=\"font-size: larger\">&nbsp;<span style=\"font-family: Arial, sans-serif\">&nbsp;</span>&nbsp;<span style=\"font-family: Arial, sans-serif\">&nbsp;</span><span style=\"font-family: 仿宋_GB2312\">3.</span><span style=\"font-family: 仿宋_GB2312\">熟悉掌握城市绿地规划项目各阶段的规划成果编制工作及编制流程，精通相关规划设计规范。</span></span><span style=\"font-family: 仿宋_GB2312\"></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal;background-color: white\"><span style=\"font-size: larger\">&nbsp;<span style=\"font-family: Arial, sans-serif\">&nbsp;</span>&nbsp;<span style=\"font-family: Arial, sans-serif\">&nbsp;</span><span style=\"font-family: 仿宋_GB2312\">4.</span><span style=\"font-family: 仿宋_GB2312\">熟练掌握autocad、photoshop、microsoft office等相关软件。</span></span><span style=\"font-family: 仿宋_GB2312\"></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><strong><span style=\"font-family: 仿宋_GB2312\">工作地点：</span></strong><span style=\"font-family: 仿宋_GB2312\">银川</span></span><span style=\"font-family: 仿宋_GB2312\"></span></p><p style=\"margin-top: 0px;margin-bottom: 6px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><br type=\"_moz\"/></span></p><p style=\"margin-top: 0px;margin-bottom: 6px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><span style=\"font-family: 仿宋_GB2312\">2.</span><strong><span style=\"font-family: 仿宋_GB2312\">岗位：</span></strong><span style=\"font-family: 仿宋_GB2312\">园林景观规划设计师</span></span><span style=\"font-family: 仿宋_GB2312\"></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><strong><span style=\"font-family: 仿宋_GB2312\">隶属关系：</span></strong><span style=\"font-family: 仿宋_GB2312\">宁夏森淼景观规划设计院有限公司</span></span><span style=\"font-family: 仿宋_GB2312\"></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal;background-color: white\"><span style=\"font-size: larger\"><strong><span style=\"font-family: 仿宋_GB2312\">任职要求：</span></strong></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal;background-color: white\"><span style=\"font-size: larger\"><span style=\"font-family: 仿宋_GB2312\">1.</span><span style=\"font-family: 仿宋_GB2312\">教育背景：本科学历及以上，园林相关专业毕业；<br/>2.软件水平：熟练掌握OFFICE办公软件，熟练掌握Auto CAD、Photoshop、3DMAX、SketchUp、Lumion、Coreldraw、PKPM、佳园、盈建科等设计软件；<br/>3.经 验:具有一年及以上工作经验，有相关方案设计、效果图制作设计经验；<br/>4.工作态度:热爱本职工作，对工作一丝不苟，有创新意识。良好的敬业精神和职业道德，有较强的感召力和凝聚力，责任心、事业心强。</span></span><span style=\"font-family: 仿宋_GB2312\"></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><strong><span style=\"font-family: 仿宋_GB2312\">工作地点：</span></strong><span style=\"font-family: 仿宋_GB2312\">银川</span></span><span style=\"font-family: 仿宋_GB2312\"></span></p><p style=\"margin-top: 0px;margin-bottom: 6px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><br type=\"_moz\"/></span></p><p style=\"margin-top: 0px;margin-bottom: 6px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><span style=\"font-family: 仿宋_GB2312\">3.</span><span style=\"font-family: Arial, sans-serif\">&nbsp;</span><strong><span style=\"font-family: 仿宋_GB2312\">岗位：</span></strong><span style=\"font-family: 仿宋_GB2312\">土建结构设计师</span></span><span style=\"font-family: 仿宋_GB2312\"></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><strong><span style=\"font-family: 仿宋_GB2312\">隶属关系：</span></strong><span style=\"font-family: 仿宋_GB2312\">宁夏森淼景观规划设计院有限公司</span></span><span style=\"font-family: 仿宋_GB2312\"></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal;background-color: white\"><span style=\"font-size: larger\"><strong><span style=\"font-family: 仿宋_GB2312\">任职要求：</span></strong></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><span style=\"font-family: 仿宋_GB2312;background-color: white\">1.</span><span style=\"font-family: 仿宋_GB2312;background-color: white\">教育背景：本科学历及以上，土建结构相关专业毕业；</span><span style=\"font-family: 仿宋_GB2312\"><br/><span style=\"background-color: white\">2.</span></span><span style=\"font-family: 仿宋_GB2312;background-color: white\">软件水平：熟练掌握OFFICE办公软件，熟练掌握Auto CAD、Photoshop、3DMAX、SketchUp、Lumion、Coreldraw、PKPM、佳园、盈建科等部分设计软件；</span><span style=\"font-family: 仿宋_GB2312\"><br/><span style=\"background-color: white\">3.</span></span><span style=\"font-family: 仿宋_GB2312;background-color: white\">经 验:具有一年及以上工作经验，有相关方案设计、效果图制作设计经验；</span><span style=\"font-family: 仿宋_GB2312\"><br/><span style=\"background-color: white\">4.</span></span><span style=\"font-family: 仿宋_GB2312;background-color: white\">工作态度:热爱本职工作，对工作一丝不苟，有创新意识。良好的敬业精神和职业道德，有较强的感召力和凝聚力，责任心、事业心强。</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><strong><span style=\"font-family: 仿宋_GB2312\">工作地点：</span></strong><span style=\"font-family: 仿宋_GB2312\">银川</span></span><span style=\"font-family: 仿宋_GB2312\"></span></p><p style=\"margin-top: 0px;margin-bottom: 6px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><br type=\"_moz\"/></span></p><p style=\"margin-top: 0px;margin-bottom: 6px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><span style=\"font-family: 仿宋_GB2312\">4.</span><span style=\"font-family: Arial, sans-serif\">&nbsp;</span><strong><span style=\"font-family: 仿宋_GB2312\">岗位：</span></strong><span style=\"font-family: 仿宋_GB2312\">景观照明灯光设计师</span></span><span style=\"font-family: 仿宋_GB2312\"></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><strong><span style=\"font-family: 仿宋_GB2312\">隶属关系：</span></strong><span style=\"font-family: 仿宋_GB2312\">宁夏森淼景观规划设计院有限公司</span></span><span style=\"font-family: 仿宋_GB2312\"></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal;background-color: white\"><span style=\"font-size: larger\"><strong><span style=\"font-family: 仿宋_GB2312\">任职要求：</span></strong></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal;background-color: white\"><span style=\"font-size: larger\"><span style=\"font-family: 仿宋_GB2312\">1.</span><span style=\"font-family: 仿宋_GB2312\">教育背景:本科及以上学历。</span><span style=\"font-family: 仿宋_GB2312\"><br/>2.</span><span style=\"font-family: 仿宋_GB2312\">经 验:具有一年半及以上相关工作经验。</span><span style=\"font-family: 仿宋_GB2312\"><br/>3.</span><span style=\"font-family: 仿宋_GB2312\">对现代照明灯光设计了解并有实践经验积累，有较强方案设计理念，熟悉熟练掌握OFFICE办公软件，熟练应用Auto CAD、Photoshop、3DMAX、SketchUp、Lumion、Coreldraw、PKPM、佳园、盈建科等设计软件。</span><span style=\"font-family: 仿宋_GB2312\"><br/>4.</span><span style=\"font-family: 仿宋_GB2312\">工作态度:热爱本职工作，对工作一丝不苟，有创新意识。良好的敬业精神和职业道德，有较强的感召力和凝聚力，责任心、事业心强。</span><span style=\"font-family: 仿宋_GB2312\"><br/></span><span style=\"font-family: 仿宋_GB2312\">工作内容：</span><span style=\"font-family: 仿宋_GB2312\"><br/>1.</span><span style=\"font-family: 仿宋_GB2312\">针对不同类型（如委托、招投标）设计项目，制定景观照明灯光方案，有序有效的进行工作。</span><span style=\"font-family: 仿宋_GB2312\"><br/>2.</span><span style=\"font-family: 仿宋_GB2312\">有效的和甲方代表进行沟通。</span><span style=\"font-family: 仿宋_GB2312\"><br/>3.</span><span style=\"font-family: 仿宋_GB2312\">根据各个设计项目完成景观照明灯光设计施工图制作。</span>&nbsp;<span style=\"font-family: 仿宋_GB2312\"><br/>4.</span><span style=\"font-family: 仿宋_GB2312\">完成各个项目景观照明灯光设计预算。</span><span style=\"font-family: 仿宋_GB2312\"><br/>5.</span><span style=\"font-family: 仿宋_GB2312\">相关设计素材收集。</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal;background-color: white\"><span style=\"font-size: larger\"><span style=\"font-family: 仿宋_GB2312\">6.</span><span style=\"font-family: 仿宋_GB2312\">完成领导交办的其他各项事务。</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><strong><span style=\"font-family: 仿宋_GB2312\">工作地点：</span></strong><span style=\"font-family: 仿宋_GB2312\">银川</span>&nbsp;</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><span style=\"font-family: Arial, sans-serif\">&nbsp;</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><span style=\"font-family: 仿宋_GB2312;background-color: white\">5.</span><strong><span style=\"font-family: 仿宋_GB2312\">岗位：</span></strong><span style=\"font-family: 仿宋_GB2312;background-color: white\">信息化工程师</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal;background-color: white\"><span style=\"font-size: larger\"><strong><span style=\"font-family: 仿宋_GB2312\">隶属关系：</span></strong><span style=\"font-family: 仿宋_GB2312\">计划与企业管理部</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal;background-color: white\"><span style=\"font-size: larger\"><span style=\"font-family: 仿宋_GB2312\">要求：大学专科及以上学历，计算机相关专业，5年以上企业信息化系统管理或开发等方面工作经验，具备一定的管理协调能力。</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><strong><span style=\"font-family: 仿宋_GB2312\">工作地点：</span></strong><span style=\"font-family: 仿宋_GB2312\">银川</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><span style=\"font-family: Arial, sans-serif\">&nbsp;</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><span style=\"font-family: 仿宋_GB2312;background-color: white\">6.</span><span style=\"font-family: Arial, sans-serif;background-color: white\">&nbsp;</span><strong><span style=\"font-family: 仿宋_GB2312\">岗位：</span></strong><span style=\"font-family: 仿宋_GB2312;background-color: white\">市场营销人员</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal;background-color: white\"><span style=\"font-size: larger\"><strong><span style=\"font-family: 仿宋_GB2312\">隶属关系</span></strong><span style=\"font-family: 仿宋_GB2312\">：市场营销与种业事业发展部</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal;background-color: white\"><span style=\"font-size: larger\"><span style=\"font-family: 仿宋_GB2312\">要求：农林或营销专业，大专以上学历，5年以上苗木销售经验。</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><strong><span style=\"font-family: 仿宋_GB2312\">工作地点：</span></strong><span style=\"font-family: 仿宋_GB2312\">新疆或银川</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><span style=\"font-family: Arial, sans-serif\">&nbsp;</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><span style=\"font-family: 仿宋_GB2312;background-color: white\">7.</span><span style=\"font-family: Arial, sans-serif;background-color: white\">&nbsp;</span><strong><span style=\"font-family: 仿宋_GB2312;background-color: white\">岗位：</span></strong><span style=\"font-family: 仿宋_GB2312;background-color: white\">项目经理</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal;background-color: white\"><span style=\"font-size: larger\"><strong><span style=\"font-family: 仿宋_GB2312\">隶属关系：</span></strong><span style=\"font-family: 仿宋_GB2312\">宁夏森淼园林景观绿化工程有限公司</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal;background-color: white\"><span style=\"font-size: larger\"><span style=\"font-family: 仿宋_GB2312\">要求：园林、土建相关专业，专科以上学历，5年以上园林施工方面工作经验，有大型施工项目管理经验，具备一定的管理协调能力。</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><strong><span style=\"font-family: 仿宋_GB2312\">工作地点：</span></strong><span style=\"font-family: 仿宋_GB2312\">银川及周边地区</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><span style=\"font-family: Arial, sans-serif\">&nbsp;</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><span style=\"font-family: 仿宋_GB2312;background-color: white\">8.</span><span style=\"font-family: Arial, sans-serif;background-color: white\">&nbsp;</span><strong><span style=\"font-family: 仿宋_GB2312;background-color: white\">岗位：</span></strong><span style=\"font-family: 仿宋_GB2312;background-color: white\">施工技术员</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal;background-color: white\"><span style=\"font-size: larger\"><strong><span style=\"font-family: 仿宋_GB2312\">隶属关系：</span></strong><span style=\"font-family: 仿宋_GB2312\">宁夏森淼园林景观绿化工程有限公司</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal;background-color: white\"><span style=\"font-size: larger\"><span style=\"font-family: 仿宋_GB2312\">要求：园林、土建相关专业，专科以上学历，能熟练使用CAD，有园林施工工作经验者优先考虑。</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><strong><span style=\"font-family: 仿宋_GB2312\">工作地点：</span></strong><span style=\"font-family: 仿宋_GB2312\">银川及周边地区</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><br type=\"_moz\"/></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><span style=\"font-family: Arial, sans-serif\">&nbsp;</span><span style=\"font-family: 仿宋_GB2312;background-color: white\">9.</span><strong><span style=\"font-family: 仿宋_GB2312;background-color: white\">岗位：</span></strong><span style=\"font-family: 仿宋_GB2312;background-color: white\">餐饮服务员</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal;background-color: white\"><span style=\"font-size: larger\"><strong><span style=\"font-family: 仿宋_GB2312\">隶属关系：</span></strong><span style=\"font-family: 仿宋_GB2312\">宁夏森淼科技培训中心有限公司</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal;background-color: white\"><span style=\"font-size: larger\"><span style=\"font-family: 仿宋_GB2312\">要求：中专以上学历，形象气质较好</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;list-style-type: none;font-size: 12px;font-family: Simsun, sans-serif;line-height: 19.2000007629395px;white-space: normal\"><span style=\"font-size: larger\"><strong><span style=\"font-family: 仿宋_GB2312\">工作地点：</span></strong><span style=\"font-family: 仿宋_GB2312\">银川</span></span></p><p><br/></p>','招贤纳士','xx','1','1','2015-08-04 06:07:51','','0','2','','0','{\"thumb\":\"\",\"template\":\"zhaopin_page\"}','0','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('42','1','','2015-08-04 06:32:45','<p>无</p>','企业荣誉','无','1','1','2015-08-04 06:32:23','','0','2','','0','{\"thumb\":\"\",\"template\":\"jituan_page\"}','0','0','0','0');
INSERT INTO sp_posts ( `id`, `post_author`, `post_keywords`, `post_date`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `post_modified`, `post_content_filtered`, `post_parent`, `post_type`, `post_mime_type`, `comment_count`, `smeta`, `post_hits`, `post_like`, `istop`, `recommended` ) VALUES  ('43','1','','2015-08-04 06:57:42','<p>无</p>','产业布局','无','1','1','2015-08-04 06:57:06','','0','2','','0','{\"thumb\":\"\",\"template\":\"zhongye_page\"}','0','0','0','0');
DROP TABLE IF EXISTS `sp_role`;
CREATE TABLE `sp_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '角色名称',
  `pid` smallint(6) DEFAULT NULL COMMENT '父角色ID',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_role ( `id`, `name`, `pid`, `status`, `remark`, `create_time`, `update_time`, `listorder` ) VALUES  ('1','超级管理员','0','1','拥有网站最高管理员权限！','1329633709','1329633709','0');
INSERT INTO sp_role ( `id`, `name`, `pid`, `status`, `remark`, `create_time`, `update_time`, `listorder` ) VALUES  ('2','xxx','','1','xxxx','1438638800','0','0');
DROP TABLE IF EXISTS `sp_role_user`;
CREATE TABLE `sp_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_route`;
CREATE TABLE `sp_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `full_url` varchar(255) DEFAULT NULL COMMENT '完整url， 如：portal/list/index?id=1',
  `url` varchar(255) DEFAULT NULL COMMENT '实际显示的url',
  `listorder` int(5) DEFAULT '0' COMMENT '排序，优先级，越小优先级越高',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态，1：启用 ;0：不启用',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_slide`;
CREATE TABLE `sp_slide` (
  `slide_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slide_cid` bigint(20) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_pic` varchar(255) DEFAULT NULL,
  `slide_url` varchar(255) DEFAULT NULL,
  `slide_des` varchar(255) DEFAULT NULL,
  `slide_content` text,
  `slide_status` int(2) NOT NULL DEFAULT '1',
  `listorder` int(10) DEFAULT '0',
  PRIMARY KEY (`slide_id`),
  KEY `slide_cid` (`slide_cid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_slide_cat`;
CREATE TABLE `sp_slide_cat` (
  `cid` bigint(20) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL,
  `cat_idname` varchar(255) NOT NULL,
  `cat_remark` text,
  `cat_status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cid`),
  KEY `cat_idname` (`cat_idname`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_slide_cat ( `cid`, `cat_name`, `cat_idname`, `cat_remark`, `cat_status` ) VALUES  ('3','index','slide_index','','1');
DROP TABLE IF EXISTS `sp_term_relationships`;
CREATE TABLE `sp_term_relationships` (
  `tid` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'posts表里文章id',
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`tid`),
  KEY `term_taxonomy_id` (`term_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('24','30','3','0','1');
INSERT INTO sp_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('23','29','2','0','1');
INSERT INTO sp_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('25','31','4','0','1');
INSERT INTO sp_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('22','26','3','0','1');
INSERT INTO sp_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('21','24','1','0','1');
INSERT INTO sp_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('20','23','1','0','1');
INSERT INTO sp_term_relationships ( `tid`, `object_id`, `term_id`, `listorder`, `status` ) VALUES  ('16','17','1','0','1');
DROP TABLE IF EXISTS `sp_terms`;
CREATE TABLE `sp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `slug` varchar(200) DEFAULT '',
  `taxonomy` varchar(32) DEFAULT NULL COMMENT '分类类型',
  `description` longtext COMMENT '分类描述',
  `parent` bigint(20) unsigned DEFAULT '0' COMMENT '分类父id',
  `count` bigint(20) DEFAULT '0' COMMENT '分类文章数',
  `path` varchar(500) DEFAULT NULL COMMENT '分类层级关系路径',
  `seo_title` varchar(500) DEFAULT NULL,
  `seo_keywords` varchar(500) DEFAULT NULL,
  `seo_description` varchar(500) DEFAULT NULL,
  `list_tpl` varchar(50) DEFAULT NULL COMMENT '分类列表模板',
  `one_tpl` varchar(50) DEFAULT NULL COMMENT '分类文章页模板',
  `listorder` int(5) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`term_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('1','公司新闻','','article','','0','0','0-1','','','','list','article','0','1');
INSERT INTO sp_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('2','设计案例','','article','','0','0','0-2','','','','jingguan_list','article','0','1');
INSERT INTO sp_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('3','施工案例','','picture','','0','0','0-3','','','','jingguan_list','jingguan_page','0','1');
INSERT INTO sp_terms ( `term_id`, `name`, `slug`, `taxonomy`, `description`, `parent`, `count`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `listorder`, `status` ) VALUES  ('4','产品展示','','picture','','0','0','0-4','','','','zhongye_list','zhongye_page','0','1');
DROP TABLE IF EXISTS `sp_user_favorites`;
CREATE TABLE `sp_user_favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '收藏内容的标题',
  `url` varchar(255) DEFAULT NULL COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) DEFAULT NULL COMMENT '收藏内容的描述',
  `table` varchar(50) DEFAULT NULL COMMENT '收藏实体以前所在表，不带前缀',
  `object_id` int(11) DEFAULT NULL COMMENT '收藏内容原来的主键id',
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `sp_users`;
CREATE TABLE `sp_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码；sp_password加密',
  `user_nicename` varchar(50) NOT NULL DEFAULT '' COMMENT '用户美名',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网站',
  `avatar` varchar(255) DEFAULT NULL COMMENT '用户头像，相对于upload/avatar目录',
  `sex` smallint(1) DEFAULT '0' COMMENT '性别；0：保密，1：男；2：女',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `signature` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `last_login_ip` varchar(16) NOT NULL COMMENT '最后登录ip',
  `last_login_time` datetime NOT NULL COMMENT '最后登录时间',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '注册时间',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `user_status` int(11) NOT NULL DEFAULT '1' COMMENT '用户状态 0：禁用； 1：正常 ；2：未验证',
  `role_id` smallint(6) DEFAULT NULL COMMENT '用户角色id',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `user_type` smallint(1) DEFAULT '1' COMMENT '用户类型，1:admin ;2:会员',
  PRIMARY KEY (`id`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO sp_users ( `id`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `avatar`, `sex`, `birthday`, `signature`, `last_login_ip`, `last_login_time`, `create_time`, `user_activation_key`, `user_status`, `role_id`, `score`, `user_type` ) VALUES  ('1','senmiao','c535018ee9463a466359235aed4dc8a675fbbbe88c0b89af','admin','350988801@qq.com','','','0','0000-00-00','','0.0.0.0','2015-08-04 06:59:18','2015-01-18 02:35:18','','1','1','0','1');
