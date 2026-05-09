
-- ----------------------------
-- Table structure for t_operate_log
-- ----------------------------
DROP TABLE IF EXISTS `t_operate_log`;
CREATE TABLE `t_operate_log` (
  `operate_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `operate_user_id` bigint NOT NULL COMMENT '用户id',
  `operate_user_type` int NOT NULL COMMENT '用户类型',
  `operate_user_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名称',
  `module` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作模块',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '操作内容',
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '请求路径',
  `method` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '请求方法',
  `param` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '请求参数',
  `ip` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '请求ip',
  `ip_region` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '请求ip地区',
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '请求user-agent',
  `success_flag` tinyint DEFAULT NULL COMMENT '请求结果 0失败 1成功',
  `fail_reason` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '失败原因',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`operate_log_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4499 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='操作记录';


