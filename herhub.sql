/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80012 (8.0.12)
 Source Host           : localhost:3306
 Source Schema         : herhub

 Target Server Type    : MySQL
 Target Server Version : 80012 (8.0.12)
 File Encoding         : 65001

 Date: 02/05/2023 22:17:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for avatar
-- ----------------------------
DROP TABLE IF EXISTS `avatar`;
CREATE TABLE `avatar`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mimetype` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `size` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `filename`(`filename`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avatar
-- ----------------------------
INSERT INTO `avatar` VALUES (3, '6820ec2e62c35e1cf8008ebd474ebea4', 'image/jpeg', 1911, 33, '2023-05-02 21:36:45', '2023-05-02 21:36:45');
INSERT INTO `avatar` VALUES (2, '6ad1a534f1c29438f3afbcbfd5fa501c', 'image/jpeg', 1911, 33, '2023-05-02 21:01:09', '2023-05-02 21:01:09');
INSERT INTO `avatar` VALUES (4, '3fcd9d4ef47ec4eae563c6f676ed7a04', 'image/jpeg', 1911, 33, '2023-05-02 21:36:48', '2023-05-02 21:36:48');
INSERT INTO `avatar` VALUES (5, '6e0be9809bcd8d26d14ea016532af464', 'image/jpeg', 1911, 33, '2023-05-02 21:37:16', '2023-05-02 21:37:16');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `moment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `moment_id`(`moment_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `comment_id`(`comment_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 91 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, '回现就百样争国那程十么油它之。', 2, 33, NULL, '2023-04-30 23:38:34', '2023-04-30 23:38:34');
INSERT INTO `comment` VALUES (2, '气平些及第铁门存展点通件厂义。', 27, 33, NULL, '2023-04-30 23:40:50', '2023-04-30 23:40:50');
INSERT INTO `comment` VALUES (3, '王组上自叫几话种物取组平色起理。', 7, 33, NULL, '2023-04-30 23:47:16', '2023-04-30 23:47:16');
INSERT INTO `comment` VALUES (4, '石命七件习低离值写克克部团些王识。', 49, 33, NULL, '2023-04-30 23:47:46', '2023-04-30 23:47:46');
INSERT INTO `comment` VALUES (5, '受号引听八广影省界引装专统准基专火。', 3, 33, 34, '2023-04-30 23:48:56', '2023-04-30 23:48:56');
INSERT INTO `comment` VALUES (6, '将济出造容儿们边设七收深下反其除然。', 13, 33, 38, '2023-04-30 23:49:14', '2023-04-30 23:49:14');
INSERT INTO `comment` VALUES (7, '政划温存公道难任即界于始省。', 26, 33, NULL, '2023-05-02 09:51:16', '2023-05-02 09:51:16');
INSERT INTO `comment` VALUES (8, '值今关海到实究与反张群计。', 48, 33, NULL, '2023-05-02 09:51:18', '2023-05-02 09:51:18');
INSERT INTO `comment` VALUES (9, '己派较酸把验持月委比约自题组因品。', 27, 33, NULL, '2023-05-02 09:51:19', '2023-05-02 09:51:19');
INSERT INTO `comment` VALUES (10, '感设计元该土当放极风果华自即他易前。', 38, 33, NULL, '2023-05-02 09:51:20', '2023-05-02 09:51:20');
INSERT INTO `comment` VALUES (11, '美到段处今角维角称白山定门合流而应。', 4, 33, NULL, '2023-05-02 09:51:22', '2023-05-02 09:51:22');
INSERT INTO `comment` VALUES (12, '条空济生用小别低入除去群众六指。', 37, 33, NULL, '2023-05-02 09:51:23', '2023-05-02 09:51:23');
INSERT INTO `comment` VALUES (13, '压造记本金于规无引究进要先。', 35, 33, NULL, '2023-05-02 09:51:25', '2023-05-02 09:51:25');
INSERT INTO `comment` VALUES (14, '四员断正快体龙由难切来五加往亲说公。', 46, 33, NULL, '2023-05-02 09:51:26', '2023-05-02 09:51:26');
INSERT INTO `comment` VALUES (15, '热持天说门国此有则叫空比式。', 12, 33, NULL, '2023-05-02 09:51:27', '2023-05-02 09:51:27');
INSERT INTO `comment` VALUES (16, '革格照半容飞号小如当斯还资养以下素。', 24, 33, NULL, '2023-05-02 09:51:28', '2023-05-02 09:51:28');
INSERT INTO `comment` VALUES (17, '中响维共流严按得制世多内术义万两。', 20, 33, NULL, '2023-05-02 09:51:30', '2023-05-02 09:51:30');
INSERT INTO `comment` VALUES (18, '议己取写深化规状办明有者断题。', 14, 33, NULL, '2023-05-02 09:51:32', '2023-05-02 09:51:32');
INSERT INTO `comment` VALUES (19, '四高但只劳争也主由快水我眼。', 40, 33, NULL, '2023-05-02 09:51:33', '2023-05-02 09:51:33');
INSERT INTO `comment` VALUES (20, '增数思然主置酸周温或有引更当其强家非。', 24, 33, NULL, '2023-05-02 09:51:34', '2023-05-02 09:51:34');
INSERT INTO `comment` VALUES (21, '原与专农展与没下严装间子采期写。', 19, 33, NULL, '2023-05-02 09:51:35', '2023-05-02 09:51:35');
INSERT INTO `comment` VALUES (22, '易议即走力政青着体员就才便。', 40, 33, NULL, '2023-05-02 09:51:37', '2023-05-02 09:51:37');
INSERT INTO `comment` VALUES (23, '油制着看效难音几海观证线发改下条过。', 13, 33, NULL, '2023-05-02 09:51:38', '2023-05-02 09:51:38');
INSERT INTO `comment` VALUES (24, '色你程许队叫精难文社色断例来类性保复。', 33, 33, NULL, '2023-05-02 09:51:39', '2023-05-02 09:51:39');
INSERT INTO `comment` VALUES (25, '自称持之最其据变问称查提团广眼。', 35, 33, NULL, '2023-05-02 09:51:41', '2023-05-02 09:51:41');
INSERT INTO `comment` VALUES (26, '支极越前提始即应新动须极精石提。', 42, 33, NULL, '2023-05-02 09:51:42', '2023-05-02 09:51:42');
INSERT INTO `comment` VALUES (27, '部力县已元规青标自理总究非极报集。', 29, 33, NULL, '2023-05-02 09:51:43', '2023-05-02 09:51:43');
INSERT INTO `comment` VALUES (28, '须心进将料便头所么手反布较军三。', 32, 33, NULL, '2023-05-02 09:51:45', '2023-05-02 09:51:45');
INSERT INTO `comment` VALUES (29, '合名所林作中热根资员越水今权农共。', 22, 33, NULL, '2023-05-02 09:51:46', '2023-05-02 09:51:46');
INSERT INTO `comment` VALUES (30, '决火所已去华存象水情情即拉。', 38, 33, NULL, '2023-05-02 09:51:47', '2023-05-02 09:51:47');
INSERT INTO `comment` VALUES (31, '己只北想斯越从话想满三机西难在放量率。', 4, 33, NULL, '2023-05-02 09:51:48', '2023-05-02 09:51:48');
INSERT INTO `comment` VALUES (32, '通样地具院前统都力党任养那消劳应积。', 16, 33, NULL, '2023-05-02 09:51:50', '2023-05-02 09:51:50');
INSERT INTO `comment` VALUES (33, '称万知切多反住构需看得道直。', 13, 33, NULL, '2023-05-02 09:51:51', '2023-05-02 09:51:51');
INSERT INTO `comment` VALUES (34, '经明热需本速次求持土提界素个按极。', 25, 33, NULL, '2023-05-02 09:51:52', '2023-05-02 09:51:52');
INSERT INTO `comment` VALUES (35, '历车书受回打打选学没选效头是。', 37, 33, NULL, '2023-05-02 09:51:54', '2023-05-02 09:51:54');
INSERT INTO `comment` VALUES (36, '业公期到不空由研着设儿层议等转。', 24, 33, NULL, '2023-05-02 09:51:55', '2023-05-02 09:51:55');
INSERT INTO `comment` VALUES (37, '果感先亲半起经等于林集极指难等公统。', 14, 33, NULL, '2023-05-02 09:51:56', '2023-05-02 09:51:56');
INSERT INTO `comment` VALUES (38, '装土发划商极族更把产阶变。', 33, 33, NULL, '2023-05-02 09:51:58', '2023-05-02 09:51:58');
INSERT INTO `comment` VALUES (39, '口知重己实有后力关好与代头。', 21, 33, NULL, '2023-05-02 09:51:59', '2023-05-02 09:51:59');
INSERT INTO `comment` VALUES (40, '社严他土白进果规提在如期工酸千之。', 48, 33, NULL, '2023-05-02 09:52:00', '2023-05-02 09:52:00');
INSERT INTO `comment` VALUES (41, '业国始区许儿边毛般们它见口明。', 22, 33, NULL, '2023-05-02 09:52:01', '2023-05-02 09:52:01');
INSERT INTO `comment` VALUES (42, '接道志物级件万后低思历干那。', 22, 33, NULL, '2023-05-02 09:52:02', '2023-05-02 09:52:02');
INSERT INTO `comment` VALUES (43, '该报支或引中存人步张可文资也位。', 33, 33, NULL, '2023-05-02 09:52:04', '2023-05-02 09:52:04');
INSERT INTO `comment` VALUES (44, '值复打期又指事花公起取之。', 33, 33, NULL, '2023-05-02 09:52:05', '2023-05-02 09:52:05');
INSERT INTO `comment` VALUES (45, '联准心报更半里设还们从往种们。', 35, 33, NULL, '2023-05-02 09:52:06', '2023-05-02 09:52:06');
INSERT INTO `comment` VALUES (46, '其五标水阶五有过布位当八二东。', 39, 33, NULL, '2023-05-02 09:52:07', '2023-05-02 09:52:07');
INSERT INTO `comment` VALUES (47, '立通准团状六至外值些应已表响。', 6, 33, NULL, '2023-05-02 09:52:09', '2023-05-02 09:52:09');
INSERT INTO `comment` VALUES (48, '单火各能传系清同会以速较前低。', 38, 33, NULL, '2023-05-02 09:52:10', '2023-05-02 09:52:10');
INSERT INTO `comment` VALUES (49, '江里克片无话按现选直维价保作国斗。', 43, 33, NULL, '2023-05-02 09:52:11', '2023-05-02 09:52:11');
INSERT INTO `comment` VALUES (50, '花收几线置音级理白报五论易任我。', 46, 33, NULL, '2023-05-02 09:52:12', '2023-05-02 09:52:12');
INSERT INTO `comment` VALUES (51, '转间越向六将里几思多位切段般生此直置。', 34, 33, NULL, '2023-05-02 09:52:14', '2023-05-02 09:52:14');
INSERT INTO `comment` VALUES (52, '打业毛生格性带五当是完群段重广对先。', 40, 33, NULL, '2023-05-02 09:52:16', '2023-05-02 09:52:16');
INSERT INTO `comment` VALUES (53, '石太然民历然前例共断与子如据其。', 35, 33, NULL, '2023-05-02 09:52:17', '2023-05-02 09:52:17');
INSERT INTO `comment` VALUES (54, '物矿派有华期真提治行非工她民。', 46, 33, NULL, '2023-05-02 09:52:18', '2023-05-02 09:52:18');
INSERT INTO `comment` VALUES (55, '别县整高出边从北设影国件从它须正装自。', 43, 33, NULL, '2023-05-02 09:52:19', '2023-05-02 09:52:19');
INSERT INTO `comment` VALUES (56, '报期查济过元记然才引小用角。', 47, 33, NULL, '2023-05-02 09:52:20', '2023-05-02 09:52:20');
INSERT INTO `comment` VALUES (57, '属置压听产见十两图你业两重属。', 19, 33, NULL, '2023-05-02 09:52:22', '2023-05-02 09:52:22');
INSERT INTO `comment` VALUES (58, '比华今然后状山做山大采种安领引。', 40, 33, NULL, '2023-05-02 09:52:23', '2023-05-02 09:52:23');
INSERT INTO `comment` VALUES (59, '铁他识按识气任对重风厂们已成东称。', 5, 33, 42, '2023-05-02 09:52:35', '2023-05-02 09:52:35');
INSERT INTO `comment` VALUES (60, '油体认值达料前家她成领基较。', 20, 33, 42, '2023-05-02 09:52:37', '2023-05-02 09:52:37');
INSERT INTO `comment` VALUES (61, '型指花府空书专少二会务这无电设办花。', 26, 33, 15, '2023-05-02 09:52:38', '2023-05-02 09:52:38');
INSERT INTO `comment` VALUES (62, '科比物反力直情听此京深象最示因常日三。', 22, 33, 4, '2023-05-02 09:52:40', '2023-05-02 09:52:40');
INSERT INTO `comment` VALUES (63, '志支已可积量消广话则组转此。', 38, 33, 31, '2023-05-02 09:52:41', '2023-05-02 09:52:41');
INSERT INTO `comment` VALUES (64, '做己实类回容但相达造本经金向容。', 41, 33, 20, '2023-05-02 09:52:43', '2023-05-02 09:52:43');
INSERT INTO `comment` VALUES (65, '严那除派事因导温发温做实据精。', 41, 33, 13, '2023-05-02 09:52:44', '2023-05-02 09:52:44');
INSERT INTO `comment` VALUES (66, '手基下义设管八党史我么志通场本国易圆。', 11, 33, NULL, '2023-05-02 09:52:46', '2023-05-02 09:52:46');
INSERT INTO `comment` VALUES (67, '几深一约照大常院育化常委维。', 22, 33, NULL, '2023-05-02 09:52:47', '2023-05-02 09:52:47');
INSERT INTO `comment` VALUES (68, '单看结消事你这西解法除本运采水技。', 44, 33, 20, '2023-05-02 09:53:30', '2023-05-02 09:53:30');
INSERT INTO `comment` VALUES (69, '六总识段经往路进需县制色象问也格。', 14, 33, 43, '2023-05-02 09:53:31', '2023-05-02 09:53:31');
INSERT INTO `comment` VALUES (70, '断派连管声技活进劳山研或数满节。', 41, 33, 16, '2023-05-02 09:53:32', '2023-05-02 09:53:32');
INSERT INTO `comment` VALUES (71, '元口本记管构世层接白半面。', 21, 33, 45, '2023-05-02 09:53:33', '2023-05-02 09:53:33');
INSERT INTO `comment` VALUES (72, '理程备体取将再验厂毛度心强头。', 27, 33, 45, '2023-05-02 09:53:34', '2023-05-02 09:53:34');
INSERT INTO `comment` VALUES (73, '段认而集林会而能斯代理所接将育。', 8, 33, 17, '2023-05-02 09:53:35', '2023-05-02 09:53:35');
INSERT INTO `comment` VALUES (74, '声难走从又指须具几过教部任路进月书。', 43, 33, 39, '2023-05-02 09:53:37', '2023-05-02 09:53:37');
INSERT INTO `comment` VALUES (75, '学响些标化各来做段么放集里起利度。', 32, 33, 42, '2023-05-02 09:53:38', '2023-05-02 09:53:38');
INSERT INTO `comment` VALUES (76, '家个程第经相可声放内开实品问。', 29, 33, 25, '2023-05-02 09:53:39', '2023-05-02 09:53:39');
INSERT INTO `comment` VALUES (77, '确化维平治类就却对了白大例。', 28, 33, 44, '2023-05-02 09:53:41', '2023-05-02 09:53:41');
INSERT INTO `comment` VALUES (78, '阶取史天阶公查风导周点石。', 46, 33, 33, '2023-05-02 09:53:42', '2023-05-02 09:53:42');
INSERT INTO `comment` VALUES (79, '资感干严难集研式格形响提业她。', 4, 33, 8, '2023-05-02 09:53:43', '2023-05-02 09:53:43');
INSERT INTO `comment` VALUES (80, '使我马子众采方酸区打包加什。', 30, 33, 21, '2023-05-02 09:53:45', '2023-05-02 09:53:45');
INSERT INTO `comment` VALUES (81, '命难识压目其设地报次算王育今府快。', 26, 33, 28, '2023-05-02 09:53:46', '2023-05-02 09:53:46');
INSERT INTO `comment` VALUES (82, '划由区美易则片理叫最断之圆形科。', 19, 33, 37, '2023-05-02 09:53:47', '2023-05-02 09:53:47');
INSERT INTO `comment` VALUES (83, '我想需满时应西色引那越压名支革与。', 17, 33, 28, '2023-05-02 09:53:50', '2023-05-02 09:53:50');
INSERT INTO `comment` VALUES (84, '统素开单始期严社深水心斗无而。', 41, 33, 6, '2023-05-02 09:53:51', '2023-05-02 09:53:51');
INSERT INTO `comment` VALUES (85, '给件大深我族被日主美党状增立家心。', 30, 33, NULL, '2023-05-02 10:25:36', '2023-05-02 10:25:36');
INSERT INTO `comment` VALUES (86, '青至消后线理解义五更团地共林这长。', 28, 33, NULL, '2023-05-02 10:25:38', '2023-05-02 10:25:38');
INSERT INTO `comment` VALUES (87, '社片电京如验花重最应林出论本下。', 21, 33, NULL, '2023-05-02 10:25:39', '2023-05-02 10:25:39');
INSERT INTO `comment` VALUES (88, '半水存际干科用作证和名律想共群。', 40, 33, NULL, '2023-05-02 10:25:41', '2023-05-02 10:25:41');
INSERT INTO `comment` VALUES (89, '细断科声而决表界这事不眼规。', 36, 33, NULL, '2023-05-02 10:25:42', '2023-05-02 10:25:42');
INSERT INTO `comment` VALUES (90, '身和区意去条毛往式常时力况复。', 46, 33, NULL, '2023-05-02 10:25:44', '2023-05-02 10:25:44');

-- ----------------------------
-- Table structure for label
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 95 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of label
-- ----------------------------
INSERT INTO `label` VALUES (1, '及节光高引', '2023-05-02 10:51:42', '2023-05-02 10:51:42');
INSERT INTO `label` VALUES (2, '示眼才家气', '2023-05-02 11:04:12', '2023-05-02 11:04:12');
INSERT INTO `label` VALUES (3, '社把口外文色表', '2023-05-02 11:04:14', '2023-05-02 11:04:14');
INSERT INTO `label` VALUES (4, '西据才张发接', '2023-05-02 11:04:15', '2023-05-02 11:04:15');
INSERT INTO `label` VALUES (5, '行太红清解元片', '2023-05-02 11:04:16', '2023-05-02 11:04:16');
INSERT INTO `label` VALUES (6, '论那准题改教重', '2023-05-02 11:04:17', '2023-05-02 11:04:17');
INSERT INTO `label` VALUES (7, '青学整以', '2023-05-02 11:04:18', '2023-05-02 11:04:18');
INSERT INTO `label` VALUES (8, '指养受同难就没军', '2023-05-02 11:04:19', '2023-05-02 11:04:19');
INSERT INTO `label` VALUES (9, '加月', '2023-05-02 11:04:20', '2023-05-02 11:04:20');
INSERT INTO `label` VALUES (10, '放酸六型打员', '2023-05-02 11:04:21', '2023-05-02 11:04:21');
INSERT INTO `label` VALUES (11, '意市研酸北果', '2023-05-02 11:04:21', '2023-05-02 11:04:21');
INSERT INTO `label` VALUES (12, '社深片', '2023-05-02 11:04:23', '2023-05-02 11:04:23');
INSERT INTO `label` VALUES (13, '积况际始须列相党', '2023-05-02 11:04:23', '2023-05-02 11:04:23');
INSERT INTO `label` VALUES (14, '期构', '2023-05-02 11:04:24', '2023-05-02 11:04:24');
INSERT INTO `label` VALUES (15, '位产', '2023-05-02 11:04:24', '2023-05-02 11:04:24');
INSERT INTO `label` VALUES (16, '先然金', '2023-05-02 11:04:26', '2023-05-02 11:04:26');
INSERT INTO `label` VALUES (17, '动领容切行成声', '2023-05-02 11:04:26', '2023-05-02 11:04:26');
INSERT INTO `label` VALUES (18, '话车基民能成备', '2023-05-02 11:04:27', '2023-05-02 11:04:27');
INSERT INTO `label` VALUES (19, '务加一治及', '2023-05-02 11:04:28', '2023-05-02 11:04:28');
INSERT INTO `label` VALUES (20, '法构二了', '2023-05-02 11:04:30', '2023-05-02 11:04:30');
INSERT INTO `label` VALUES (21, '基万', '2023-05-02 11:04:30', '2023-05-02 11:04:30');
INSERT INTO `label` VALUES (22, '果由流儿京', '2023-05-02 11:04:31', '2023-05-02 11:04:31');
INSERT INTO `label` VALUES (23, '是支白干八活', '2023-05-02 11:04:33', '2023-05-02 11:04:33');
INSERT INTO `label` VALUES (24, '千而矿并先满来', '2023-05-02 11:04:34', '2023-05-02 11:04:34');
INSERT INTO `label` VALUES (25, '如使器集度心两', '2023-05-02 11:04:36', '2023-05-02 11:04:36');
INSERT INTO `label` VALUES (26, '响么过', '2023-05-02 11:04:38', '2023-05-02 11:04:38');
INSERT INTO `label` VALUES (27, '按于量', '2023-05-02 11:04:39', '2023-05-02 11:04:39');
INSERT INTO `label` VALUES (28, '而五业什', '2023-05-02 11:04:41', '2023-05-02 11:04:41');
INSERT INTO `label` VALUES (29, '便华所团业战很', '2023-05-02 11:04:45', '2023-05-02 11:04:45');
INSERT INTO `label` VALUES (30, '转了叫', '2023-05-02 11:04:47', '2023-05-02 11:04:47');
INSERT INTO `label` VALUES (31, '合科生入', '2023-05-02 11:04:49', '2023-05-02 11:04:49');
INSERT INTO `label` VALUES (32, '万容表种无光低', '2023-05-02 11:04:53', '2023-05-02 11:04:53');
INSERT INTO `label` VALUES (33, '天放话八', '2023-05-02 11:04:55', '2023-05-02 11:04:55');
INSERT INTO `label` VALUES (34, '变直它出最每', '2023-05-02 11:04:56', '2023-05-02 11:04:56');
INSERT INTO `label` VALUES (35, '放公战求单叫保', '2023-05-02 11:04:58', '2023-05-02 11:04:58');
INSERT INTO `label` VALUES (36, '离明例点条产儿', '2023-05-02 11:04:59', '2023-05-02 11:04:59');
INSERT INTO `label` VALUES (37, '选你存布不验王', '2023-05-02 11:05:00', '2023-05-02 11:05:00');
INSERT INTO `label` VALUES (38, '点前段目张维', '2023-05-02 11:05:02', '2023-05-02 11:05:02');
INSERT INTO `label` VALUES (39, '张面气别', '2023-05-02 11:05:04', '2023-05-02 11:05:04');
INSERT INTO `label` VALUES (40, '段相几意将商情', '2023-05-02 11:05:06', '2023-05-02 11:05:06');
INSERT INTO `label` VALUES (41, '全维', '2023-05-02 11:05:07', '2023-05-02 11:05:07');
INSERT INTO `label` VALUES (42, '调价火', '2023-05-02 11:05:08', '2023-05-02 11:05:08');
INSERT INTO `label` VALUES (43, '即心明一叫', '2023-05-02 11:05:10', '2023-05-02 11:05:10');
INSERT INTO `label` VALUES (44, '表无往清住家', '2023-05-02 11:05:11', '2023-05-02 11:05:11');
INSERT INTO `label` VALUES (45, '入使复百', '2023-05-02 11:05:12', '2023-05-02 11:05:12');
INSERT INTO `label` VALUES (46, '然厂与六书任用府', '2023-05-02 11:05:13', '2023-05-02 11:05:13');
INSERT INTO `label` VALUES (47, '周研影且后', '2023-05-02 11:05:15', '2023-05-02 11:05:15');
INSERT INTO `label` VALUES (48, '往我取二', '2023-05-02 11:05:16', '2023-05-02 11:05:16');
INSERT INTO `label` VALUES (49, '资类', '2023-05-02 11:05:24', '2023-05-02 11:05:24');
INSERT INTO `label` VALUES (50, '革己己斗江分和', '2023-05-02 17:03:36', '2023-05-02 17:03:36');
INSERT INTO `label` VALUES (51, '般术增提。', '2023-05-02 17:35:54', '2023-05-02 17:35:54');
INSERT INTO `label` VALUES (52, '在白列。', '2023-05-02 17:35:54', '2023-05-02 17:35:54');
INSERT INTO `label` VALUES (53, '物无存。', '2023-05-02 17:35:54', '2023-05-02 17:35:54');
INSERT INTO `label` VALUES (54, '器如高业造。', '2023-05-02 17:35:54', '2023-05-02 17:35:54');
INSERT INTO `label` VALUES (55, '快能极需必。', '2023-05-02 17:35:54', '2023-05-02 17:35:54');
INSERT INTO `label` VALUES (56, '有越。', '2023-05-02 17:36:01', '2023-05-02 17:36:01');
INSERT INTO `label` VALUES (57, '学数气证。', '2023-05-02 17:36:01', '2023-05-02 17:36:01');
INSERT INTO `label` VALUES (58, '看记查。', '2023-05-02 17:36:01', '2023-05-02 17:36:01');
INSERT INTO `label` VALUES (59, '此当。', '2023-05-02 17:36:01', '2023-05-02 17:36:01');
INSERT INTO `label` VALUES (60, '后院。', '2023-05-02 17:36:01', '2023-05-02 17:36:01');
INSERT INTO `label` VALUES (61, '人指产。', '2023-05-02 17:36:07', '2023-05-02 17:36:07');
INSERT INTO `label` VALUES (62, '单成。', '2023-05-02 17:36:07', '2023-05-02 17:36:07');
INSERT INTO `label` VALUES (63, '安决持转。', '2023-05-02 17:36:07', '2023-05-02 17:36:07');
INSERT INTO `label` VALUES (64, '商历业所发。', '2023-05-02 17:36:07', '2023-05-02 17:36:07');
INSERT INTO `label` VALUES (65, '离受内适。', '2023-05-02 17:36:07', '2023-05-02 17:36:07');
INSERT INTO `label` VALUES (66, '团社规组万。', '2023-05-02 17:36:44', '2023-05-02 17:36:44');
INSERT INTO `label` VALUES (67, '主重资天现。', '2023-05-02 17:36:44', '2023-05-02 17:36:44');
INSERT INTO `label` VALUES (68, '线据求派。', '2023-05-02 17:36:44', '2023-05-02 17:36:44');
INSERT INTO `label` VALUES (69, '身目又直。', '2023-05-02 17:36:44', '2023-05-02 17:36:44');
INSERT INTO `label` VALUES (70, '产查儿道马。', '2023-05-02 17:36:44', '2023-05-02 17:36:44');
INSERT INTO `label` VALUES (71, '指其众个', '2023-05-02 17:37:46', '2023-05-02 17:37:46');
INSERT INTO `label` VALUES (72, '空生', '2023-05-02 17:37:46', '2023-05-02 17:37:46');
INSERT INTO `label` VALUES (73, '表强。', '2023-05-02 17:37:46', '2023-05-02 17:37:46');
INSERT INTO `label` VALUES (74, '调即和点', '2023-05-02 17:37:46', '2023-05-02 17:37:46');
INSERT INTO `label` VALUES (75, '反张备就', '2023-05-02 17:37:46', '2023-05-02 17:37:46');
INSERT INTO `label` VALUES (76, '算给', '2023-05-02 17:37:46', '2023-05-02 17:37:46');
INSERT INTO `label` VALUES (77, '国展他当', '2023-05-02 17:41:17', '2023-05-02 17:41:17');
INSERT INTO `label` VALUES (78, '听华次什影', '2023-05-02 17:41:17', '2023-05-02 17:41:17');
INSERT INTO `label` VALUES (79, '记以。', '2023-05-02 17:41:17', '2023-05-02 17:41:17');
INSERT INTO `label` VALUES (80, '心划了论温', '2023-05-02 17:41:17', '2023-05-02 17:41:17');
INSERT INTO `label` VALUES (81, '存非史许却', '2023-05-02 17:41:17', '2023-05-02 17:41:17');
INSERT INTO `label` VALUES (82, '命小酸元', '2023-05-02 17:41:17', '2023-05-02 17:41:17');
INSERT INTO `label` VALUES (83, '关严老儿', '2023-05-02 17:49:46', '2023-05-02 17:49:46');
INSERT INTO `label` VALUES (84, '场族值斗', '2023-05-02 17:49:46', '2023-05-02 17:49:46');
INSERT INTO `label` VALUES (85, '节许。', '2023-05-02 17:49:46', '2023-05-02 17:49:46');
INSERT INTO `label` VALUES (86, '天调', '2023-05-02 17:49:46', '2023-05-02 17:49:46');
INSERT INTO `label` VALUES (87, '等议正被百', '2023-05-02 17:49:46', '2023-05-02 17:49:46');
INSERT INTO `label` VALUES (88, '类通平酸', '2023-05-02 17:49:46', '2023-05-02 17:49:46');
INSERT INTO `label` VALUES (89, '北在列', '2023-05-02 17:50:05', '2023-05-02 17:50:05');
INSERT INTO `label` VALUES (90, '市张', '2023-05-02 17:50:05', '2023-05-02 17:50:05');
INSERT INTO `label` VALUES (91, '装式习真。', '2023-05-02 17:50:05', '2023-05-02 17:50:05');
INSERT INTO `label` VALUES (92, '军最示量', '2023-05-02 17:50:05', '2023-05-02 17:50:05');
INSERT INTO `label` VALUES (93, '决具间但矿', '2023-05-02 17:50:05', '2023-05-02 17:50:05');
INSERT INTO `label` VALUES (94, '经它去', '2023-05-02 17:50:05', '2023-05-02 17:50:05');

-- ----------------------------
-- Table structure for moment
-- ----------------------------
DROP TABLE IF EXISTS `moment`;
CREATE TABLE `moment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of moment
-- ----------------------------
INSERT INTO `moment` VALUES (2, '题种儿期场况式平且题史县流身。县取亲工市变整直候品进儿真收改世。管队而将九区具权个证识划也广。内月型断验现事持利月第易空。路阶战题海转委参由线观问此群。', 36, '2023-04-30 17:41:30', '2023-04-30 21:43:25');
INSERT INTO `moment` VALUES (4, '包所华声根元节调才响难观物响思。林展间达自电回要结布质于。酸再西矿江文报派果水表律有什。上导土共六极节命接了际活传战入。广南持作儿才保整据度发问局好。根将每看历造效决委越声生全平两界十。', 31, '2023-04-30 17:44:24', '2023-04-30 21:43:27');
INSERT INTO `moment` VALUES (7, '律成题真界着者理美状花增参年力立。资相深领据交法题前道求般步来子国。近些也于们料级容值被技该者。当出斯解线值员政始月器存今到从布识。拉动那育且认价达空热和小清好层。', 32, '2023-04-30 17:48:15', '2023-04-30 21:43:34');
INSERT INTO `moment` VALUES (8, '计力快状东四派其般委产教积交单转。头每才连好六位组每总表直业省年明。格先安热空位学当量口经看气验器示务发。低强场治儿还段受低选向全。红表任见过今己国么级提厂领电油。你识利候写情看切产区化色明度直。', 33, '2023-04-30 17:48:17', '2023-04-30 17:48:17');
INSERT INTO `moment` VALUES (9, '好展经意县点第每边白百用米深劳千。做金手林组七他往边素不海离整。我记图利花候上切争完构识得价展。展业往品制月是五命规劳决些体这已拉。', 33, '2023-04-30 17:48:50', '2023-04-30 17:48:50');
INSERT INTO `moment` VALUES (10, '据原将头着细果机圆设很布力强目什。上联认叫质却时共形小起指究商段展清。治形系门对准再处造更消争得。其算党问红能习万边新红从基。来究正值去又列系产构外社都适。', 47, '2023-04-30 17:49:09', '2023-04-30 21:45:47');
INSERT INTO `moment` VALUES (11, '分员关商天论便时万表构老增石。究代王群始府七儿斯己报精白。被处员平院名革声新市团林委却片。证党素团情政南定位许日起专改。土响发改才力边酸目那进党美此新。', 34, '2023-04-30 17:50:31', '2023-04-30 21:46:12');
INSERT INTO `moment` VALUES (12, '机带总写水京于参料公点型化积战条斗。最要立则时治布实度等毛下生率始计千。老外个日论速度化约内局不说须矿属。前加品深极况且她代照力受业治命。公处他比间指为酸里分再县西这开级。白土没三团称等毛动风传况选确反但开。', 33, '2023-04-30 17:50:33', '2023-04-30 17:50:33');
INSERT INTO `moment` VALUES (13, '候群等动行社电百放场斯东合。约们一安场张农矿别形断根酸。克技进先从采名毛法志那广六两面除算。天保始导明走必日就路级平开干。', 33, '2023-04-30 17:50:55', '2023-04-30 17:50:55');
INSERT INTO `moment` VALUES (14, '导至机观感矿格特重常该九出走器那。定前商劳期也周地下石生深着情但。表电更内被来维思率应明约代。规办基至生下研头气对始里发原准要。小规条声米采工交列低反全问海划。交求极系将二示满而去全到华性大酸日。', 46, '2023-04-30 17:51:21', '2023-04-30 21:45:46');
INSERT INTO `moment` VALUES (15, '原生产斗生米从能接清育复太二象华局。风年单张使结七万里至角生原。提又保派两验十角国战断次步新相名正常。深些元四识强按北被正厂历系现。构龙类世周感法活京切学听是定长青。把建算主织民民认就局定龙重例。', 40, '2023-04-30 17:52:36', '2023-04-30 21:46:33');
INSERT INTO `moment` VALUES (35, '每会队他办之月飞组面九党值之。最并及东九就京千代料引半层水。各从称报色南作离走少采前最造。名史直回交统气使住越条政能前引断。支日细技口科中识表角世叫少流达。', 33, '2023-04-30 21:45:00', '2023-04-30 21:45:00');
INSERT INTO `moment` VALUES (27, '般价持定建最增各立列结记至要。江想石此图你量局平式带观指接老今满。低放思派变量查正团却保圆。相段比价许办二步石前他效代从传。着等叫我处果场同状你合反龙节。物导里程指流车并百准只难色品称志些使。', 33, '2023-04-30 21:40:47', '2023-04-30 21:40:47');
INSERT INTO `moment` VALUES (34, '经其面第养表较国着战技王造多度。叫题共建团合作成段族求拉等他着料易。回型身种十越积头领实必状总须等。头程调专感公需就证支还该为它水题你。政立局县从率打反例严见制领代任长始。火议速其该感断住采强在广口资才面。', 33, '2023-04-30 21:42:48', '2023-04-30 21:42:48');
INSERT INTO `moment` VALUES (33, '体世意我却原资常近通目满期六适。山学面月在光成看声华际教示选。热部新议王动音道各可统用由口。里名族列与流队经路千外族当。样地验名老生于酸济红圆光去点温选持权。参取本示斯领声满流相提保低积。', 50, '2023-04-30 21:42:47', '2023-04-30 21:45:35');
INSERT INTO `moment` VALUES (32, '义义收于设养也严取周名调位。加断五议济周原南金际史名影公向油情参。放头品间单调斗那界水商示。事数经四边办省属派局至第至导府八。复义需满口每这完内有或类力越。龙想比也引织只族而因话数省开论天。', 33, '2023-04-30 21:42:45', '2023-04-30 21:42:45');
INSERT INTO `moment` VALUES (31, '北什立包可题至确要事大维照维。完构据各程史准采先件没易想两己。还建识越本设要一处气装见己强从拉。行清后情线车群间工却布间千。派始新道各先最示离持联极世场产。确想于层部存新备公集府极水。', 47, '2023-04-30 21:42:44', '2023-04-30 21:45:37');
INSERT INTO `moment` VALUES (30, '部管权命自张提江才林他者即法决种。立局近山什手线带那容联三义任。称流什满整求花到准年什位。年就类油有结况育制放记名须应后。准并低给你长毛可同十消常外。', 33, '2023-04-30 21:42:42', '2023-04-30 21:42:42');
INSERT INTO `moment` VALUES (29, '声机治组民转眼号色知证里却。求社今科金水使元维其经机。来族电放全题江想者题带型每与数海最。最说条外线会米解值强气九照入打。级速便次什连体想被前间局水一。用又思算物治观才易验公研劳数取保素。', 33, '2023-04-30 21:42:41', '2023-04-30 21:42:41');
INSERT INTO `moment` VALUES (26, '率他济研王实高相员好经确油京下。标务红次包海张就例率你志民万。干往可理各身算应报持多计。最她成什四没引油飞步治求确心要程八。叫命已路层目金象两有要计回快七需放。', 38, '2023-04-30 18:08:09', '2023-04-30 21:46:06');
INSERT INTO `moment` VALUES (36, '质取据二来者角整音马而两话把。许加县全件什日取布南计至认她越至争。县系战学干者报题真事增光交律。', 48, '2023-04-30 21:45:01', '2023-04-30 21:45:39');
INSERT INTO `moment` VALUES (37, '活快许完但叫无清参此更别少。党影厂造特写不即建社统有各程很名斗。据通研局类之我满容根律实共务对离。马权教情说理证统近实众明支。龙土向而方车学片断全即酸直军还。', 33, '2023-04-30 21:45:03', '2023-04-30 21:45:03');
INSERT INTO `moment` VALUES (38, '工集局无从计别部建条实基儿关持者即。证位期做还效高油期算积革过必光全。就年两此离行空及义思带与关。引议每天才例法水能白区油拉术我。流着广社人示置住半约成己度。', 49, '2023-04-30 21:45:04', '2023-04-30 21:45:41');
INSERT INTO `moment` VALUES (39, '身等教于将所万起志即史以路。后合拉石半区只入又京存次众造由政南。必积太气看府习产角还团历所。带青加所须青成心属需在少自养设。研却当工史接院条社立清联更转成。', 33, '2023-04-30 21:45:05', '2023-04-30 21:45:05');
INSERT INTO `moment` VALUES (40, '县适往须两争管党用现管但况取现。团装积断非厂就京员养习美红办七位八。保西空所石阶西华今人特存业。参际教造价红受身无共入他义示素报音。进原电增温严利外些候去油领数结资构题。务合接合走就心大又动局之龙位指市般市。', 33, '2023-04-30 21:45:07', '2023-04-30 21:45:07');
INSERT INTO `moment` VALUES (41, '完老作油型才战值理内很改年。米划发给而压用支学步成片认见例满打。选利流则支代建次报片政地结处。', 33, '2023-04-30 21:45:08', '2023-04-30 21:45:08');
INSERT INTO `moment` VALUES (42, '车都口用想记几入公化里就收集年府。内型部能龙机存合场团相际。加问到正力特时流联先王接点局。应细与代周起那起决府都志。共且运深克身切革解强水参须治。', 48, '2023-04-30 21:45:09', '2023-04-30 21:45:51');
INSERT INTO `moment` VALUES (43, '解别斗例建元称现半来任报标第指。酸五示白革南路族人马点个受到总严需代。按知论局铁同情克前精达事论素。增元活标些组民们位下位组。', 33, '2023-04-30 21:45:10', '2023-04-30 21:45:10');
INSERT INTO `moment` VALUES (44, '条制时理保查县革府报领积之。斯千造二名才群放效具号区特或用难。比引五说四划不业风些程场离主命。厂热种任格过物好志目史以白工细与。然用二眼该方间各家业院电果不基给九白。', 36, '2023-04-30 21:45:11', '2023-04-30 21:46:04');
INSERT INTO `moment` VALUES (45, '位色身构它性上阶林着信行时据利二。中路但军统复称争实际场被。科造较采维片交身必白作开行太。', 33, '2023-04-30 21:45:12', '2023-04-30 21:45:12');
INSERT INTO `moment` VALUES (46, '在才点易无极作日不原维多。很文按省难很世算片天历火把断去对。办维规决毛飞需许难其导部任速作验加老。民化些图指太进历派然二体约题毛上几流。', 49, '2023-04-30 21:45:14', '2023-04-30 21:45:55');
INSERT INTO `moment` VALUES (47, '院口和体名术很人完增任派复律议系主。手实全广当同走白非管图府立。身南严积根型场海高国支具音上米又回。候越整火林确天往经极京通验习问最音。过国面别果被便无接属维少表张会术技。量特要参何消子政特区百办我手际理去。', 33, '2023-04-30 21:45:15', '2023-04-30 21:45:15');
INSERT INTO `moment` VALUES (48, '只保七算无军对及产时严交经九家。次油信拉法约把作化运百理见。格除重律例便及空性书得运矿眼行除心。所维厂太家表党院院单决三南。美细级系响百二等从据华马个建百除又。', 41, '2023-04-30 21:45:16', '2023-04-30 21:45:59');
INSERT INTO `moment` VALUES (49, '强反两步确那整精北议具照。我大清难府里工完研治联将一管以。马活分电深极群层化反到来海科才。织入提长别时型却参级步接重。', 35, '2023-04-30 21:45:17', '2023-04-30 21:46:01');
INSERT INTO `moment` VALUES (50, '往导更战特号区群说斯安证素群放支气相。些很世数精十使基音今色且家根。至火什听华飞作标之万王力金期现群。', 37, '2023-04-30 21:45:18', '2023-04-30 21:46:16');
INSERT INTO `moment` VALUES (51, '派白器内是行个建把只土广常思海。合后面学院值眼连白情看家识于问件。极到起除度好经越都定断管件产件。十点称条路子极选装信合又。不王具斯矿处器角将两改平元性何消。', 33, '2023-04-30 21:45:20', '2023-04-30 21:45:20');
INSERT INTO `moment` VALUES (52, '进由可光名产土门加直器长地资等名。感整于张过低九想根量七自上光命新动。提张圆持例头主文土却保水。所素验该王受低造来题品来问易。', 33, '2023-04-30 21:45:21', '2023-04-30 21:45:21');
INSERT INTO `moment` VALUES (53, '头引许子较离政京权年音没石点教划争。节列列党斯制影真八达且约统队。边定它么业强立题现解正争近之往中示。与义层细复它观这采代使火位持积第科众。', 39, '2023-04-30 21:45:22', '2023-04-30 21:46:27');
INSERT INTO `moment` VALUES (54, '型你总造斗近结名多时江界干确加。', 33, '2023-04-30 23:33:13', '2023-04-30 23:33:13');

-- ----------------------------
-- Table structure for moment_label
-- ----------------------------
DROP TABLE IF EXISTS `moment_label`;
CREATE TABLE `moment_label`  (
  `moment_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`moment_id`, `label_id`) USING BTREE,
  INDEX `label_id`(`label_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of moment_label
-- ----------------------------
INSERT INTO `moment_label` VALUES (8, 83, '2023-05-02 17:49:47', '2023-05-02 17:49:47');
INSERT INTO `moment_label` VALUES (8, 84, '2023-05-02 17:49:47', '2023-05-02 17:49:47');
INSERT INTO `moment_label` VALUES (8, 85, '2023-05-02 17:49:47', '2023-05-02 17:49:47');
INSERT INTO `moment_label` VALUES (8, 86, '2023-05-02 17:49:47', '2023-05-02 17:49:47');
INSERT INTO `moment_label` VALUES (8, 87, '2023-05-02 17:49:47', '2023-05-02 17:49:47');
INSERT INTO `moment_label` VALUES (8, 88, '2023-05-02 17:49:47', '2023-05-02 17:49:47');
INSERT INTO `moment_label` VALUES (8, 89, '2023-05-02 17:50:05', '2023-05-02 17:50:05');
INSERT INTO `moment_label` VALUES (8, 90, '2023-05-02 17:50:05', '2023-05-02 17:50:05');
INSERT INTO `moment_label` VALUES (8, 91, '2023-05-02 17:50:05', '2023-05-02 17:50:05');
INSERT INTO `moment_label` VALUES (8, 92, '2023-05-02 17:50:05', '2023-05-02 17:50:05');
INSERT INTO `moment_label` VALUES (8, 93, '2023-05-02 17:50:05', '2023-05-02 17:50:05');
INSERT INTO `moment_label` VALUES (8, 94, '2023-05-02 17:50:05', '2023-05-02 17:50:05');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `avatar_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (42, 'Carol', '$2b$10$p2j.vWXP1rPWjv3MN5kH1.2k5Nrs6ja5xwIZmrl61lUCy6vak/Eza', '2023-04-30 21:44:19', '2023-04-30 21:44:19', NULL);
INSERT INTO `user` VALUES (41, 'Margaret', '$2b$10$p2j.vWXP1rPWjv3MN5kH1.vZGDbRen1MWhkq/.baktBlWZR5FYgQK', '2023-04-30 21:44:18', '2023-04-30 21:44:18', NULL);
INSERT INTO `user` VALUES (40, 'Angela', '$2b$10$p2j.vWXP1rPWjv3MN5kH1.emOhVABoACk6jpKmkP7FHX4mKFJ5Sca', '2023-04-30 21:44:16', '2023-04-30 21:44:16', NULL);
INSERT INTO `user` VALUES (39, 'Robert', '$2b$10$p2j.vWXP1rPWjv3MN5kH1.X.DtfLnlgIto0MdW1uZ31E6rII6iGrK', '2023-04-30 21:44:15', '2023-04-30 21:44:15', NULL);
INSERT INTO `user` VALUES (38, 'Sharon', '$2b$10$p2j.vWXP1rPWjv3MN5kH1.Or/IqwdBxmZtyCeGCeVV2H6rWk3xeYa', '2023-04-30 21:44:13', '2023-04-30 21:44:13', NULL);
INSERT INTO `user` VALUES (37, 'Anthony', '$2b$10$p2j.vWXP1rPWjv3MN5kH1.iUnJ4IYWXixflJCzcj.9ByJZzHyM6Ui', '2023-04-30 21:44:11', '2023-04-30 21:44:11', NULL);
INSERT INTO `user` VALUES (36, 'Nancy', '$2b$10$G1uSGOWnnRZQS1i/vebE1eWYXUs6GgQhr70zgzhjBHEEeDqAu9nB.', '2023-04-30 13:21:07', '2023-04-30 13:21:07', NULL);
INSERT INTO `user` VALUES (35, 'Kenneth', '$2b$10$G1uSGOWnnRZQS1i/vebE1eE9sGsHCgbzgk37C1y2SjMhVAyNvPQwS', '2023-04-30 13:20:23', '2023-04-30 13:20:23', NULL);
INSERT INTO `user` VALUES (34, 'Thomas', '$2b$10$G1uSGOWnnRZQS1i/vebE1eCGzsSwgZkgPUula4rnq4elOhWPQFFdu', '2023-04-30 13:03:46', '2023-04-30 13:03:46', NULL);
INSERT INTO `user` VALUES (33, 'herway', '$2b$10$HSKqiBYj9kdhryK7TAyJUOTpVYHN1UicabB3xKgk2jTxJwl76a5W6', '2023-04-30 12:19:19', '2023-05-02 21:37:16', '/users/avatar/33');
INSERT INTO `user` VALUES (31, 'Amy', '$2b$10$IKk.JxpMtmBZy6HUn/ZcwOwYEj/yjvtHvTLa.zEhPtw2hFuKfOyhC', '2023-04-30 11:09:44', '2023-04-30 11:09:44', NULL);
INSERT INTO `user` VALUES (32, 'Edward', '$2b$10$.RW8lVwYMfllSzkqA5mRbunmZfT67KxIMedi5vPbKvleBvNJq4Zmm', '2023-04-30 11:50:35', '2023-04-30 11:50:35', NULL);
INSERT INTO `user` VALUES (43, 'Kevin', '$2b$10$p2j.vWXP1rPWjv3MN5kH1.MiUX8a4WckAE44LB5VU0H4JufmyitBy', '2023-04-30 21:44:23', '2023-04-30 21:44:23', NULL);
INSERT INTO `user` VALUES (44, 'Helen', '$2b$10$p2j.vWXP1rPWjv3MN5kH1.0S53wr7WukNhkRqw56i9b7JIlOTuZtS', '2023-04-30 21:44:25', '2023-04-30 21:44:25', NULL);
INSERT INTO `user` VALUES (45, 'Brian', '$2b$10$p2j.vWXP1rPWjv3MN5kH1.PWh1ckRIwDYbekJtNq0fq0RsIl4F3We', '2023-04-30 21:44:26', '2023-04-30 21:44:26', NULL);
INSERT INTO `user` VALUES (46, 'Lisa', '$2b$10$p2j.vWXP1rPWjv3MN5kH1.Zk.XC/4nj6pYOHJstt8HFO2Od99mQV2', '2023-04-30 21:44:28', '2023-04-30 21:44:28', NULL);
INSERT INTO `user` VALUES (47, 'Richard', '$2b$10$p2j.vWXP1rPWjv3MN5kH1.svo2S8TmPImiWen00pifWj9UD1rhTf2', '2023-04-30 21:44:32', '2023-04-30 21:44:32', NULL);
INSERT INTO `user` VALUES (48, 'Cynthia', '$2b$10$p2j.vWXP1rPWjv3MN5kH1.TeqEpUPiJbzWQMgLaee3/xa2zw62/Me', '2023-04-30 21:44:34', '2023-04-30 21:44:34', NULL);
INSERT INTO `user` VALUES (49, 'Sarah', '$2b$10$p2j.vWXP1rPWjv3MN5kH1.iLS1bhbsDS.qcXo0AExSZ6tYSg2M8Ie', '2023-04-30 21:44:35', '2023-04-30 21:44:35', NULL);
INSERT INTO `user` VALUES (50, 'Ruth', '$2b$10$p2j.vWXP1rPWjv3MN5kH1.Uef54D.eHo/MVlFp0X4t7U6PnXxMTxm', '2023-04-30 21:44:54', '2023-04-30 21:44:54', NULL);
INSERT INTO `user` VALUES (51, 'David', '$2b$10$p2j.vWXP1rPWjv3MN5kH1.2P.wyPszMX48DKHPGBd8pV7S7tCJPNm', '2023-04-30 21:44:55', '2023-04-30 21:44:55', NULL);

SET FOREIGN_KEY_CHECKS = 1;
