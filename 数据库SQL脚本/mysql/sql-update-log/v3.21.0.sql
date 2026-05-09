-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department`  (
  `department_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '部门主键id',
  `department_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '部门名称',
  `manager_id` bigint(0) NULL DEFAULT NULL COMMENT '部门负责人id',
  `parent_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '部门的父级id',
  `sort` int(0) NOT NULL COMMENT '部门排序',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`department_id`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '部门' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_department
-- ----------------------------
INSERT INTO `t_department` VALUES (1, '1024创新实验室', 1, 0, 1, '2022-10-19 20:17:09', '2022-10-19 20:17:09');
INSERT INTO `t_department` VALUES (2, '开发部', 44, 1, 1000, '2022-10-19 20:22:23', '2022-10-19 20:22:23');
INSERT INTO `t_department` VALUES (3, '产品部', 2, 1, 99, '2022-10-21 10:25:30', '2022-10-21 10:25:30');
INSERT INTO `t_department` VALUES (4, '销售部', 64, 1, 9, '2022-10-21 10:25:47', '2022-10-21 10:25:47');
INSERT INTO `t_department` VALUES (5, '测试部', 48, 1, 0, '2022-11-05 10:54:18', '2022-11-05 10:54:18');
INSERT INTO `t_department` VALUES (7, '直播组', 44, 1, 1111, '2024-07-02 19:38:15', '2024-07-02 19:38:15');
INSERT INTO `t_department` VALUES (8, '抖音组', 47, 7, 0, '2024-07-02 19:39:11', '2024-07-02 19:39:11');




