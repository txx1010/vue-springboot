/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : txx

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 13/10/2022 01:02:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `user` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, '中国共产党济南大学第四次代表大会隆重开幕', '::: hljs-center\n\n# 中国共产党济南大学第四次代表大会隆重开幕\n\n:::\n\n\n  ::: hljs-center\n\n###### 发表日期：2022-09-15      来源：党委宣传部　新闻中心\n\n:::\n\n牢记使命开新局，满怀信心向未来。9月15日上午，中国共产党济南大学第四次代表大会在雄壮激昂的国歌声中隆重开幕。中共山东省委教育工委副书记、省教育厅党组副书记、副厅长冯继康，省教育厅（省委教育工委）学校组织处处长孙启高、副处长范克岩出席开幕式。学校党委书记刘春华代表学校党委作工作报告，校长刘宗明主持开幕式。学校第四次党代会全体代表参加开幕式。\n\n本次大会是在全国上下喜迎党的二十大、向着第二个百年奋斗目标昂首迈进，全省上下锚定“走在前、开新局”砥砺前行，全校上下聚焦“冲一流”奋楫争先的关键时期召开的一次十分重要的会议。大会的主题是：坚持以习近平新时代中国特色社会主义思想为指导，深化改革开新局，凝心聚力冲一流，建设创新性、开放式、有特色的高水平应用研究型大学，为服务新时代社会主义现代化强省建设而努力奋斗。\n\n冯继康代表省委教育工委向大会的胜利召开表示热烈祝贺，向为学校建设发展做出辛勤努力、积极贡献的广大党员和师生员工致以诚挚问候。他指出，第三次党代会以来，济南大学党委在省委省政府的坚强领导下，坚持以习近平新时代中国特色社会主义思想为指导，深入学习贯彻党的十九大和十九届历次全会精神，贯彻落实习近平总书记关于教育的重要论述，深刻领会“两个确立”的决定性意义，增强“四个意识”、坚定“四个自信”、做到“两个维护”，团结带领各级党组织、广大党员和师生员工，在解放思想中统一思想，在凝聚共识中科学决策，在团结奋进中干事创业，高水平大学建设取得显著成效，为全省经济社会发展作出了重要贡献。他代表省委教育工委对即将产生的新一届学校党委提出三点希望：一是始终坚持以政治建设为统领，着力加强党的全面领导，切实为事业发展提供坚强保证；二是紧紧围绕立德树人根本任务，着力强化思想政治引领，切实培养担当民族复兴大任的时代新人；三是坚决扛起“冲一流”使命担当，着力推进内涵式高质量发展，切实在服务经济社会发展中贡献新力量。\n\n刘春华作了题为《深化改革开新局 凝心聚力冲一流 建设创新性 开放式 有特色的高水平应用研究型大学 为服务新时代社会主义现代化强省建设而努力奋斗》的报告。报告指出，第三次党代会以来，学校党委团结带领各级党组织、广大党员和师生员工，坚持以习近平新时代中国特色社会主义思想为指导，深入学习贯彻党的十九大和十九届历次全会精神，贯彻落实习近平总书记关于教育的重要论述，统一思想，科学决策，党的全面领导坚定有力，党建工作全面加强，高质量发展全面起势，推动高水平大学建设取得新成效，各项工作迈上新台阶，形成了必须坚持党的全面领导的根本要求、必须坚持立德树人的根本任务、必须坚持高质量内涵式的发展要义、必须坚持服务国家区域战略的责任担当、必须坚持改革创新的强大动力、必须坚持团结奋斗的思想根基、必须坚持全面从严治党的基本遵循的“七个必须”发展经验。\n\n报告提出，面对新的历史方位、新的战略要求、新的发展机遇，全体济大人必须凝聚上下同心的合力，必须坚定事争一流的决心，必须扛起披荆斩棘的担当，坚持“一二三”发展思路，在新时代的历史起点上开创事业发展新局面：坚持“一个目标”，跻身国家“双一流”建设高校，建成创新性、开放式、有特色的高水平应用研究型大学；坚持“两条主线”，扬优势强特色,抓改革激活力；坚持“三个阶段”，冲一流、争进位、建名校。\n\n报告强调，今后五年是济南大学深化改革、凝心聚力的五年，是抢抓机遇、大有可为的五年。学校要紧密团结在以习近平同志为核心的党中央周围，坚持以习近平新时代中国特色社会主义思想为指导，深入贯彻党的十九大和十九届历次全会精神，认真学习宣传贯彻党的二十大精神，深入贯彻落实省十二次党代会部署，锚定“走在前、开新局”，以立德树人为根本，以加强党的建设为引领，以“冲一流”建设为主线，以高质量内涵式发展为主题，以深化改革创新为动力，解放思想，勇担使命，凝心聚力，真抓实干，全力开创高水平大学建设新局面。\n\n报告指出，为确保完成五年目标任务，全校上下要全面落实“四五六”战略部署：强化四大战略，就是强化特色发展、强化创新发展、强化开放发展、强化协同发展；实施五大工程，就是实施高质量人才培养工程、实施高水平学科建设工程、实施高水平师资建设工程、实施高层次科研提升工程、实施高效能社会服务工程；夯实六大保障，就是文化建设要固本培元、内部治理要提质增效、管理服务要深度优化、民生保障要全面加强、基本条件要逐步改善、开放办学要彰显活力。\n\n报告强调，实现今后五年奋斗目标，要全面加强新时代学校党的建设，以习近平新时代中国特色社会主义思想为指导，坚决扛牢管党治党主体责任，旗帜鲜明加强党的政治建设，坚持不懈强化思想理论武装，持之以恒深化党的组织建设，坚定不移锻造过硬干部队伍，锲而不舍严格纪律作风建设，推进全面从严治党向纵深发展，为实现高水平大学建设奋斗目标提供坚强保证。\n\n报告最后强调，济大人依靠奋斗创造了辉煌，也必然要依靠奋斗赢得未来。全校共产党员和广大师生员工要紧密团结在以习近平同志为核心的党中央周围，高举中国特色社会主义伟大旗帜，深入贯彻党中央决策部署和省委工作要求，以永不懈怠的精神状态和一往无前的奋斗姿态，深化改革开新局，凝心聚力冲一流，建设创新性、开放式、有特色的高水平应用研究型大学，为服务新时代社会主义现代化强省建设而努力奋斗。\n\n会上，中共济南大学纪律检查委员会作了书面工作报告。\n\n在职民主党派校领导，特邀嘉宾，学校部分老领导，党员中层干部，学校民主党派负责人、市级以上党代表、人大代表、政协委员及专家教授代表应邀参加开幕式。\n\n###### 摄影：张伟、王林珍       摄像：刘伟        编辑：赵华磊        编审：贾海宁\n\n \n\n \n\n \n\n\n', '管理员', '2022-08-30 22:42:56');
INSERT INTO `article` VALUES (2, '中国共产党济南大学第四次代表大会预备会议召开', '::: hljs-center\n\n# 中国共产党济南大学第四次代表大会预备会议召开\n\n:::\n\n::: hljs-center\n\n  ###### 发表日期：2022-09-14      来源：党委宣传部　新闻中心\n\n:::\n\n\n9月14日下午，中国共产党济南大学第四次代表大会预备会议在第一学术报告厅召开。学校党委书记、党代会筹备工作领导小组组长刘春华参加会议并讲话，校长刘宗明主持会议，学校党委副书记、党代会代表资格审查组组长查玉喜作关于代表资格的审查报告。学校第四次党代会全体代表参加会议。\n\n刘春华作了中国共产党济南大学第四次代表大会筹备情况报告。她指出，第三次党代会以来，学校党委团结带领全校党员和广大师生员工，全面贯彻党的教育方针，认真落实立德树人根本任务，紧抓“双一流”建设战略机遇，持续加强党的建设和思想政治工作，人才培养、科学研究、社会服务、文化传承创新、国际交流合作不断取得新成绩，学校综合实力和办学水平进一步提升。面对新形势新任务，需要集中全校共产党员和广大师生员工的智慧和力量，客观全面总结过去，认真系统谋划未来，动员全校党员和广大师生员工牢记使命开新局、满怀信心向未来。\n\n刘春华表示，在省委的正确领导和省委教育工委的指导下，经过全校各级党组织和全体党员的共同努力，中国共产党济南大学第四次代表大会各项筹备工作认真扎实、周密有序，党代会的各项筹备工作已经全部完成、到位。学校第四次党代会是全校共产党员和师生员工政治生活中的一件大事，也是一次贯彻新思想、对标新时代、勇担新使命、开启新征程的盛会。对于进一步加强党的建设，增强党组织的凝聚力和战斗力，推动学校向着高水平大学迈进，具有十分重要的意义。\n\n刘春华代表学校党委对开好党代会提出明确要求。一是要高度重视、忠诚履职。全体代表要主动肩负起全校师生员工的重托，履行好党章赋予的神圣职责，完成好大会安排的各项任务。二是要本着对党高度负责、对师生员工高度负责、对学校事业发展高度负责的态度审议两个报告。切实把审议报告的过程转化成统一思想、凝聚共识、汇聚力量的过程，自觉用党代会精神统一思想、指导行动。三是要严守政治纪律、政治规矩。始终绷紧换届纪律这根弦，正确行使民主权利，依法依规参与换届选举，努力营造清明清正清新会风。\n\n\n::: hljs-left\n\n###### 撰稿：王林珍　　编辑：张伟　　编审：贾海宁\n\n:::\n\n\n\n', '管理员', '2022-08-30 22:42:57');

-- ----------------------------
-- Table structure for clock
-- ----------------------------
DROP TABLE IF EXISTS `clock`;
CREATE TABLE `clock`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名称',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '打卡位置',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '打卡时间',
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clock
-- ----------------------------
INSERT INTO `clock` VALUES (9, 'ddd', '湖南省邵阳市', '2022-09-14', NULL);

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '课程名称',
  `no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '编号',
  `score` int NULL DEFAULT NULL COMMENT '学分',
  `times` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '上课时间',
  `room` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '教室',
  `teacher_id` int NULL DEFAULT NULL COMMENT '授课老师id',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否必修',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, '大学物理', '10021', 10, '40', 'A111', 50, '是');
INSERT INTO `course` VALUES (2, '高等数学', '10032', 10, '40', 'B102', 50, '是');
INSERT INTO `course` VALUES (3, '大学英语', '26000', 8, '30', 'C105', 50, '是');
INSERT INTO `course` VALUES (4, 'C语言基础', '100023', 20, '51', 'J403', 86, '是');
INSERT INTO `course` VALUES (5, '音乐鉴赏', '78444', 8, '20', 'Y123', 86, '否');
INSERT INTO `course` VALUES (6, '毛泽东思想概论', '10075', 20, '60', 'A305', 86, '是');

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '考试名称',
  `room` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '教室',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '考试时间',
  `teacher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '老师',
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '未开始' COMMENT '考试状态',
  `course_id` int NULL DEFAULT NULL COMMENT '课程id',
  `duration` int NULL DEFAULT NULL COMMENT '持续时间(分)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES (1, '大学物理考试', 'A-101', '2022-10-12 17:50', '张老师', '已结束', 1, 120);
INSERT INTO `exam` VALUES (3, '大学英语考试', 'B-101', '2022-10-12 17:50', '王老师', '已结束', 3, 120);

-- ----------------------------
-- Table structure for exam_paper
-- ----------------------------
DROP TABLE IF EXISTS `exam_paper`;
CREATE TABLE `exam_paper`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `exam_id` int NULL DEFAULT NULL COMMENT '考试id',
  `paper_id` int NULL DEFAULT NULL COMMENT '试卷id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '多对多，多个考试对应多个组卷' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_paper
-- ----------------------------
INSERT INTO `exam_paper` VALUES (1, 3, 1);
INSERT INTO `exam_paper` VALUES (7, 1, 1);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '单价',
  `store` int NULL DEFAULT NULL COMMENT '库存',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '单位',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '三毛流浪记', 30.00, 1000, '本', 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg');
INSERT INTO `goods` VALUES (10, '毛泽东选集', 40.00, 100, '本', 'http://localhost:9090/file/75b7f4551d5b4ab18386aaec8aaa28a9.png');
INSERT INTO `goods` VALUES (11, 'java', 10.00, 100, '本', 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg');

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `teacher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '专业指导员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES (1, '计算机科学与技术', '王群');
INSERT INTO `major` VALUES (2, '英语专业', '李静');
INSERT INTO `major` VALUES (3, '电子信息工程', '周易');

-- ----------------------------
-- Table structure for major_course
-- ----------------------------
DROP TABLE IF EXISTS `major_course`;
CREATE TABLE `major_course`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `major_id` int NULL DEFAULT NULL COMMENT '专业id',
  `course_id` int NULL DEFAULT NULL COMMENT '课程id',
  `week_day` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '日期',
  `section` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第几节',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of major_course
-- ----------------------------
INSERT INTO `major_course` VALUES (6, 3, 1, '周一', '一');
INSERT INTO `major_course` VALUES (7, 3, 1, '周三', '四');
INSERT INTO `major_course` VALUES (8, 2, 3, '周四', '四');
INSERT INTO `major_course` VALUES (9, 2, 1, '周三', '二');
INSERT INTO `major_course` VALUES (10, 2, 4, '周五', '二');
INSERT INTO `major_course` VALUES (11, 1, 1, '周二', '三');
INSERT INTO `major_course` VALUES (12, 1, 1, '周三', '四');
INSERT INTO `major_course` VALUES (13, 1, 3, '周四', '三');
INSERT INTO `major_course` VALUES (14, 1, 3, '周五', '二');
INSERT INTO `major_course` VALUES (15, 1, 4, '周一', '三');
INSERT INTO `major_course` VALUES (16, 1, 2, '周一', '四');
INSERT INTO `major_course` VALUES (17, 1, 6, '周二', '一');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单时间',
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '待支付' COMMENT '支付状态',
  `total` decimal(10, 2) NULL DEFAULT NULL COMMENT '订单总价',
  `user_id` int NULL DEFAULT NULL COMMENT '用户id',
  `payment_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '支付时间',
  `alipay_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '支付宝交易号',
  `return_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '退款时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (27, '202210121665556209072', '毛泽东选集', '2022-10-12 14:30:09', '已退款', 40.00, 85, '2022-10-12 14:32:39', '2022101222001408060501584165', '2022-10-12 14:34:10');

-- ----------------------------
-- Table structure for paper
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `score` int NULL DEFAULT NULL COMMENT '总分',
  `duration` int NULL DEFAULT NULL COMMENT '时长',
  `course_id` int NULL DEFAULT NULL COMMENT '课程id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES (1, '大学物理考试试卷', 100, 60, 1);
INSERT INTO `paper` VALUES (2, '大学英语考卷', NULL, NULL, 3);

-- ----------------------------
-- Table structure for paper_question
-- ----------------------------
DROP TABLE IF EXISTS `paper_question`;
CREATE TABLE `paper_question`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `paper_id` int NULL DEFAULT NULL COMMENT '试卷id',
  `question_id` int NULL DEFAULT NULL COMMENT '题目id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '多对多的试卷与题目映射表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paper_question
-- ----------------------------
INSERT INTO `paper_question` VALUES (43, 1, 20);
INSERT INTO `paper_question` VALUES (44, 1, 8);
INSERT INTO `paper_question` VALUES (45, 1, 1);
INSERT INTO `paper_question` VALUES (46, 1, 11);
INSERT INTO `paper_question` VALUES (47, 1, 26);
INSERT INTO `paper_question` VALUES (48, 1, 23);
INSERT INTO `paper_question` VALUES (49, 1, 25);
INSERT INTO `paper_question` VALUES (50, 1, 12);
INSERT INTO `paper_question` VALUES (51, 1, 28);
INSERT INTO `paper_question` VALUES (52, 1, 3);

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `type` int NULL DEFAULT NULL COMMENT '类型：1选择，2判断，3问答',
  `a` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'a选项',
  `b` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'b选项',
  `c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'c选项',
  `d` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'd选项',
  `score` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分数',
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '答案',
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '解析',
  `user_id` int NULL DEFAULT NULL COMMENT '出题人',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '出题时间',
  `course_id` int NULL DEFAULT NULL COMMENT '课程id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (1, '这个功能做的好不好1', 1, '很好', '非常好', ' 超级好', '无敌好', '5', 'D', '这个功能做的好！！', 1, '2022-09-03 22:56:38', 1);
INSERT INTO `question` VALUES (2, '刘亦菲美不美', 2, NULL, NULL, NULL, NULL, '5', '是', '刘亦菲当然美！', 1, '2022-09-03 22:56:38', 2);
INSERT INTO `question` VALUES (3, '吾孰与城北徐公美1', 3, NULL, NULL, NULL, NULL, '10', '君美甚，徐公何能及君也！', 'you are the most beautiful', 1, '2022-09-03 22:58:29', 1);
INSERT INTO `question` VALUES (8, '这个功能做的好不好2', 1, '很好', '非常好', ' 超级好', '无敌好', '5', 'D', '这个功能做的好！！', 1, '2022-09-03 22:56:38', 1);
INSERT INTO `question` VALUES (9, '刘亦菲美不美', 2, NULL, NULL, NULL, NULL, '5', '是', '刘亦菲当然美！', 1, '2022-09-03 22:56:38', 3);
INSERT INTO `question` VALUES (10, '吾孰与城北徐公美', 3, NULL, NULL, NULL, NULL, '10', '君美甚，徐公何能及君也！', 'you are the most beautiful', 1, '2022-09-03 22:58:29', 3);
INSERT INTO `question` VALUES (11, '这个功能做的好不好3', 1, '很好', '非常好', ' 超级好', '无敌好', '5', 'D', '这个功能做的好！！', 1, '2022-09-03 22:56:38', 1);
INSERT INTO `question` VALUES (12, '刘亦菲美不美1', 2, NULL, NULL, NULL, NULL, '5', '是', '刘亦菲当然美！', 1, '2022-09-03 22:56:38', 1);
INSERT INTO `question` VALUES (13, '吾孰与城北徐公美2', 3, NULL, NULL, NULL, NULL, '10', '君美甚，徐公何能及君也！', 'you are the most beautiful', 1, '2022-09-03 22:58:29', 1);
INSERT INTO `question` VALUES (14, '这个功能做的好不好4', 1, '很好', '非常好', ' 超级好', '无敌好', '5', 'D', '这个功能做的好！！', 1, '2022-09-03 22:56:38', 1);
INSERT INTO `question` VALUES (15, '刘亦菲美不美', 2, NULL, NULL, NULL, NULL, '5', '是', '刘亦菲当然美！', 1, '2022-09-03 22:56:38', 3);
INSERT INTO `question` VALUES (16, '吾孰与城北徐公美', 3, NULL, NULL, NULL, NULL, '10', '君美甚，徐公何能及君也！', 'you are the most beautiful', 1, '2022-09-03 22:58:29', 3);
INSERT INTO `question` VALUES (17, '这个功能做的好不好', 1, '很好', '非常好', ' 超级好', '无敌好', '5', 'D', '这个功能做的好！！', 1, '2022-09-03 22:56:38', 2);
INSERT INTO `question` VALUES (18, '刘亦菲美不美', 2, NULL, NULL, NULL, NULL, '5', '是', '刘亦菲当然美！', 1, '2022-09-03 22:56:38', 3);
INSERT INTO `question` VALUES (19, '吾孰与城北徐公美5', 3, NULL, NULL, NULL, NULL, '10', '君美甚，徐公何能及君也！', 'you are the most beautiful', 1, '2022-09-03 22:58:29', 3);
INSERT INTO `question` VALUES (20, '这个功能做的好不好5', 1, '很好', '非常好', ' 超级好', '无敌好', '5', 'D', '这个功能做的好！！', 1, '2022-09-03 22:56:38', 1);
INSERT INTO `question` VALUES (21, '刘亦菲美不美', 2, NULL, NULL, NULL, NULL, '5', '是', '刘亦菲当然美！', 1, '2022-09-03 22:56:38', 3);
INSERT INTO `question` VALUES (22, '吾孰与城北徐公美', 3, NULL, NULL, NULL, NULL, '10', '君美甚，徐公何能及君也！', 'you are the most beautiful', 1, '2022-09-03 22:58:29', 3);
INSERT INTO `question` VALUES (23, '刘亦菲美不美2', 2, NULL, NULL, NULL, NULL, '5', '是', '刘亦菲当然美！', 1, '2022-09-03 22:56:38', 1);
INSERT INTO `question` VALUES (24, '刘亦菲美不美3', 2, NULL, NULL, NULL, NULL, '5', '是', '刘亦菲当然美！', 1, '2022-09-03 22:56:38', 1);
INSERT INTO `question` VALUES (25, '刘亦菲美不美4', 2, NULL, NULL, NULL, NULL, '5', '是', '刘亦菲当然美！', 1, '2022-09-03 22:56:38', 1);
INSERT INTO `question` VALUES (26, '刘亦菲美不美5', 2, NULL, NULL, NULL, NULL, '5', '是', '刘亦菲当然美！', 1, '2022-09-03 22:56:38', 1);
INSERT INTO `question` VALUES (27, '吾孰与城北徐公美3', 3, NULL, NULL, NULL, NULL, '10', '君美甚，徐公何能及君也！', 'you are the most beautiful', 1, '2022-09-03 22:58:29', 1);
INSERT INTO `question` VALUES (28, '吾孰与城北徐公美4', 3, NULL, NULL, NULL, NULL, '10', '君美甚，徐公何能及君也！', 'you are the most beautiful', 1, '2022-09-03 22:58:29', 1);
INSERT INTO `question` VALUES (29, '吾孰与城北徐公美5', 3, NULL, NULL, NULL, NULL, '10', '君美甚，徐公何能及君也！', 'you are the most beautiful', 1, '2022-09-03 22:58:29', 1);
INSERT INTO `question` VALUES (30, '吾孰与城北徐公美6', 3, NULL, NULL, NULL, NULL, '10', '君美甚，徐公何能及君也！', 'you are the most beautiful', 1, '2022-09-03 22:58:29', 1);

-- ----------------------------
-- Table structure for sign
-- ----------------------------
DROP TABLE IF EXISTS `sign`;
CREATE TABLE `sign`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `exam_id` int NULL DEFAULT NULL COMMENT '考试id',
  `user_id` int NULL DEFAULT NULL COMMENT '学生id',
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '待审核' COMMENT '审核状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `exam_user_index`(`exam_id` ASC, `user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sign
-- ----------------------------
INSERT INTO `sign` VALUES (1, 1, 85, '审核通过');
INSERT INTO `sign` VALUES (10, 3, 85, '审核通过');

-- ----------------------------
-- Table structure for student_course
-- ----------------------------
DROP TABLE IF EXISTS `student_course`;
CREATE TABLE `student_course`  (
  `student_id` int NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`student_id`, `course_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_course
-- ----------------------------
INSERT INTO `student_course` VALUES (85, 1);
INSERT INTO `student_course` VALUES (85, 2);
INSERT INTO `student_course` VALUES (85, 3);

-- ----------------------------
-- Table structure for student_paper
-- ----------------------------
DROP TABLE IF EXISTS `student_paper`;
CREATE TABLE `student_paper`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `exam_id` int NULL DEFAULT NULL COMMENT '考试id',
  `paper` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '试卷内容',
  `user_id` int NULL DEFAULT NULL COMMENT '学生id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '提交时间',
  `score` int NULL DEFAULT 0 COMMENT '得分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_paper
-- ----------------------------
INSERT INTO `student_paper` VALUES (13, 1, '[{\"id\":20,\"name\":\"这个功能做的好不好5\",\"type\":1,\"a\":\"很好\",\"b\":\"非常好\",\"c\":\" 超级好\",\"d\":\"无敌好\",\"score\":\"5\",\"answer\":\"D\",\"detail\":\"这个功能做的好！！\",\"userId\":1,\"time\":\"2022-09-03 22:56:38\",\"courseId\":1,\"studentAnswer\":\"D\"},{\"id\":8,\"name\":\"这个功能做的好不好2\",\"type\":1,\"a\":\"很好\",\"b\":\"非常好\",\"c\":\" 超级好\",\"d\":\"无敌好\",\"score\":\"5\",\"answer\":\"D\",\"detail\":\"这个功能做的好！！\",\"userId\":1,\"time\":\"2022-09-03 22:56:38\",\"courseId\":1,\"studentAnswer\":\"C\"},{\"id\":1,\"name\":\"这个功能做的好不好1\",\"type\":1,\"a\":\"很好\",\"b\":\"非常好\",\"c\":\" 超级好\",\"d\":\"无敌好\",\"score\":\"5\",\"answer\":\"D\",\"detail\":\"这个功能做的好！！\",\"userId\":1,\"time\":\"2022-09-03 22:56:38\",\"courseId\":1,\"studentAnswer\":\"B\"},{\"id\":11,\"name\":\"这个功能做的好不好3\",\"type\":1,\"a\":\"很好\",\"b\":\"非常好\",\"c\":\" 超级好\",\"d\":\"无敌好\",\"score\":\"5\",\"answer\":\"D\",\"detail\":\"这个功能做的好！！\",\"userId\":1,\"time\":\"2022-09-03 22:56:38\",\"courseId\":1},{\"id\":26,\"name\":\"刘亦菲美不美5\",\"type\":2,\"a\":null,\"b\":null,\"c\":null,\"d\":null,\"score\":\"5\",\"answer\":\"是\",\"detail\":\"刘亦菲当然美！\",\"userId\":1,\"time\":\"2022-09-03 22:56:38\",\"courseId\":1,\"studentAnswer\":\"是\"},{\"id\":23,\"name\":\"刘亦菲美不美2\",\"type\":2,\"a\":null,\"b\":null,\"c\":null,\"d\":null,\"score\":\"5\",\"answer\":\"是\",\"detail\":\"刘亦菲当然美！\",\"userId\":1,\"time\":\"2022-09-03 22:56:38\",\"courseId\":1,\"studentAnswer\":\"否\"},{\"id\":25,\"name\":\"刘亦菲美不美4\",\"type\":2,\"a\":null,\"b\":null,\"c\":null,\"d\":null,\"score\":\"5\",\"answer\":\"是\",\"detail\":\"刘亦菲当然美！\",\"userId\":1,\"time\":\"2022-09-03 22:56:38\",\"courseId\":1,\"studentAnswer\":\"是\"},{\"id\":12,\"name\":\"刘亦菲美不美1\",\"type\":2,\"a\":null,\"b\":null,\"c\":null,\"d\":null,\"score\":\"5\",\"answer\":\"是\",\"detail\":\"刘亦菲当然美！\",\"userId\":1,\"time\":\"2022-09-03 22:56:38\",\"courseId\":1},{\"id\":28,\"name\":\"吾孰与城北徐公美4\",\"type\":3,\"a\":null,\"b\":null,\"c\":null,\"d\":null,\"score\":\"10\",\"answer\":\"君美甚，徐公何能及君也！\",\"detail\":\"you are the most beautiful\",\"userId\":1,\"time\":\"2022-09-03 22:58:29\",\"courseId\":1,\"studentAnswer\":\"111\"},{\"id\":3,\"name\":\"吾孰与城北徐公美1\",\"type\":3,\"a\":null,\"b\":null,\"c\":null,\"d\":null,\"score\":\"10\",\"answer\":\"君美甚，徐公何能及君也！\",\"detail\":\"you are the most beautiful\",\"userId\":1,\"time\":\"2022-09-03 22:58:29\",\"courseId\":1,\"studentAnswer\":\"22344\"}]', 85, '2022-09-11 20:36:50', 15);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 281 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1, 'user', 'el-icon-user', 'icon');
INSERT INTO `sys_dict` VALUES (2, 'house', 'el-icon-house', 'icon');
INSERT INTO `sys_dict` VALUES (3, 'menu', 'el-icon-menu', 'icon');
INSERT INTO `sys_dict` VALUES (4, 's-custom', 'el-icon-s-custom', 'icon');
INSERT INTO `sys_dict` VALUES (5, 's-grid', 'el-icon-s-grid', 'icon');
INSERT INTO `sys_dict` VALUES (6, 'document', 'el-icon-document', 'icon');
INSERT INTO `sys_dict` VALUES (7, 'coffee', 'el-icon-coffee\r\n', 'icon');
INSERT INTO `sys_dict` VALUES (8, 's-marketing', 'el-icon-s-marketing', 'icon');
INSERT INTO `sys_dict` VALUES (9, 'phone-outline', 'el-icon-phone-outline', 'icon');
INSERT INTO `sys_dict` VALUES (10, 'platform-eleme', 'el-icon-platform-eleme', 'icon');
INSERT INTO `sys_dict` VALUES (11, 'eleme', 'el-icon-eleme', 'icon');
INSERT INTO `sys_dict` VALUES (12, 'delete-solid', 'el-icon-delete-solid', 'icon');
INSERT INTO `sys_dict` VALUES (13, 'delete', 'el-icon-delete', 'icon');
INSERT INTO `sys_dict` VALUES (14, 's-tools', 'el-icon-s-tools', 'icon');
INSERT INTO `sys_dict` VALUES (15, 'setting', 'el-icon-setting', 'icon');
INSERT INTO `sys_dict` VALUES (16, 'user-solid', 'el-icon-user-solid', 'icon');
INSERT INTO `sys_dict` VALUES (17, 'phone', 'el-icon-phone', 'icon');
INSERT INTO `sys_dict` VALUES (18, 'more', 'el-icon-more', 'icon');
INSERT INTO `sys_dict` VALUES (19, 'more-outline', 'el-icon-more-outline', 'icon');
INSERT INTO `sys_dict` VALUES (20, 'star-on', 'el-icon-star-on', 'icon');
INSERT INTO `sys_dict` VALUES (21, 'star-off', 'el-icon-star-off', 'icon');
INSERT INTO `sys_dict` VALUES (22, 's-goods', 'el-icon-s-goods', 'icon');
INSERT INTO `sys_dict` VALUES (23, 'goods', 'el-icon-goods', 'icon');
INSERT INTO `sys_dict` VALUES (24, 'warning', 'el-icon-warning', 'icon');
INSERT INTO `sys_dict` VALUES (25, 'warning-outline', 'el-icon-warning-outline', 'icon');
INSERT INTO `sys_dict` VALUES (26, 'question', 'el-icon-question', 'icon');
INSERT INTO `sys_dict` VALUES (27, 'info', 'el-icon-info', 'icon');
INSERT INTO `sys_dict` VALUES (28, 'remove', 'el-icon-remove', 'icon');
INSERT INTO `sys_dict` VALUES (29, 'circle-plus', 'el-icon-circle-plus', 'icon');
INSERT INTO `sys_dict` VALUES (30, 'success', 'el-icon-success', 'icon');
INSERT INTO `sys_dict` VALUES (31, 'error', 'el-icon-error', 'icon');
INSERT INTO `sys_dict` VALUES (32, 'zoom-in', 'el-icon-zoom-in', 'icon');
INSERT INTO `sys_dict` VALUES (33, 'zoom-out', 'el-icon-zoom-out', 'icon');
INSERT INTO `sys_dict` VALUES (34, 'remove-outline', 'el-icon-remove-outline', 'icon');
INSERT INTO `sys_dict` VALUES (35, 'circle-plus-outline', 'el-icon-circle-plus-outline', 'icon');
INSERT INTO `sys_dict` VALUES (36, 'circle-check', 'el-icon-circle-check', 'icon');
INSERT INTO `sys_dict` VALUES (37, 'circle-close', 'el-icon-circle-close', 'icon');
INSERT INTO `sys_dict` VALUES (38, 's-help', 'el-icon-s-help', 'icon');
INSERT INTO `sys_dict` VALUES (39, 'help', 'el-icon-help', 'icon');
INSERT INTO `sys_dict` VALUES (40, 'minus', 'el-icon-minus', 'icon');
INSERT INTO `sys_dict` VALUES (41, 'plus', 'el-icon-plus', 'icon');
INSERT INTO `sys_dict` VALUES (42, 'check', 'el-icon-check', 'icon');
INSERT INTO `sys_dict` VALUES (43, 'close', 'el-icon-close', 'icon');
INSERT INTO `sys_dict` VALUES (44, 'picture', 'el-icon-picture', 'icon');
INSERT INTO `sys_dict` VALUES (45, 'picture-outline', 'el-icon-picture-outline', 'icon');
INSERT INTO `sys_dict` VALUES (46, 'picture-outline-round', 'el-icon-picture-outline-round', 'icon');
INSERT INTO `sys_dict` VALUES (47, 'upload', 'el-icon-upload', 'icon');
INSERT INTO `sys_dict` VALUES (48, 'upload2', 'el-icon-upload2', 'icon');
INSERT INTO `sys_dict` VALUES (49, 'download', 'el-icon-download', 'icon');
INSERT INTO `sys_dict` VALUES (50, 'camera-solid', 'el-icon-camera-solid', 'icon');
INSERT INTO `sys_dict` VALUES (51, 'camera', 'el-icon-camera', 'icon');
INSERT INTO `sys_dict` VALUES (52, 'video-camera-solid', 'el-icon-video-camera-solid', 'icon');
INSERT INTO `sys_dict` VALUES (53, 'video-camera', 'el-icon-video-camera', 'icon');
INSERT INTO `sys_dict` VALUES (54, 'message-solid', 'el-icon-message-solid', 'icon');
INSERT INTO `sys_dict` VALUES (55, 'bell', 'el-icon-bell', 'icon');
INSERT INTO `sys_dict` VALUES (56, 's-cooperation', 'el-icon-s-cooperation', 'icon');
INSERT INTO `sys_dict` VALUES (57, 's-order', 'el-icon-s-order', 'icon');
INSERT INTO `sys_dict` VALUES (58, 's-platform', 'el-icon-s-platform', 'icon');
INSERT INTO `sys_dict` VALUES (59, 's-fold', 'el-icon-s-fold', 'icon');
INSERT INTO `sys_dict` VALUES (60, 's-unfold', 'el-icon-s-unfold', 'icon');
INSERT INTO `sys_dict` VALUES (61, 's-operation', 'el-icon-s-operation', 'icon');
INSERT INTO `sys_dict` VALUES (62, 's-promotion', 'el-icon-s-promotion', 'icon');
INSERT INTO `sys_dict` VALUES (63, 's-home', 'el-icon-s-home', 'icon');
INSERT INTO `sys_dict` VALUES (64, 's-release', 'el-icon-s-release', 'icon');
INSERT INTO `sys_dict` VALUES (65, 's-ticket', 'el-icon-s-ticket', 'icon');
INSERT INTO `sys_dict` VALUES (66, 's-management', 'el-icon-s-management', 'icon');
INSERT INTO `sys_dict` VALUES (67, 's-open', 'el-icon-s-open', 'icon');
INSERT INTO `sys_dict` VALUES (68, 's-shop', 'el-icon-s-shop', 'icon');
INSERT INTO `sys_dict` VALUES (69, 's-flag', 'el-icon-s-flag', 'icon');
INSERT INTO `sys_dict` VALUES (70, 's-comment', 'el-icon-s-comment', 'icon');
INSERT INTO `sys_dict` VALUES (71, 's-finance', 'el-icon-s-finance', 'icon');
INSERT INTO `sys_dict` VALUES (72, 's-claim', 'el-icon-s-claim', 'icon');
INSERT INTO `sys_dict` VALUES (73, 's-opportunity', 'el-icon-s-opportunity', 'icon');
INSERT INTO `sys_dict` VALUES (74, 's-data', 'el-icon-s-data', 'icon');
INSERT INTO `sys_dict` VALUES (75, 's-check', 'el-icon-s-check', 'icon');
INSERT INTO `sys_dict` VALUES (76, 'share', 'el-icon-share', 'icon');
INSERT INTO `sys_dict` VALUES (77, 'd-caret', 'el-icon-d-caret', 'icon');
INSERT INTO `sys_dict` VALUES (78, 'caret-left', 'el-icon-caret-left', 'icon');
INSERT INTO `sys_dict` VALUES (79, 'caret-right', 'el-icon-caret-right', 'icon');
INSERT INTO `sys_dict` VALUES (80, 'caret-bottom', 'el-icon-caret-bottom', 'icon');
INSERT INTO `sys_dict` VALUES (81, 'caret-top', 'el-icon-caret-top', 'icon');
INSERT INTO `sys_dict` VALUES (82, 'bottom-left', 'el-icon-bottom-left', 'icon');
INSERT INTO `sys_dict` VALUES (83, 'bottom-right', 'el-icon-bottom-right', 'icon');
INSERT INTO `sys_dict` VALUES (84, 'back', 'el-icon-back', 'icon');
INSERT INTO `sys_dict` VALUES (85, 'right', 'el-icon-right', 'icon');
INSERT INTO `sys_dict` VALUES (86, 'bottom', 'el-icon-bottom', 'icon');
INSERT INTO `sys_dict` VALUES (87, 'top', 'el-icon-top', 'icon');
INSERT INTO `sys_dict` VALUES (88, 'top-left', 'el-icon-top-left', 'icon');
INSERT INTO `sys_dict` VALUES (89, 'top-right', 'el-icon-top-right', 'icon');
INSERT INTO `sys_dict` VALUES (90, 'arrow-left', 'el-icon-arrow-left', 'icon');
INSERT INTO `sys_dict` VALUES (91, 'arrow-right', 'el-icon-arrow-right', 'icon');
INSERT INTO `sys_dict` VALUES (92, 'arrow-down', 'el-icon-arrow-down', 'icon');
INSERT INTO `sys_dict` VALUES (93, 'arrow-up', 'el-icon-arrow-up', 'icon');
INSERT INTO `sys_dict` VALUES (94, 'd-arrow-left', 'el-icon-d-arrow-left', 'icon');
INSERT INTO `sys_dict` VALUES (95, 'd-arrow-right', 'el-icon-d-arrow-right', 'icon');
INSERT INTO `sys_dict` VALUES (96, 'video-pause', 'el-icon-video-pause', 'icon');
INSERT INTO `sys_dict` VALUES (97, 'video-play', 'el-icon-video-play', 'icon');
INSERT INTO `sys_dict` VALUES (98, 'refresh', 'el-icon-refresh', 'icon');
INSERT INTO `sys_dict` VALUES (99, 'refresh-right', 'el-icon-refresh-right', 'icon');
INSERT INTO `sys_dict` VALUES (100, 'refresh-left', 'el-icon-refresh-left', 'icon');
INSERT INTO `sys_dict` VALUES (101, 'finished', 'el-icon-finished', 'icon');
INSERT INTO `sys_dict` VALUES (102, 'sort', 'el-icon-sort', 'icon');
INSERT INTO `sys_dict` VALUES (103, 'sort-up', 'el-icon-sort-up', 'icon');
INSERT INTO `sys_dict` VALUES (104, 'sort-down', 'el-icon-sort-down', 'icon');
INSERT INTO `sys_dict` VALUES (105, 'rank', 'el-icon-rank', 'icon');
INSERT INTO `sys_dict` VALUES (106, 'loading', 'el-icon-loading', 'icon');
INSERT INTO `sys_dict` VALUES (107, 'view', 'el-icon-view', 'icon');
INSERT INTO `sys_dict` VALUES (108, 'c-scale-to-original', 'el-icon-c-scale-to-original', 'icon');
INSERT INTO `sys_dict` VALUES (109, 'date', 'el-icon-date', 'icon');
INSERT INTO `sys_dict` VALUES (110, 'edit', 'el-icon-edit', 'icon');
INSERT INTO `sys_dict` VALUES (111, 'edit-outline', 'el-icon-edit-outline', 'icon');
INSERT INTO `sys_dict` VALUES (112, 'folder', 'el-icon-folder', 'icon');
INSERT INTO `sys_dict` VALUES (113, 'folder-opened', 'el-icon-folder-opened', 'icon');
INSERT INTO `sys_dict` VALUES (114, 'folder-add', 'el-icon-folder-add', 'icon');
INSERT INTO `sys_dict` VALUES (115, 'folder-remove', 'el-icon-folder-remove', 'icon');
INSERT INTO `sys_dict` VALUES (116, 'folder-delete', 'el-icon-folder-delete', 'icon');
INSERT INTO `sys_dict` VALUES (117, 'folder-checked', 'el-icon-folder-checked', 'icon');
INSERT INTO `sys_dict` VALUES (118, 'tickets', 'el-icon-tickets', 'icon');
INSERT INTO `sys_dict` VALUES (119, 'document-remove', 'el-icon-document-remove', 'icon');
INSERT INTO `sys_dict` VALUES (120, 'document-delete', 'el-icon-document-delete', 'icon');
INSERT INTO `sys_dict` VALUES (121, 'document-copy', 'el-icon-document-copy', 'icon');
INSERT INTO `sys_dict` VALUES (122, 'document-checked', 'el-icon-document-checked', 'icon');
INSERT INTO `sys_dict` VALUES (123, 'document-add', 'el-icon-document-add', 'icon');
INSERT INTO `sys_dict` VALUES (124, 'printer', 'el-icon-printer', 'icon');
INSERT INTO `sys_dict` VALUES (125, 'paperclip', 'el-icon-paperclip', 'icon');
INSERT INTO `sys_dict` VALUES (126, 'takeaway-box', 'el-icon-takeaway-box', 'icon');
INSERT INTO `sys_dict` VALUES (127, 'search', 'el-icon-search', 'icon');
INSERT INTO `sys_dict` VALUES (128, 'monitor', 'el-icon-monitor', 'icon');
INSERT INTO `sys_dict` VALUES (129, 'attract', 'el-icon-attract', 'icon');
INSERT INTO `sys_dict` VALUES (130, 'mobile', 'el-icon-mobile', 'icon');
INSERT INTO `sys_dict` VALUES (131, 'scissors', 'el-icon-scissors', 'icon');
INSERT INTO `sys_dict` VALUES (132, 'umbrella', 'el-icon-umbrella', 'icon');
INSERT INTO `sys_dict` VALUES (133, 'headset', 'el-icon-headset', 'icon');
INSERT INTO `sys_dict` VALUES (134, 'brush', 'el-icon-brush', 'icon');
INSERT INTO `sys_dict` VALUES (135, 'mouse', 'el-icon-mouse', 'icon');
INSERT INTO `sys_dict` VALUES (136, 'coordinate', 'el-icon-coordinate', 'icon');
INSERT INTO `sys_dict` VALUES (137, 'magic-stick', 'el-icon-magic-stick', 'icon');
INSERT INTO `sys_dict` VALUES (138, 'reading', 'el-icon-reading', 'icon');
INSERT INTO `sys_dict` VALUES (139, 'data-line', 'el-icon-data-line', 'icon');
INSERT INTO `sys_dict` VALUES (140, 'data-board', 'el-icon-data-board', 'icon');
INSERT INTO `sys_dict` VALUES (141, 'pie-chart', 'el-icon-pie-chart', 'icon');
INSERT INTO `sys_dict` VALUES (142, 'data-analysis', 'el-icon-data-analysis', 'icon');
INSERT INTO `sys_dict` VALUES (143, 'collection-tag', 'el-icon-collection-tag', 'icon');
INSERT INTO `sys_dict` VALUES (144, 'film', 'el-icon-film', 'icon');
INSERT INTO `sys_dict` VALUES (145, 'suitcase', 'el-icon-suitcase', 'icon');
INSERT INTO `sys_dict` VALUES (146, 'suitcase-1', 'el-icon-suitcase-1', 'icon');
INSERT INTO `sys_dict` VALUES (147, 'receiving', 'el-icon-receiving', 'icon');
INSERT INTO `sys_dict` VALUES (148, 'collection', 'el-icon-collection', 'icon');
INSERT INTO `sys_dict` VALUES (149, 'files', 'el-icon-files', 'icon');
INSERT INTO `sys_dict` VALUES (150, 'notebook-1', 'el-icon-notebook-1', 'icon');
INSERT INTO `sys_dict` VALUES (151, 'notebook-2', 'el-icon-notebook-2', 'icon');
INSERT INTO `sys_dict` VALUES (152, 'toilet-paper', 'el-icon-toilet-paper', 'icon');
INSERT INTO `sys_dict` VALUES (153, 'office-building', 'el-icon-office-building', 'icon');
INSERT INTO `sys_dict` VALUES (154, 'school', 'el-icon-school', 'icon');
INSERT INTO `sys_dict` VALUES (155, 'table-lamp', 'el-icon-table-lamp', 'icon');
INSERT INTO `sys_dict` VALUES (156, 'no-smoking', 'el-icon-no-smoking', 'icon');
INSERT INTO `sys_dict` VALUES (157, 'smoking', 'el-icon-smoking', 'icon');
INSERT INTO `sys_dict` VALUES (158, 'shopping-cart-full', 'el-icon-shopping-cart-full', 'icon');
INSERT INTO `sys_dict` VALUES (159, 'shopping-cart-1', 'el-icon-shopping-cart-1', 'icon');
INSERT INTO `sys_dict` VALUES (160, 'shopping-cart-2', 'el-icon-shopping-cart-2', 'icon');
INSERT INTO `sys_dict` VALUES (161, 'shopping-bag-1', 'el-icon-shopping-bag-1', 'icon');
INSERT INTO `sys_dict` VALUES (162, 'shopping-bag-2', 'el-icon-shopping-bag-2', 'icon');
INSERT INTO `sys_dict` VALUES (163, 'sold-out', 'el-icon-sold-out', 'icon');
INSERT INTO `sys_dict` VALUES (164, 'sell', 'el-icon-sell', 'icon');
INSERT INTO `sys_dict` VALUES (165, 'present', 'el-icon-present', 'icon');
INSERT INTO `sys_dict` VALUES (166, 'box', 'el-icon-box', 'icon');
INSERT INTO `sys_dict` VALUES (167, 'bank-card', 'el-icon-bank-card', 'icon');
INSERT INTO `sys_dict` VALUES (168, 'money', 'el-icon-money', 'icon');
INSERT INTO `sys_dict` VALUES (169, 'coin', 'el-icon-coin', 'icon');
INSERT INTO `sys_dict` VALUES (170, 'wallet', 'el-icon-wallet', 'icon');
INSERT INTO `sys_dict` VALUES (171, 'discount', 'el-icon-discount', 'icon');
INSERT INTO `sys_dict` VALUES (172, 'price-tag', 'el-icon-price-tag', 'icon');
INSERT INTO `sys_dict` VALUES (173, 'news', 'el-icon-news', 'icon');
INSERT INTO `sys_dict` VALUES (174, 'guide', 'el-icon-guide', 'icon');
INSERT INTO `sys_dict` VALUES (175, 'male', 'el-icon-male', 'icon');
INSERT INTO `sys_dict` VALUES (176, 'female', 'el-icon-female', 'icon');
INSERT INTO `sys_dict` VALUES (177, 'thumb', 'el-icon-thumb', 'icon');
INSERT INTO `sys_dict` VALUES (178, 'cpu', 'el-icon-cpu', 'icon');
INSERT INTO `sys_dict` VALUES (179, 'link', 'el-icon-link', 'icon');
INSERT INTO `sys_dict` VALUES (180, 'connection', 'el-icon-connection', 'icon');
INSERT INTO `sys_dict` VALUES (181, 'open', 'el-icon-open', 'icon');
INSERT INTO `sys_dict` VALUES (182, 'turn-off', 'el-icon-turn-off', 'icon');
INSERT INTO `sys_dict` VALUES (183, 'set-up', 'el-icon-set-up', 'icon');
INSERT INTO `sys_dict` VALUES (184, 'chat-round', 'el-icon-chat-round', 'icon');
INSERT INTO `sys_dict` VALUES (185, 'chat-line-round', 'el-icon-chat-line-round', 'icon');
INSERT INTO `sys_dict` VALUES (186, 'chat-square', 'el-icon-chat-square', 'icon');
INSERT INTO `sys_dict` VALUES (187, 'chat-dot-round', 'el-icon-chat-dot-round', 'icon');
INSERT INTO `sys_dict` VALUES (188, 'chat-dot-square', 'el-icon-chat-dot-square', 'icon');
INSERT INTO `sys_dict` VALUES (189, 'chat-line-square', 'el-icon-chat-line-square', 'icon');
INSERT INTO `sys_dict` VALUES (190, 'message', 'el-icon-message', 'icon');
INSERT INTO `sys_dict` VALUES (191, 'postcard', 'el-icon-postcard', 'icon');
INSERT INTO `sys_dict` VALUES (192, 'position', 'el-icon-position', 'icon');
INSERT INTO `sys_dict` VALUES (193, 'turn-off-microphone', 'el-icon-turn-off-microphone', 'icon');
INSERT INTO `sys_dict` VALUES (194, 'microphone', 'el-icon-microphone', 'icon');
INSERT INTO `sys_dict` VALUES (195, 'close-notification', 'el-icon-close-notification', 'icon');
INSERT INTO `sys_dict` VALUES (196, 'bangzhu', 'el-icon-bangzhu', 'icon');
INSERT INTO `sys_dict` VALUES (197, 'time', 'el-icon-time', 'icon');
INSERT INTO `sys_dict` VALUES (198, 'odometer', 'el-icon-odometer', 'icon');
INSERT INTO `sys_dict` VALUES (199, 'crop', 'el-icon-crop', 'icon');
INSERT INTO `sys_dict` VALUES (200, 'aim', 'el-icon-aim', 'icon');
INSERT INTO `sys_dict` VALUES (201, 'switch-button', 'el-icon-switch-button', 'icon');
INSERT INTO `sys_dict` VALUES (202, 'full-screen', 'el-icon-full-screen', 'icon');
INSERT INTO `sys_dict` VALUES (203, 'copy-document', 'el-icon-copy-document', 'icon');
INSERT INTO `sys_dict` VALUES (204, 'mic', 'el-icon-mic', 'icon');
INSERT INTO `sys_dict` VALUES (205, 'stopwatch', 'el-icon-stopwatch', 'icon');
INSERT INTO `sys_dict` VALUES (206, 'medal-1', 'el-icon-medal-1', 'icon');
INSERT INTO `sys_dict` VALUES (207, 'medal', 'el-icon-medal', 'icon');
INSERT INTO `sys_dict` VALUES (208, 'trophy', 'el-icon-trophy', 'icon');
INSERT INTO `sys_dict` VALUES (209, 'trophy-1', 'el-icon-trophy-1', 'icon');
INSERT INTO `sys_dict` VALUES (210, 'first-aid-kit', 'el-icon-first-aid-kit', 'icon');
INSERT INTO `sys_dict` VALUES (211, 'discover', 'el-icon-discover', 'icon');
INSERT INTO `sys_dict` VALUES (212, 'place', 'el-icon-place', 'icon');
INSERT INTO `sys_dict` VALUES (213, 'location', 'el-icon-location', 'icon');
INSERT INTO `sys_dict` VALUES (214, 'location-outline', 'el-icon-location-outline', 'icon');
INSERT INTO `sys_dict` VALUES (215, 'location-information', 'el-icon-location-information', 'icon');
INSERT INTO `sys_dict` VALUES (216, 'add-location', 'el-icon-add-location', 'icon');
INSERT INTO `sys_dict` VALUES (217, 'delete-location', 'el-icon-delete-location', 'icon');
INSERT INTO `sys_dict` VALUES (218, 'map-location', 'el-icon-map-location', 'icon');
INSERT INTO `sys_dict` VALUES (219, 'alarm-clock', 'el-icon-alarm-clock', 'icon');
INSERT INTO `sys_dict` VALUES (220, 'timer', 'el-icon-timer', 'icon');
INSERT INTO `sys_dict` VALUES (221, 'watch-1', 'el-icon-watch-1', 'icon');
INSERT INTO `sys_dict` VALUES (222, 'watch', 'el-icon-watch', 'icon');
INSERT INTO `sys_dict` VALUES (223, 'lock', 'el-icon-lock', 'icon');
INSERT INTO `sys_dict` VALUES (224, 'unlock', 'el-icon-unlock', 'icon');
INSERT INTO `sys_dict` VALUES (225, 'key', 'el-icon-key', 'icon');
INSERT INTO `sys_dict` VALUES (226, 'service', 'el-icon-service', 'icon');
INSERT INTO `sys_dict` VALUES (227, 'mobile-phone', 'el-icon-mobile-phone', 'icon');
INSERT INTO `sys_dict` VALUES (228, 'bicycle', 'el-icon-bicycle', 'icon');
INSERT INTO `sys_dict` VALUES (229, 'truck', 'el-icon-truck', 'icon');
INSERT INTO `sys_dict` VALUES (230, 'ship', 'el-icon-ship', 'icon');
INSERT INTO `sys_dict` VALUES (231, 'basketball', 'el-icon-basketball', 'icon');
INSERT INTO `sys_dict` VALUES (232, 'football', 'el-icon-football', 'icon');
INSERT INTO `sys_dict` VALUES (233, 'soccer', 'el-icon-soccer', 'icon');
INSERT INTO `sys_dict` VALUES (234, 'baseball', 'el-icon-baseball', 'icon');
INSERT INTO `sys_dict` VALUES (235, 'wind-power', 'el-icon-wind-power', 'icon');
INSERT INTO `sys_dict` VALUES (236, 'light-rain', 'el-icon-light-rain', 'icon');
INSERT INTO `sys_dict` VALUES (237, 'lightning', 'el-icon-lightning', 'icon');
INSERT INTO `sys_dict` VALUES (238, 'heavy-rain', 'el-icon-heavy-rain', 'icon');
INSERT INTO `sys_dict` VALUES (239, 'sunrise', 'el-icon-sunrise', 'icon');
INSERT INTO `sys_dict` VALUES (240, 'sunrise-1', 'el-icon-sunrise-1', 'icon');
INSERT INTO `sys_dict` VALUES (241, 'sunset', 'el-icon-sunset', 'icon');
INSERT INTO `sys_dict` VALUES (242, 'sunny', 'el-icon-sunny', 'icon');
INSERT INTO `sys_dict` VALUES (243, 'cloudy', 'el-icon-cloudy', 'icon');
INSERT INTO `sys_dict` VALUES (244, 'partly-cloudy', 'el-icon-partly-cloudy', 'icon');
INSERT INTO `sys_dict` VALUES (245, 'cloudy-and-sunny', 'el-icon-cloudy-and-sunny', 'icon');
INSERT INTO `sys_dict` VALUES (246, 'moon', 'el-icon-moon', 'icon');
INSERT INTO `sys_dict` VALUES (247, 'moon-night', 'el-icon-moon-night', 'icon');
INSERT INTO `sys_dict` VALUES (248, 'dish', 'el-icon-dish', 'icon');
INSERT INTO `sys_dict` VALUES (249, 'dish-1', 'el-icon-dish-1', 'icon');
INSERT INTO `sys_dict` VALUES (250, 'food', 'el-icon-food', 'icon');
INSERT INTO `sys_dict` VALUES (251, 'chicken', 'el-icon-chicken', 'icon');
INSERT INTO `sys_dict` VALUES (252, 'fork-spoon', 'el-icon-fork-spoon', 'icon');
INSERT INTO `sys_dict` VALUES (253, 'knife-fork', 'el-icon-knife-fork', 'icon');
INSERT INTO `sys_dict` VALUES (254, 'burger', 'el-icon-burger', 'icon');
INSERT INTO `sys_dict` VALUES (255, 'tableware', 'el-icon-tableware', 'icon');
INSERT INTO `sys_dict` VALUES (256, 'sugar', 'el-icon-sugar', 'icon');
INSERT INTO `sys_dict` VALUES (257, 'dessert', 'el-icon-dessert', 'icon');
INSERT INTO `sys_dict` VALUES (258, 'ice-cream', 'el-icon-ice-cream', 'icon');
INSERT INTO `sys_dict` VALUES (259, 'hot-water', 'el-icon-hot-water', 'icon');
INSERT INTO `sys_dict` VALUES (260, 'water-cup', 'el-icon-water-cup', 'icon');
INSERT INTO `sys_dict` VALUES (261, 'coffee-cup', 'el-icon-coffee-cup', 'icon');
INSERT INTO `sys_dict` VALUES (262, 'cold-drink', 'el-icon-cold-drink', 'icon');
INSERT INTO `sys_dict` VALUES (263, 'goblet', 'el-icon-goblet', 'icon');
INSERT INTO `sys_dict` VALUES (264, 'goblet-full', 'el-icon-goblet-full', 'icon');
INSERT INTO `sys_dict` VALUES (265, 'goblet-square', 'el-icon-goblet-square', 'icon');
INSERT INTO `sys_dict` VALUES (266, 'goblet-square-full', 'el-icon-goblet-square-full', 'icon');
INSERT INTO `sys_dict` VALUES (267, 'refrigerator', 'el-icon-refrigerator', 'icon');
INSERT INTO `sys_dict` VALUES (268, 'grape', 'el-icon-grape', 'icon');
INSERT INTO `sys_dict` VALUES (269, 'watermelon', 'el-icon-watermelon', 'icon');
INSERT INTO `sys_dict` VALUES (270, 'cherry', 'el-icon-cherry', 'icon');
INSERT INTO `sys_dict` VALUES (271, 'apple', 'el-icon-apple', 'icon');
INSERT INTO `sys_dict` VALUES (272, 'pear', 'el-icon-pear', 'icon');
INSERT INTO `sys_dict` VALUES (273, 'orange', 'el-icon-orange', 'icon');
INSERT INTO `sys_dict` VALUES (274, 'ice-tea', 'el-icon-ice-tea', 'icon');
INSERT INTO `sys_dict` VALUES (275, 'ice-drink', 'el-icon-ice-drink', 'icon');
INSERT INTO `sys_dict` VALUES (276, 'milk-tea', 'el-icon-milk-tea', 'icon');
INSERT INTO `sys_dict` VALUES (277, 'potato-strips', 'el-icon-potato-strips', 'icon');
INSERT INTO `sys_dict` VALUES (278, 'lollipop', 'el-icon-lollipop', 'icon');
INSERT INTO `sys_dict` VALUES (279, 'ice-cream-square', 'el-icon-ice-cream-square', 'icon');
INSERT INTO `sys_dict` VALUES (280, 'ice-cream-round', 'el-icon-ice-cream-round', 'icon');

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件名称',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件类型',
  `size` bigint NULL DEFAULT NULL COMMENT '文件大小(kb)',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '下载链接',
  `md5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件md5',
  `is_delete` tinyint(1) NULL DEFAULT 0 COMMENT '是否删除',
  `enable` tinyint(1) NULL DEFAULT 1 COMMENT '是否禁用链接',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES (28, 'yaya.jpg', 'jpg', 70, 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', '6c12eb0b38c55238902b2ceaaf70f7c0', 0, 1);
INSERT INTO `sys_file` VALUES (29, 'yaya.jpg', 'jpg', 70, 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', '6c12eb0b38c55238902b2ceaaf70f7c0', 1, 1);
INSERT INTO `sys_file` VALUES (31, 'yaya.jpg', 'jpg', 70, 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', '6c12eb0b38c55238902b2ceaaf70f7c0', 0, 1);
INSERT INTO `sys_file` VALUES (32, '小埋头像.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 0, 1);
INSERT INTO `sys_file` VALUES (33, 'yaya.jpg', 'jpg', 70, 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', '6c12eb0b38c55238902b2ceaaf70f7c0', 0, 1);
INSERT INTO `sys_file` VALUES (34, '小埋头像.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 0, 1);
INSERT INTO `sys_file` VALUES (35, '小埋头像.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 0, 1);
INSERT INTO `sys_file` VALUES (36, '小埋头像.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 0, 1);
INSERT INTO `sys_file` VALUES (37, 'yaya.jpg', 'jpg', 70, 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', '6c12eb0b38c55238902b2ceaaf70f7c0', 0, 1);
INSERT INTO `sys_file` VALUES (38, '小埋头像.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 0, 1);
INSERT INTO `sys_file` VALUES (39, 'QQ图片20220819182218999.jpg', 'jpg', 15, 'http://localhost:9090/file/1baf59dddb714737be70f64451e876fc.jpg', 'd4865981970514244e0f918856f5f67c', 0, 1);
INSERT INTO `sys_file` VALUES (40, 'yaya.jpg', 'jpg', 70, 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', '6c12eb0b38c55238902b2ceaaf70f7c0', 0, 1);
INSERT INTO `sys_file` VALUES (41, 'yaya.jpg', 'jpg', 70, 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', '6c12eb0b38c55238902b2ceaaf70f7c0', 0, 1);
INSERT INTO `sys_file` VALUES (42, '小埋头像.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 0, 1);
INSERT INTO `sys_file` VALUES (43, 'yaya.jpg', 'jpg', 70, 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', '6c12eb0b38c55238902b2ceaaf70f7c0', 0, 1);
INSERT INTO `sys_file` VALUES (44, '小埋头像.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 0, 1);
INSERT INTO `sys_file` VALUES (45, 'QQ图片20220819182218999.jpg', 'jpg', 15, 'http://localhost:9090/file/1baf59dddb714737be70f64451e876fc.jpg', 'd4865981970514244e0f918856f5f67c', 0, 1);
INSERT INTO `sys_file` VALUES (46, 'yaya.jpg', 'jpg', 70, 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', '6c12eb0b38c55238902b2ceaaf70f7c0', 0, 1);
INSERT INTO `sys_file` VALUES (47, 'QQ图片20220819182218999.jpg', 'jpg', 15, 'http://localhost:9090/file/1baf59dddb714737be70f64451e876fc.jpg', 'd4865981970514244e0f918856f5f67c', 0, 1);
INSERT INTO `sys_file` VALUES (48, 'yaya.jpg', 'jpg', 70, 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', '6c12eb0b38c55238902b2ceaaf70f7c0', 0, 1);
INSERT INTO `sys_file` VALUES (49, 'yaya.jpg', 'jpg', 70, 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', '6c12eb0b38c55238902b2ceaaf70f7c0', 0, 1);
INSERT INTO `sys_file` VALUES (50, 'yaya.jpg', 'jpg', 70, 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', '6c12eb0b38c55238902b2ceaaf70f7c0', 0, 1);
INSERT INTO `sys_file` VALUES (51, 'QQ图片20220819182218999.jpg', 'jpg', 15, 'http://localhost:9090/file/1baf59dddb714737be70f64451e876fc.jpg', 'd4865981970514244e0f918856f5f67c', 0, 1);
INSERT INTO `sys_file` VALUES (52, 'yaya.jpg', 'jpg', 70, 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', '6c12eb0b38c55238902b2ceaaf70f7c0', 0, 1);
INSERT INTO `sys_file` VALUES (53, 'yaya.jpg', 'jpg', 70, 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', '6c12eb0b38c55238902b2ceaaf70f7c0', 0, 1);
INSERT INTO `sys_file` VALUES (54, '404.png', 'png', 81, 'http://localhost:9090/file/ea99372c120a4301ba0510174f499025.png', '84a48c72507a914dafcd042da2cbd2f7', 0, 1);
INSERT INTO `sys_file` VALUES (55, 'QQ图片20220819182218999.jpg', 'jpg', 15, 'http://localhost:9090/file/1baf59dddb714737be70f64451e876fc.jpg', 'd4865981970514244e0f918856f5f67c', 0, 1);
INSERT INTO `sys_file` VALUES (56, '毛选.png', 'png', 625, 'http://localhost:9090/file/75b7f4551d5b4ab18386aaec8aaa28a9.png', 'e6ce9b9b9baff1e9ca3dbe508528f404', 0, 1);
INSERT INTO `sys_file` VALUES (57, '小埋头像.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 0, 1);
INSERT INTO `sys_file` VALUES (58, 'yaya.jpg', 'jpg', 70, 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', '6c12eb0b38c55238902b2ceaaf70f7c0', 0, 1);
INSERT INTO `sys_file` VALUES (59, '小埋头像.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 0, 1);
INSERT INTO `sys_file` VALUES (60, 'QQ图片20220819182218999.jpg', 'jpg', 15, 'http://localhost:9090/file/1baf59dddb714737be70f64451e876fc.jpg', 'd4865981970514244e0f918856f5f67c', 0, 1);
INSERT INTO `sys_file` VALUES (61, 'QQ图片20220819182218999.jpg', 'jpg', 15, 'http://localhost:9090/file/1baf59dddb714737be70f64451e876fc.jpg', 'd4865981970514244e0f918856f5f67c', 1, 1);
INSERT INTO `sys_file` VALUES (62, '87f378059f034d2f93552e4bd394d167.jpg', 'jpg', 70, 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', '6c12eb0b38c55238902b2ceaaf70f7c0', 1, 1);
INSERT INTO `sys_file` VALUES (63, '87f378059f034d2f93552e4bd394d167.jpg', 'jpg', 70, 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', '6c12eb0b38c55238902b2ceaaf70f7c0', 1, 1);
INSERT INTO `sys_file` VALUES (64, '1baf59dddb714737be70f64451e876fc.jpg', 'jpg', 15, 'http://localhost:9090/file/1baf59dddb714737be70f64451e876fc.jpg', 'd4865981970514244e0f918856f5f67c', 0, 1);
INSERT INTO `sys_file` VALUES (65, '白底证件照.jpg', 'jpg', 37, 'http://localhost:9090/file/e40d0565696d41bca6501aeafe496183.jpg', '9ebcde5c732889013ea9d803393ea364', 1, 1);
INSERT INTO `sys_file` VALUES (66, '1baf59dddb714737be70f64451e876fc.jpg', 'jpg', 15, 'http://localhost:9090/file/1baf59dddb714737be70f64451e876fc.jpg', 'd4865981970514244e0f918856f5f67c', 1, 1);
INSERT INTO `sys_file` VALUES (67, '1baf59dddb714737be70f64451e876fc.jpg', 'jpg', 15, 'http://localhost:9090/file/1baf59dddb714737be70f64451e876fc.jpg', 'd4865981970514244e0f918856f5f67c', 1, 1);
INSERT INTO `sys_file` VALUES (68, 'ac94e29e45324299bcd8876bae288315.jpg', 'jpg', 15, 'http://localhost:9090/file/1baf59dddb714737be70f64451e876fc.jpg', 'd4865981970514244e0f918856f5f67c', 1, 1);
INSERT INTO `sys_file` VALUES (69, '87f378059f034d2f93552e4bd394d167.jpg', 'jpg', 70, 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', '6c12eb0b38c55238902b2ceaaf70f7c0', 1, 1);
INSERT INTO `sys_file` VALUES (70, '6246ae2ee54846eb901e7d7eca1e05e2.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 1, 1);
INSERT INTO `sys_file` VALUES (71, '1baf59dddb714737be70f64451e876fc.jpg', 'jpg', 15, 'http://localhost:9090/file/1baf59dddb714737be70f64451e876fc.jpg', 'd4865981970514244e0f918856f5f67c', 1, 1);
INSERT INTO `sys_file` VALUES (72, 'yaya.jpg', 'jpg', 70, 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', '6c12eb0b38c55238902b2ceaaf70f7c0', 1, 1);
INSERT INTO `sys_file` VALUES (73, '87f378059f034d2f93552e4bd394d167.jpg', 'jpg', 70, 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', '6c12eb0b38c55238902b2ceaaf70f7c0', 1, 1);
INSERT INTO `sys_file` VALUES (74, '75b7f4551d5b4ab18386aaec8aaa28a9.png', 'png', 625, 'http://localhost:9090/file/75b7f4551d5b4ab18386aaec8aaa28a9.png', 'e6ce9b9b9baff1e9ca3dbe508528f404', 1, 1);
INSERT INTO `sys_file` VALUES (75, '副本.jpg', 'jpg', 5, 'http://localhost:9090/file/947425a9fdca478b8018247f6addd8e5.jpg', 'c065692d5257ad10fcb0d5fd686aeea2', 1, 1);
INSERT INTO `sys_file` VALUES (76, '小埋头像.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 1, 1);
INSERT INTO `sys_file` VALUES (77, '小埋头像.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 0, 1);
INSERT INTO `sys_file` VALUES (78, 'QQ图片20220819182218999.jpg', 'jpg', 15, 'http://localhost:9090/file/1baf59dddb714737be70f64451e876fc.jpg', 'd4865981970514244e0f918856f5f67c', 1, 1);
INSERT INTO `sys_file` VALUES (79, '小埋头像.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 1, 1);
INSERT INTO `sys_file` VALUES (80, 'QQ图片20220819182218999.jpg', 'jpg', 15, 'http://localhost:9090/file/1baf59dddb714737be70f64451e876fc.jpg', 'd4865981970514244e0f918856f5f67c', 1, 1);
INSERT INTO `sys_file` VALUES (81, '小埋头像.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 1, 1);
INSERT INTO `sys_file` VALUES (82, '小埋头像.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 1, 1);
INSERT INTO `sys_file` VALUES (83, 'QQ图片20220819182218999.jpg', 'jpg', 15, 'http://localhost:9090/file/1baf59dddb714737be70f64451e876fc.jpg', 'd4865981970514244e0f918856f5f67c', 1, 1);
INSERT INTO `sys_file` VALUES (84, '小埋头像.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 1, 1);
INSERT INTO `sys_file` VALUES (85, '小埋头像.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 1, 1);
INSERT INTO `sys_file` VALUES (86, 'QQ图片20220819182218999.jpg', 'jpg', 15, 'http://localhost:9090/file/1baf59dddb714737be70f64451e876fc.jpg', 'd4865981970514244e0f918856f5f67c', 1, 1);
INSERT INTO `sys_file` VALUES (87, '小埋头像.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 1, 1);
INSERT INTO `sys_file` VALUES (88, 'yaya.jpg', 'jpg', 70, 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', '6c12eb0b38c55238902b2ceaaf70f7c0', 1, 1);
INSERT INTO `sys_file` VALUES (89, '小埋头像.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 1, 1);
INSERT INTO `sys_file` VALUES (90, 'QQ图片20220819182218999.jpg', 'jpg', 15, 'http://localhost:9090/file/1baf59dddb714737be70f64451e876fc.jpg', 'd4865981970514244e0f918856f5f67c', 1, 1);
INSERT INTO `sys_file` VALUES (91, '小埋头像.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 1, 1);
INSERT INTO `sys_file` VALUES (92, '小埋头像.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 1, 1);
INSERT INTO `sys_file` VALUES (93, '小埋头像.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 1, 1);
INSERT INTO `sys_file` VALUES (94, '1663235910000.jpeg', 'jpeg', 38, 'http://localhost:9090/file/ae646651f1a74b2ca435ec685885c5fa.jpeg', '1979437306c598cde52466edd0e59968', 1, 1);
INSERT INTO `sys_file` VALUES (95, '1663235938000.jpeg', 'jpeg', 16, 'http://localhost:9090/file/edd0108f71124c07a2c7f7872cfd4034.jpeg', 'cfdec0c145bfc1882b5306907503851d', 1, 1);
INSERT INTO `sys_file` VALUES (96, '1663236053000.jpeg', 'jpeg', 38, 'http://localhost:9090/file/ae646651f1a74b2ca435ec685885c5fa.jpeg', '1979437306c598cde52466edd0e59968', 1, 1);
INSERT INTO `sys_file` VALUES (97, '小埋头像.jpg', 'jpg', 62, 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', '3300af4fa52bdfaa219435b83ab6a946', 1, 1);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '路径',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图标',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `pid` int NULL DEFAULT NULL COMMENT '父级id',
  `page_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '页面路径',
  `sort_num` int NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (2, '主页', '/home', 'el-icon-house', '', NULL, 'Home', 10);
INSERT INTO `sys_menu` VALUES (4, '系统管理', NULL, 'el-icon-s-grid', NULL, NULL, NULL, 30);
INSERT INTO `sys_menu` VALUES (7, '用户管理', '/user', 'el-icon-user', NULL, 4, 'User', 31);
INSERT INTO `sys_menu` VALUES (8, '角色管理', '/role', 'el-icon-s-custom', NULL, 4, 'Role', 32);
INSERT INTO `sys_menu` VALUES (9, '菜单管理', '/menu', 'el-icon-menu', NULL, 4, 'Menu', 33);
INSERT INTO `sys_menu` VALUES (10, '文件管理', '/file', 'el-icon-folder-opened', NULL, 4, 'File', 34);
INSERT INTO `sys_menu` VALUES (41, '数据报表', '/dashbord', 'el-icon-s-data', NULL, NULL, 'DashBord', 999);
INSERT INTO `sys_menu` VALUES (42, '请香香喝一杯奶茶', '/milktea', 'el-icon-milk-tea', NULL, NULL, 'Donate', 999);
INSERT INTO `sys_menu` VALUES (45, '聊天交流', '/im', 'el-icon-chat-dot-square', '', NULL, 'Im', 22);
INSERT INTO `sys_menu` VALUES (46, '图书管理', NULL, 'el-icon-reading', '', NULL, NULL, 50);
INSERT INTO `sys_menu` VALUES (48, '订单支付', '/orders', 'el-icon-s-order', NULL, 46, 'Orders', 52);
INSERT INTO `sys_menu` VALUES (49, '图书购买', '/goods', 'el-icon-shopping-cart-2', NULL, 46, 'Goods', 51);
INSERT INTO `sys_menu` VALUES (57, '课程表', '/coursetable', 'el-icon-monitor', NULL, NULL, 'CourseTable', 21);
INSERT INTO `sys_menu` VALUES (58, '疫情打卡', '/clockhome', 'el-icon-thumb', '', NULL, 'ClockHome', 20);
INSERT INTO `sys_menu` VALUES (60, '疫情地图', '/epidemicmap', 'el-icon-help', NULL, NULL, 'EpidemicMap', 400);
INSERT INTO `sys_menu` VALUES (61, '教务管理', NULL, 'el-icon-user', NULL, NULL, NULL, 40);
INSERT INTO `sys_menu` VALUES (62, '学生管理', '/student', 'el-icon-user-solid', NULL, 61, 'Student', 41);
INSERT INTO `sys_menu` VALUES (63, '专业管理', '/major', 'el-icon-medal', NULL, 61, 'Major', 42);
INSERT INTO `sys_menu` VALUES (64, '新闻管理', '/article', 'el-icon-document', NULL, 4, 'Article', 43);
INSERT INTO `sys_menu` VALUES (65, '课程管理', '/course', 'el-icon-s-platform', NULL, 61, 'Course', 43);
INSERT INTO `sys_menu` VALUES (66, '打卡管理', '/clock', 'el-icon-star-on', NULL, 61, 'Clock', 44);
INSERT INTO `sys_menu` VALUES (68, '考试管理', NULL, 'el-icon-edit-outline', NULL, NULL, NULL, 60);
INSERT INTO `sys_menu` VALUES (69, '考试列表', '/exam', 'el-icon-document-copy', NULL, 68, 'Exam', 61);
INSERT INTO `sys_menu` VALUES (70, '报名审核', '/sign', 'el-icon-s-claim', NULL, 68, 'Sign', 62);
INSERT INTO `sys_menu` VALUES (71, '试卷管理', '/paper', 'el-icon-document', NULL, 68, 'Paper', 63);
INSERT INTO `sys_menu` VALUES (72, '阅卷管理', '/studentpaper', 'el-icon-edit', NULL, 68, 'Studentpaper', 65);
INSERT INTO `sys_menu` VALUES (73, '题库管理', '/question', 'el-icon-search', NULL, 68, 'Question', 64);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `flag` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '唯一标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', '管理员', 'ROLE_ADMIN');
INSERT INTO `sys_role` VALUES (2, '学生', '学生', 'ROLE_STUDENT');
INSERT INTO `sys_role` VALUES (3, '老师', '老师', 'ROLE_TEACHER');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` int NOT NULL COMMENT '角色id',
  `menu_id` int NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色菜单关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 2);
INSERT INTO `sys_role_menu` VALUES (1, 4);
INSERT INTO `sys_role_menu` VALUES (1, 7);
INSERT INTO `sys_role_menu` VALUES (1, 8);
INSERT INTO `sys_role_menu` VALUES (1, 9);
INSERT INTO `sys_role_menu` VALUES (1, 10);
INSERT INTO `sys_role_menu` VALUES (1, 41);
INSERT INTO `sys_role_menu` VALUES (1, 42);
INSERT INTO `sys_role_menu` VALUES (1, 45);
INSERT INTO `sys_role_menu` VALUES (1, 46);
INSERT INTO `sys_role_menu` VALUES (1, 48);
INSERT INTO `sys_role_menu` VALUES (1, 49);
INSERT INTO `sys_role_menu` VALUES (1, 60);
INSERT INTO `sys_role_menu` VALUES (1, 61);
INSERT INTO `sys_role_menu` VALUES (1, 62);
INSERT INTO `sys_role_menu` VALUES (1, 63);
INSERT INTO `sys_role_menu` VALUES (1, 64);
INSERT INTO `sys_role_menu` VALUES (1, 65);
INSERT INTO `sys_role_menu` VALUES (1, 66);
INSERT INTO `sys_role_menu` VALUES (1, 68);
INSERT INTO `sys_role_menu` VALUES (1, 69);
INSERT INTO `sys_role_menu` VALUES (1, 70);
INSERT INTO `sys_role_menu` VALUES (1, 71);
INSERT INTO `sys_role_menu` VALUES (1, 72);
INSERT INTO `sys_role_menu` VALUES (1, 73);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 42);
INSERT INTO `sys_role_menu` VALUES (2, 45);
INSERT INTO `sys_role_menu` VALUES (2, 46);
INSERT INTO `sys_role_menu` VALUES (2, 48);
INSERT INTO `sys_role_menu` VALUES (2, 49);
INSERT INTO `sys_role_menu` VALUES (2, 57);
INSERT INTO `sys_role_menu` VALUES (2, 58);
INSERT INTO `sys_role_menu` VALUES (2, 60);
INSERT INTO `sys_role_menu` VALUES (3, 2);
INSERT INTO `sys_role_menu` VALUES (3, 42);
INSERT INTO `sys_role_menu` VALUES (3, 45);
INSERT INTO `sys_role_menu` VALUES (3, 46);
INSERT INTO `sys_role_menu` VALUES (3, 48);
INSERT INTO `sys_role_menu` VALUES (3, 49);
INSERT INTO `sys_role_menu` VALUES (3, 57);
INSERT INTO `sys_role_menu` VALUES (3, 60);
INSERT INTO `sys_role_menu` VALUES (3, 61);
INSERT INTO `sys_role_menu` VALUES (3, 62);
INSERT INTO `sys_role_menu` VALUES (3, 63);
INSERT INTO `sys_role_menu` VALUES (3, 65);
INSERT INTO `sys_role_menu` VALUES (3, 66);
INSERT INTO `sys_role_menu` VALUES (3, 68);
INSERT INTO `sys_role_menu` VALUES (3, 69);
INSERT INTO `sys_role_menu` VALUES (3, 70);
INSERT INTO `sys_role_menu` VALUES (3, 71);
INSERT INTO `sys_role_menu` VALUES (3, 72);
INSERT INTO `sys_role_menu` VALUES (3, 73);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT ' 邮箱',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间\r\n',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像\r\n',
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `major_id` int NULL DEFAULT NULL COMMENT '专业id',
  `grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '年级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 94 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', 'admin', '管理员', '1377826469@qq.com', '13988997788', '湖南邵阳', '2022-01-05 12:41:59', 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', 'ROLE_ADMIN', NULL, NULL);
INSERT INTO `sys_user` VALUES (50, 'zj', '123', '甄姬222', 'wlf0325@163.com', '3', '3', '2022-02-13 15:50:25', 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', 'ROLE_TEACHER', NULL, NULL);
INSERT INTO `sys_user` VALUES (60, 'zy', '123', '赵云', '2', '2', '2', '2022-02-15 14:30:42', NULL, 'ROLE_STUDENT', 1, '大一');
INSERT INTO `sys_user` VALUES (81, 'nzz', '123', '哪吒', '2', '2', '2', '2022-03-21 02:46:09', 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', 'ROLE_STUDENT', 2, '大一');
INSERT INTO `sys_user` VALUES (82, 'yss', '123', '亚瑟', '3', '3', '3', '2022-05-21 02:46:41', NULL, 'ROLE_STUDENT', 1, '大三');
INSERT INTO `sys_user` VALUES (83, 'lxx', '123', '李信', '2', '2', '2', '2022-06-21 02:47:02', NULL, 'ROLE_STUDENT', 1, '大一');
INSERT INTO `sys_user` VALUES (84, 'angela', '123', '安吉拉', '3', '3', '3', '2022-07-21 02:47:24', NULL, 'ROLE_STUDENT', 2, '大二');
INSERT INTO `sys_user` VALUES (85, 'ddd', '123', '妲己', '4', '4', '4', '2022-11-21 17:05:00', 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', 'ROLE_STUDENT', 1, '大一');
INSERT INTO `sys_user` VALUES (86, '333', '123', '三三33', '1', '1', '1', '2022-05-21 05:02:45', 'http://localhost:9090/file/87f378059f034d2f93552e4bd394d167.jpg', 'ROLE_TEACHER', NULL, NULL);
INSERT INTO `sys_user` VALUES (87, 'fff', '123', 'fff', NULL, NULL, NULL, '2022-12-21 18:04:23', NULL, 'ROLE_STUDENT', NULL, NULL);
INSERT INTO `sys_user` VALUES (89, 'ggg', '123', 'ggg', NULL, NULL, NULL, '2022-08-28 02:18:49', NULL, 'ROLE_STUDENT', NULL, NULL);
INSERT INTO `sys_user` VALUES (93, 'hhh', '123', 'hhh', NULL, NULL, NULL, '2022-09-01 02:46:46', 'http://localhost:9090/file/6246ae2ee54846eb901e7d7eca1e05e2.jpg', 'ROLE_STUDENT', NULL, NULL);

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `user_id` int NULL DEFAULT NULL COMMENT '评论人id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论时间',
  `pid` int NULL DEFAULT NULL COMMENT '父id',
  `origin_id` int NULL DEFAULT NULL COMMENT '最上级评论id',
  `article_id` int NULL DEFAULT NULL COMMENT '关联文章的id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES (1, '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', 1, '2022-08-31 16:17', NULL, NULL, 1);
INSERT INTO `t_comment` VALUES (3, '123', 1, '2022-08-31 20:39:40', NULL, NULL, 1);
INSERT INTO `t_comment` VALUES (5, '回复内容', 1, '2022-08-31 20:50:46', 4, 4, 1);
INSERT INTO `t_comment` VALUES (7, '55555', 1, '2022-08-31 20:50:48', 4, 4, 1);
INSERT INTO `t_comment` VALUES (8, '444', 1, '2022-08-31 23:25:09', 4, 4, 1);
INSERT INTO `t_comment` VALUES (9, '回复555', 85, '2022-08-31 23:29:08', 7, 4, 1);
INSERT INTO `t_comment` VALUES (10, '我是妲己222', 85, '2022-08-31 23:37:33', NULL, NULL, 1);
INSERT INTO `t_comment` VALUES (11, '哈哈哈哈，我是333', 86, '2022-08-31 23:38:15', 10, 10, 1);
INSERT INTO `t_comment` VALUES (13, '我是哪吒，回复三三33', 81, '2022-08-31 23:40:22', 11, 10, 1);

-- ----------------------------
-- Table structure for validation
-- ----------------------------
DROP TABLE IF EXISTS `validation`;
CREATE TABLE `validation`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户邮箱',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '验证码',
  `type` int NULL DEFAULT NULL COMMENT '验证类型',
  `time` timestamp NULL DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of validation
-- ----------------------------
INSERT INTO `validation` VALUES (14, 'wlf0325@163.com', '2082', 1, '2022-09-06 16:27:47');
INSERT INTO `validation` VALUES (20, '111@163.com', '7544', 1, '2022-09-06 19:11:00');
INSERT INTO `validation` VALUES (25, '1377826469@qq.com', '2475', 2, '2022-09-06 20:18:22');
INSERT INTO `validation` VALUES (27, '1377826469@qq.com', '1806', 1, '2022-10-12 17:53:27');

SET FOREIGN_KEY_CHECKS = 1;
