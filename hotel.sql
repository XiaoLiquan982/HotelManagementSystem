/*
 Navicat Premium Data Transfer

 Source Server         : mydb
 Source Server Type    : MySQL
 Source Server Version : 80038
 Source Host           : localhost:3306
 Source Schema         : t224

 Target Server Type    : MySQL
 Target Server Version : 80038
 File Encoding         : 65001

 Date: 02/07/2026 00:33:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/real_hotel_1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'upload/real_hotel_2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'upload/real_hotel_3.jpg');

-- ----------------------------
-- Table structure for discussjiudianjianjie
-- ----------------------------
DROP TABLE IF EXISTS `discussjiudianjianjie`;
CREATE TABLE `discussjiudianjianjie`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1649006821176 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '酒店简介评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussjiudianjianjie
-- ----------------------------
INSERT INTO `discussjiudianjianjie` VALUES (101, '2022-04-04 00:20:37', 41, 21, '陈宇', '酒店位置靠近地铁和商务区，出行方便，适合作为公司差旅协议酒店。', '感谢建议，酒店会持续完善商务客人服务。');
INSERT INTO `discussjiudianjianjie` VALUES (102, '2022-04-04 00:20:37', 41, 22, '林娜', '公共区域整洁，前台服务态度好，办理入住和退房都比较顺畅。', '感谢您的肯定，欢迎再次入住云澜国际酒店。');
INSERT INTO `discussjiudianjianjie` VALUES (103, '2022-04-04 00:20:37', 41, 23, '周伟', '早餐品类比较丰富，会议和住宿可以一起安排，对商务团队很方便。', '感谢反馈，会议套餐可提前联系销售部预订。');
INSERT INTO `discussjiudianjianjie` VALUES (104, '2022-04-04 00:20:37', 41, 24, '黄敏', '带家人周末入住，酒店周边餐饮和公园都比较近，整体体验不错。', '感谢分享，酒店会继续完善亲子出行服务。');
INSERT INTO `discussjiudianjianjie` VALUES (105, '2022-04-04 00:20:37', 41, 25, '吴凯', '停车场入口好找，前台登记车牌后出入比较方便。', '感谢您的评价，停车服务如有问题可随时联系前台。');
INSERT INTO `discussjiudianjianjie` VALUES (106, '2022-04-04 00:20:37', 41, 26, '李琴', '酒店页面信息清楚，房型、价格和预订流程展示比较直观。', '感谢认可，我们会持续优化线上预订体验。');
INSERT INTO `discussjiudianjianjie` VALUES (1649006821175, '2022-04-04 01:27:00', 41, 1649006333502, '胡月', '行政楼层服务细节到位，适合重要客户接待。', '感谢您的支持，期待再次为您服务。');

-- ----------------------------
-- Table structure for discussjiudiankefang
-- ----------------------------
DROP TABLE IF EXISTS `discussjiudiankefang`;
CREATE TABLE `discussjiudiankefang`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1649006843854 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '酒店客房评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussjiudiankefang
-- ----------------------------
INSERT INTO `discussjiudiankefang` VALUES (111, '2022-04-04 00:20:37', 51, 21, '陈宇', '房间干净，床垫软硬适中，晚上很安静。前台办理入住速度快，适合商务出差。', '感谢认可，我们会继续保持客房清洁和前台服务效率。');
INSERT INTO `discussjiudiankefang` VALUES (112, '2022-04-04 00:20:37', 52, 22, '林娜', '双床房空间够用，和同事一起入住比较方便，热水稳定，早餐也不错。', '感谢您的评价，欢迎下次继续选择标准双床房。');
INSERT INTO `discussjiudiankefang` VALUES (113, '2022-04-04 00:20:37', 53, 23, '周伟', '高楼层视野很好，晚上可以看到城市灯光，办公桌和网络对出差很友好。', '很高兴城景房满足您的商务需求。');
INSERT INTO `discussjiudiankefang` VALUES (114, '2022-04-04 00:20:37', 54, 24, '黄敏', '房间比普通双床更宽敞，卫生间干湿分离，家人住得很舒服。', '感谢分享入住体验，我们会持续优化家庭客人的服务。');
INSERT INTO `discussjiudiankefang` VALUES (115, '2022-04-04 00:20:37', 55, 25, '吴凯', '商务套房的会客区很实用，临时和客户沟通不需要另找会议室。', '感谢选择商务套房，期待再次为您服务。');
INSERT INTO `discussjiudiankefang` VALUES (116, '2022-04-04 00:20:37', 56, 26, '李琴', '亲子房有儿童床和小朋友用品，孩子很喜欢，入住体验比普通房型更省心。', '感谢您的反馈，亲子用品我们会定期检查补充。');
INSERT INTO `discussjiudiankefang` VALUES (1649006843853, '2022-04-04 01:27:22', 1649006698870, 1649006333502, '胡月', '行政套房景观不错，欢迎水果和夜床服务很贴心，适合纪念日入住。', '祝您生活愉快，感谢对行政楼层服务的认可。');

-- ----------------------------
-- Table structure for jiudianjianjie
-- ----------------------------
DROP TABLE IF EXISTS `jiudianjianjie`;
CREATE TABLE `jiudianjianjie`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiudianmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '酒店名称',
  `leibie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '类别',
  `xingji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '星级',
  `jiudiantupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '酒店图片',
  `jiudiandizhi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '酒店地址',
  `fuwurexian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '服务热线',
  `jiudianjieshao` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '酒店介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '酒店简介' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jiudianjianjie
-- ----------------------------
INSERT INTO `jiudianjianjie` VALUES (41, '2022-04-04 00:20:37', '云澜国际酒店', '城市商务型酒店', '五星级', 'upload/real_hotel_1.jpg', '深圳市南山区滨海大道 168 号', '0755-88886666', '<p>云澜国际酒店位于深圳湾核心商务区，毗邻地铁站、会展中心和海滨公园。酒店设有标准客房、豪华客房、商务套房和行政景观套房，提供 24 小时前台、行李寄存、会议接待、免费 Wi-Fi、早餐厅和停车服务，适合商务出差、家庭旅行和城市度假。</p><p>系统中的酒店简介、客房展示、在线预订、支付状态、入住安排和用户评论均围绕真实酒店业务流程设计，便于演示完整的酒店预订管理场景。</p>');

-- ----------------------------
-- Table structure for jiudiankefang
-- ----------------------------
DROP TABLE IF EXISTS `jiudiankefang`;
CREATE TABLE `jiudiankefang`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kefangmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '客房名称',
  `kefangleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '客房类型',
  `kefangtupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '客房图片',
  `kefangjiage` float NOT NULL COMMENT '客房价格',
  `shuliang` int NULL DEFAULT NULL COMMENT '数量',
  `jiudianmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '酒店名称',
  `jiudiandizhi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '酒店地址',
  `kefangsheshi` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '客房设施',
  `kefangjieshao` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '客房介绍',
  `clicknum` int NULL DEFAULT 0 COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1649006698871 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '酒店客房' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jiudiankefang
-- ----------------------------
INSERT INTO `jiudiankefang` VALUES (51, '2022-04-04 00:20:37', '舒适标准大床房', '标准大床房', 'upload/real_hotel_2.jpg', 268, 18, '云澜国际酒店', '深圳市南山区滨海大道 168 号', '1.8 米大床、独立卫浴、中央空调、免费 Wi-Fi、书桌、智能电视、电热水壶、吹风机', '<p>舒适标准大床房适合单人出差或情侣入住，房间布局紧凑实用，采光良好，配备办公书桌和高速无线网络。</p>', 48);
INSERT INTO `jiudiankefang` VALUES (52, '2022-04-04 00:20:37', '雅致标准双床房', '标准双床房', 'upload/real_hotel_6.jpg', 298, 16, '云澜国际酒店', '深圳市南山区滨海大道 168 号', '两张 1.2 米单人床、独立卫浴、中央空调、免费 Wi-Fi、智能电视、办公桌、保险箱', '<p>雅致标准双床房适合同事出差或朋友结伴入住，房间整洁明亮，床品柔软舒适。</p>', 38);
INSERT INTO `jiudiankefang` VALUES (53, '2022-04-04 00:20:37', '城景豪华大床房', '豪华大床房', 'upload/real_hotel_3.jpg', 428, 12, '云澜国际酒店', '深圳市南山区滨海大道 168 号', '2.0 米大床、落地窗、干湿分离卫浴、迷你吧、免费 Wi-Fi、智能电视、办公区', '<p>城景豪华大床房位于酒店高楼层，可欣赏城市夜景，适合对住宿品质有更高要求的客人。</p>', 61);
INSERT INTO `jiudiankefang` VALUES (54, '2022-04-04 00:20:37', '臻选豪华双床房', '豪华双床房', 'upload/real_hotel_4.jpg', 458, 10, '云澜国际酒店', '深圳市南山区滨海大道 168 号', '两张 1.35 米单人床、落地窗、独立卫浴、免费 Wi-Fi、智能电视、迷你吧', '<p>臻选豪华双床房空间更宽敞，适合家庭短住或商务同行入住，兼顾舒适与实用。</p>', 53);
INSERT INTO `jiudiankefang` VALUES (55, '2022-04-04 00:20:37', '静雅商务套房', '商务套房', 'upload/real_hotel_5.jpg', 688, 8, '云澜国际酒店', '深圳市南山区滨海大道 168 号', '独立会客区、2.0 米大床、办公桌、胶囊咖啡机、浴缸、免费 Wi-Fi、智能电视', '<p>静雅商务套房配置独立会客区和办公设施，适合商务洽谈、长住办公和重要客户接待。</p>', 74);
INSERT INTO `jiudiankefang` VALUES (56, '2022-04-04 00:20:37', '温馨家庭亲子房', '家庭亲子房', 'upload/real_hotel_7.jpg', 588, 6, '云澜国际酒店', '深圳市南山区滨海大道 168 号', '一张大床和一张儿童床、儿童洗漱用品、独立卫浴、免费 Wi-Fi、智能电视、小冰箱', '<p>温馨家庭亲子房提供儿童床和亲子用品，适合三口之家或带娃旅行入住。</p>', 49);
INSERT INTO `jiudiankefang` VALUES (1649006698870, '2022-04-04 01:24:58', '行政湾景套房', '行政景观套房', 'upload/1649006659141.jpg', 998, 5, '云澜国际酒店', '深圳市南山区滨海大道 168 号', '独立卧室、会客厅、景观浴缸、行政礼遇、欢迎水果、免费 Wi-Fi、智能控制系统', '<p>行政湾景套房面向高端商务和纪念日入住客人，视野开阔，提供更私密舒适的入住体验。</p>', 88);

-- ----------------------------
-- Table structure for kefangleixing
-- ----------------------------
DROP TABLE IF EXISTS `kefangleixing`;
CREATE TABLE `kefangleixing`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kefangleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '客房类型',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `kefangleixing`(`kefangleixing` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1649006468309 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '客房类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kefangleixing
-- ----------------------------
INSERT INTO `kefangleixing` VALUES (31, '2022-04-04 00:20:37', '标准大床房');
INSERT INTO `kefangleixing` VALUES (32, '2022-04-04 00:20:37', '标准双床房');
INSERT INTO `kefangleixing` VALUES (33, '2022-04-04 00:20:37', '豪华大床房');
INSERT INTO `kefangleixing` VALUES (34, '2022-04-04 00:20:37', '豪华双床房');
INSERT INTO `kefangleixing` VALUES (35, '2022-04-04 00:20:37', '商务套房');
INSERT INTO `kefangleixing` VALUES (36, '2022-04-04 00:20:37', '家庭亲子房');
INSERT INTO `kefangleixing` VALUES (1649006468308, '2022-04-04 01:21:07', '行政景观套房');

-- ----------------------------
-- Table structure for kefangyuding
-- ----------------------------
DROP TABLE IF EXISTS `kefangyuding`;
CREATE TABLE `kefangyuding`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yudingbianhao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '预定编号',
  `kefangmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '客房名称',
  `kefangleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '客房类型',
  `kefangjiage` float NOT NULL COMMENT '客房价格',
  `shuliang` int NULL DEFAULT NULL COMMENT '数量',
  `zongjine` float NULL DEFAULT NULL COMMENT '总金额',
  `kefangtupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '客房图片',
  `jiudianmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '酒店名称',
  `jiudiandizhi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '酒店地址',
  `yonghuming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shoujihao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `yudingriqi` date NULL DEFAULT NULL COMMENT '预定日期',
  `ispay` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yudingbianhao`(`yudingbianhao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1649006857523 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '客房预定' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kefangyuding
-- ----------------------------
INSERT INTO `kefangyuding` VALUES (61, '2022-04-04 00:20:37', 'YD20260701001', '舒适标准大床房', '标准大床房', 268, 1, 268, 'upload/real_hotel_2.jpg', '云澜国际酒店', '深圳市南山区滨海大道 168 号', 'chenyu', '陈宇', '13900010001', '2026-07-05', '已支付');
INSERT INTO `kefangyuding` VALUES (62, '2022-04-04 00:20:37', 'YD20260701002', '雅致标准双床房', '标准双床房', 298, 2, 596, 'upload/real_hotel_6.jpg', '云澜国际酒店', '深圳市南山区滨海大道 168 号', 'linna', '林娜', '13900010002', '2026-07-06', '未支付');
INSERT INTO `kefangyuding` VALUES (63, '2022-04-04 00:20:37', 'YD20260701003', '城景豪华大床房', '豪华大床房', 428, 1, 428, 'upload/real_hotel_3.jpg', '云澜国际酒店', '深圳市南山区滨海大道 168 号', 'zhouwei', '周伟', '13900010003', '2026-07-07', '已支付');
INSERT INTO `kefangyuding` VALUES (64, '2022-04-04 00:20:37', 'YD20260701004', '臻选豪华双床房', '豪华双床房', 458, 1, 458, 'upload/real_hotel_4.jpg', '云澜国际酒店', '深圳市南山区滨海大道 168 号', 'huangmin', '黄敏', '13900010004', '2026-07-08', '已支付');
INSERT INTO `kefangyuding` VALUES (65, '2022-04-04 00:20:37', 'YD20260701005', '静雅商务套房', '商务套房', 688, 1, 688, 'upload/real_hotel_5.jpg', '云澜国际酒店', '深圳市南山区滨海大道 168 号', 'wukai', '吴凯', '13900010005', '2026-07-09', '未支付');
INSERT INTO `kefangyuding` VALUES (66, '2022-04-04 00:20:37', 'YD20260701006', '温馨家庭亲子房', '家庭亲子房', 588, 1, 588, 'upload/real_hotel_7.jpg', '云澜国际酒店', '深圳市南山区滨海大道 168 号', 'liqin', '李琴', '13900010006', '2026-07-10', '已支付');
INSERT INTO `kefangyuding` VALUES (1649006857522, '2022-04-04 01:27:37', 'YD20260701007', '行政湾景套房', '行政景观套房', 998, 2, 1996, 'upload/1649006659141.jpg', '云澜国际酒店', '深圳市南山区滨海大道 168 号', 'huyue', '胡月', '13612512514', '2026-07-11', '已支付');
INSERT INTO `kefangyuding` VALUES (1782923598288, '2026-07-02 00:33:18', '2026720331455362968', '舒适标准大床房', '标准大床房', 268, 0, 0, 'upload/real_hotel_2.jpg', '云澜国际酒店', '深圳市南山区滨海大道 168 号', '', '', '', NULL, '未支付');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '简介',
  `picture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1649006759281 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '酒店公告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (91, '2022-04-04 00:20:37', '暑期亲子入住礼遇上线', '暑期家庭客人可享儿童早餐、延迟退房和亲子欢迎礼。', 'upload/real_hotel_7.jpg', '<p>云澜国际酒店推出暑期亲子入住礼遇，预订家庭亲子房可享儿童洗漱用品、儿童早餐和 14:00 延迟退房服务。数量有限，请以实际房态为准。</p>');
INSERT INTO `news` VALUES (92, '2022-04-04 00:20:37', '商务会议套餐开放预订', '会议室、茶歇和商务套房组合优惠。', 'upload/real_hotel_1.jpg', '<p>面向企业客户推出半日会议和全天会议套餐，包含会议室、投影设备、茶歇服务和商务套房协议价，适合小型培训、项目评审和客户接待。</p>');
INSERT INTO `news` VALUES (93, '2022-04-04 00:20:37', '行政楼层服务升级通知', '行政景观套房新增欢迎水果和夜床服务。', 'upload/real_hotel_4.jpg', '<p>行政楼层服务升级，入住行政景观套房的客人可享欢迎水果、夜床服务和优先入住办理。酒店将持续提升高端住客体验。</p>');
INSERT INTO `news` VALUES (94, '2022-04-04 00:20:37', '停车场车位预约说明', '住店客人可在前台登记车牌享停车优惠。', 'upload/picture1.jpg', '<p>为提升高峰期入住效率，住店客人可提前联系前台登记车牌。酒店地下停车场实行先到先停，节假日期间建议提前预约。</p>');
INSERT INTO `news` VALUES (95, '2022-04-04 00:20:37', '早餐厅营业时间调整', '早餐供应时间调整为 06:30-10:30。', 'upload/real_hotel_5.jpg', '<p>自本周起，酒店早餐厅营业时间调整为 06:30-10:30，提供中西式热菜、现煮面档、咖啡、果汁和当季水果。</p>');
INSERT INTO `news` VALUES (96, '2022-04-04 00:20:37', '会员积分兑换规则更新', '会员可用积分兑换房型升级和延迟退房。', 'upload/picture3.jpg', '<p>会员积分兑换规则更新，积分可用于房型升级、延迟退房和部分餐饮消费抵扣。具体兑换比例以前台和系统显示为准。</p>');
INSERT INTO `news` VALUES (1649006759280, '2022-04-04 01:25:58', '周末城市度假套餐', '周末预订豪华房型享双人早餐和欢迎饮品。', 'upload/real_hotel_2.jpg', '<p>周末城市度假套餐上线，预订豪华大床房或豪华双床房可享双人早餐、欢迎饮品和周边游玩路线建议。</p>');

-- ----------------------------
-- Table structure for ruzhuanpai
-- ----------------------------
DROP TABLE IF EXISTS `ruzhuanpai`;
CREATE TABLE `ruzhuanpai`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yudingbianhao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '预定编号',
  `jiudianmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '酒店名称',
  `fangjianleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '房间类型',
  `shuliang` float NULL DEFAULT NULL COMMENT '数量',
  `kefangtupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '客房图片',
  `yonghuming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shoujihao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `fangjianhao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '房间号',
  `crossuserid` bigint NULL DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint NULL DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1649006926028 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '入住安排' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ruzhuanpai
-- ----------------------------
INSERT INTO `ruzhuanpai` VALUES (71, '2022-04-04 00:20:37', 'YD20260701001', '云澜国际酒店', '标准大床房', 1, 'upload/real_hotel_2.jpg', 'chenyu', '陈宇', '13900010001', '0806', 21, 61);
INSERT INTO `ruzhuanpai` VALUES (72, '2022-04-04 00:20:37', 'YD20260701002', '云澜国际酒店', '标准双床房', 2, 'upload/real_hotel_6.jpg', 'linna', '林娜', '13900010002', '0612,0613', 22, 62);
INSERT INTO `ruzhuanpai` VALUES (73, '2022-04-04 00:20:37', 'YD20260701003', '云澜国际酒店', '豪华大床房', 1, 'upload/real_hotel_3.jpg', 'zhouwei', '周伟', '13900010003', '1208', 23, 63);
INSERT INTO `ruzhuanpai` VALUES (74, '2022-04-04 00:20:37', 'YD20260701004', '云澜国际酒店', '豪华双床房', 1, 'upload/real_hotel_4.jpg', 'huangmin', '黄敏', '13900010004', '1110', 24, 64);
INSERT INTO `ruzhuanpai` VALUES (75, '2022-04-04 00:20:37', 'YD20260701005', '云澜国际酒店', '商务套房', 1, 'upload/real_hotel_5.jpg', 'wukai', '吴凯', '13900010005', '1502', 25, 65);
INSERT INTO `ruzhuanpai` VALUES (76, '2022-04-04 00:20:37', 'YD20260701006', '云澜国际酒店', '家庭亲子房', 1, 'upload/real_hotel_7.jpg', 'liqin', '李琴', '13900010006', '0901', 26, 66);
INSERT INTO `ruzhuanpai` VALUES (1649006926027, '2022-04-04 01:28:45', 'YD20260701007', '云澜国际酒店', '行政景观套房', 2, 'upload/1649006659141.jpg', 'huyue', '胡月', '13612512514', '1801,1802', 1649006333502, 1649006857522);

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint NULL DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收藏图片',
  `type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1717977022771 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1649006352671, '2022-04-04 01:19:12', 26, 56, 'jiudiankefang', '温馨家庭亲子房', 'upload/real_hotel_7.jpg', '1', NULL);
INSERT INTO `storeup` VALUES (1649006837386, '2022-04-04 01:27:17', 1649006333502, 1649006698870, 'jiudiankefang', '行政湾景套房', 'upload/1649006659141.jpg', '1', NULL);
INSERT INTO `storeup` VALUES (1717977013012, '2024-06-10 07:50:12', 21, 41, 'jiudianjianjie', '云澜国际酒店', 'upload/real_hotel_1.jpg', '1', NULL);
INSERT INTO `storeup` VALUES (1717977022770, '2024-06-10 07:50:21', 21, 52, 'jiudiankefang', '雅致标准双床房', 'upload/real_hotel_6.jpg', '1', NULL);

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1649006333502, 'huyue', 'yonghu', '用户', 'tr5dx105b8mbxgf8urv6pblo4vzxhq4u', '2022-04-04 01:19:08', '2022-04-04 02:28:54');
INSERT INTO `token` VALUES (2, 1, 'admin', 'users', '管理员', 'plpb00ci3898cjwqktf2mu9r66knugg7', '2022-04-04 01:20:07', '2024-06-10 08:48:20');
INSERT INTO `token` VALUES (3, 1649006455193, 'YG2024007', 'yuangong', '员工', 'qc5vl1stlgqdow4gzgqvi50abxrzjd62', '2022-04-04 01:26:32', '2022-04-04 02:28:25');
INSERT INTO `token` VALUES (4, 11, 'YG2024001', 'yuangong', '员工', '6op7uauw9xgmm5zofu5p39y2xk0dpv8t', '2024-06-10 07:49:28', '2026-07-02 01:32:38');
INSERT INTO `token` VALUES (5, 21, 'chenyu', 'yonghu', '用户', 'fcpub6u3l3womamuq7dlbqinsmkceu0k', '2024-06-10 07:49:42', '2026-07-02 01:31:38');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', '管理员', '2022-04-04 00:20:37');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '姓名',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `nianling` int NULL DEFAULT NULL COMMENT '年龄',
  `shoujihao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuming`(`yonghuming` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1649006333503 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (21, '2022-04-04 00:20:37', 'chenyu', '陈宇', '123456', '男', 29, '13900010001');
INSERT INTO `yonghu` VALUES (22, '2022-04-04 00:20:37', 'linna', '林娜', '123456', '女', 26, '13900010002');
INSERT INTO `yonghu` VALUES (23, '2022-04-04 00:20:37', 'zhouwei', '周伟', '123456', '男', 35, '13900010003');
INSERT INTO `yonghu` VALUES (24, '2022-04-04 00:20:37', 'huangmin', '黄敏', '123456', '女', 31, '13900010004');
INSERT INTO `yonghu` VALUES (25, '2022-04-04 00:20:37', 'wukai', '吴凯', '123456', '男', 42, '13900010005');
INSERT INTO `yonghu` VALUES (26, '2022-04-04 00:20:37', 'liqin', '李琴', '123456', '女', 24, '13900010006');
INSERT INTO `yonghu` VALUES (1649006333502, '2022-04-04 01:18:53', 'huyue', '胡月', '123456', '女', 28, '13612512514');

-- ----------------------------
-- Table structure for yuangong
-- ----------------------------
DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE `yuangong`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '密码',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `touxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '头像',
  `ruzhishijian` date NULL DEFAULT NULL COMMENT '入职时间',
  `zhiwei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '职位',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yuangonggonghao`(`yuangonggonghao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1649006455194 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '员工' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yuangong
-- ----------------------------
INSERT INTO `yuangong` VALUES (11, '2022-04-04 00:20:37', 'YG2024001', '李明', '123456', '男', '13800138001', 'upload/yuangong_touxiang1.jpg', '2021-03-15', '前台主管');
INSERT INTO `yuangong` VALUES (12, '2022-04-04 00:20:37', 'YG2024002', '王婷', '123456', '女', '13800138002', 'upload/yuangong_touxiang2.jpg', '2022-06-01', '客房经理');
INSERT INTO `yuangong` VALUES (13, '2022-04-04 00:20:37', 'YG2024003', '赵磊', '123456', '男', '13800138003', 'upload/yuangong_touxiang3.jpg', '2020-09-20', '值班经理');
INSERT INTO `yuangong` VALUES (14, '2022-04-04 00:20:37', 'YG2024004', '陈雪', '123456', '女', '13800138004', 'upload/yuangong_touxiang4.jpg', '2023-02-10', '预订专员');
INSERT INTO `yuangong` VALUES (15, '2022-04-04 00:20:37', 'YG2024005', '刘洋', '123456', '男', '13800138005', 'upload/yuangong_touxiang5.jpg', '2021-11-08', '礼宾主管');
INSERT INTO `yuangong` VALUES (16, '2022-04-04 00:20:37', 'YG2024006', '周倩', '123456', '女', '13800138006', 'upload/yuangong_touxiang6.jpg', '2022-04-18', '财务收银');
INSERT INTO `yuangong` VALUES (1649006455193, '2022-04-04 01:20:55', 'YG2024007', '孙浩', '123456', '男', '13800138007', 'upload/1649006446364.jpg', '2023-08-12', '客房服务员');

SET FOREIGN_KEY_CHECKS = 1;
