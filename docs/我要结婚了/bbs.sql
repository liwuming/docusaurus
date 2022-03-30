


--图片表
/*
一个用户可以上传4张图片
*/
CREATE TABLE `dg_images`(
  `id` int(10) unsigned not null auto_increment,
  `img_url` varchar(100) not null default '' comment '图片路径',
  `img_desc` varchar(100) not null default '' comment '图片描述信息',
  `hash_sha` varchar(100) not null default '' comment '图片路径及描述的hash值',
  `is_delete` tinyint unsigned not null default 0 comment '状态 0未被使用，1已删除',
  `create_time` varchar(20) not null default '' comment '生成时间',
  `update_time` varchar(20) not null default '' comment '更新时间',
  `user_id` int unsigned not null default 0 comment '所属用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB default CHARSET=utf8mb4;



/*模块管理*/
CREATE TABLE `dg_forum_modules`(
`id` int(10) unsigned not null auto_increment,
`title`  varchar(50) not null default '' comment '模块名称',
`order_sort` smallint unsigned not null default 0 comment '排序',
`state` tinyint unsigned not null default 0 comment '状态',
`create_time` datetime default null comment '创建时间',
`delete_time` datetime default null comment '创建时间',
`is_delete` tinyint unsigned not null default 0 comment '是否删除',
`user_id` int(10) unsigned not null default 0 comment '所属用户',
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB default CHARSET=utf8mb4;

--帖子表
CREATE TABLE `dg_forum_thread`(
`id` int(10) unsigned not null auto_increment,
`title` varchar(100) not null default '' comment '标题',
`content` text not null comment '帖子内容',
`images` json comment '附件',
`location` varchar(20) not null default '' comment '位置',
`recommend_add` mediumint unsigned not null default 0 comment '支持人数',
`recommend_sub` mediumint unsigned not null default 0 comment '反对人数',
`state` tinyint unsigned not null default 0 comment '状态',
`views` mediumint unsigned not null default 0 comment '浏览量',
`create_time` datetime default null comment '创建时间',
`delete_time` datetime default null comment '创建时间',
`is_delete` tinyint unsigned not null default 0 comment '是否删除',
`user_id` int(10) unsigned not null default 0 comment '所属用户',
`author` int unsigned not null default 0 comment '作者昵称',
`authavatar` int unsigned not null default 0 comment '作者头像',
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB default CHARSET=utf8mb4;


--评论表
create table dg_forum_thread_comments(
`id` int(10) unsigned not null auto_increment,
`contents` varchar(5000) not null default '' comment '评论内容',
`state` tinyint not null default 0 comment '状态 1赞 -1踩',
`create_time` datetime comment '创建时间',
`update_time` datetime comment '更新时间',
`delete_time` datetime comment '删除时间',
`user_id` int(10) unsigned not null default 0 comment '所属用户',
`fk_id` int(10) unsigned not null default 0 comment '帖子id',
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB default CHARSET=utf8mb4;

--回复--赞/踩
CREATE TABLE `dg_forum_thread_comments_state`(
  `id` int(10) unsigned not null auto_increment,
  `state` tinyint not null default 0 comment '状态 1赞 -1踩',
  `create_time` datetime not null comment '创建时间',
  `update_time` datetime not null comment '更新时间',
  `user_id` int(10) unsigned not null default 0 comment '所属用户',
  `fk_id` int(10) unsigned not null default 0 comment '评论id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB default CHARSET=utf8mb4;

--留言历史记录
CREATE TABLE `dg_forum_history`(
`id` int(10) unsigned not null auto_increment,
`title` varchar(100)  not null default '' comment '帖子标题',
`images` json comment '附件',
`thread_id` int(10) unsigned not null default 0 comment '帖子id',
`create_time` datetime default null comment '创建时间',
`delete_time` datetime default null comment '创建时间',
`is_delete` tinyint unsigned default 0 comment '是否删除',
`days` tinyint unsigned not null default 0 comment '天数',
`user_id` int(10) unsigned not null default 0 comment '所属用户',
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB default CHARSET=utf8mb4;