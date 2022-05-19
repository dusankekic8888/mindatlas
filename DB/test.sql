/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 19/05/2022 07:51:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_completionstatus
-- ----------------------------
DROP TABLE IF EXISTS `tbl_completionstatus`;
CREATE TABLE `tbl_completionstatus`  (
  `id` int NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `style` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_completionstatus
-- ----------------------------
INSERT INTO `tbl_completionstatus` VALUES (1, 'Not started', 'danger');
INSERT INTO `tbl_completionstatus` VALUES (2, 'In progress', 'info');
INSERT INTO `tbl_completionstatus` VALUES (3, 'Completed', 'success');

-- ----------------------------
-- Table structure for tbl_course
-- ----------------------------
DROP TABLE IF EXISTS `tbl_course`;
CREATE TABLE `tbl_course`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `course` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_course
-- ----------------------------
INSERT INTO `tbl_course` VALUES (1, 'Animation & VFX');
INSERT INTO `tbl_course` VALUES (2, 'Web Designing & Development');
INSERT INTO `tbl_course` VALUES (3, 'Software Engineering');
INSERT INTO `tbl_course` VALUES (4, 'Digital Marketing');
INSERT INTO `tbl_course` VALUES (5, 'Graphic Designing');
INSERT INTO `tbl_course` VALUES (6, 'Mobile Application Development');
INSERT INTO `tbl_course` VALUES (7, 'Computer Aided Design & Drawing');
INSERT INTO `tbl_course` VALUES (8, 'Project Manage');
INSERT INTO `tbl_course` VALUES (9, 'Hardware Engineering');
INSERT INTO `tbl_course` VALUES (10, 'HTML CSS');
INSERT INTO `tbl_course` VALUES (11, 'AWS');
INSERT INTO `tbl_course` VALUES (12, 'Video editting');
INSERT INTO `tbl_course` VALUES (13, 'Microsoft office');
INSERT INTO `tbl_course` VALUES (14, 'Security');
INSERT INTO `tbl_course` VALUES (15, 'Coding');
INSERT INTO `tbl_course` VALUES (16, 'Networking');

-- ----------------------------
-- Table structure for tbl_enrollment
-- ----------------------------
DROP TABLE IF EXISTS `tbl_enrollment`;
CREATE TABLE `tbl_enrollment`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `courseID` int NOT NULL,
  `completionStatusID` tinyint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 834 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_enrollment
-- ----------------------------
INSERT INTO `tbl_enrollment` VALUES (561, 1, 1, 2);
INSERT INTO `tbl_enrollment` VALUES (562, 1, 2, 3);
INSERT INTO `tbl_enrollment` VALUES (563, 1, 3, 1);
INSERT INTO `tbl_enrollment` VALUES (564, 1, 4, 3);
INSERT INTO `tbl_enrollment` VALUES (565, 1, 5, 2);
INSERT INTO `tbl_enrollment` VALUES (566, 1, 6, 1);
INSERT INTO `tbl_enrollment` VALUES (567, 1, 7, 2);
INSERT INTO `tbl_enrollment` VALUES (568, 1, 8, 1);
INSERT INTO `tbl_enrollment` VALUES (569, 1, 9, 1);
INSERT INTO `tbl_enrollment` VALUES (570, 1, 11, 1);
INSERT INTO `tbl_enrollment` VALUES (571, 1, 12, 3);
INSERT INTO `tbl_enrollment` VALUES (572, 1, 13, 2);
INSERT INTO `tbl_enrollment` VALUES (573, 1, 14, 2);
INSERT INTO `tbl_enrollment` VALUES (574, 1, 15, 1);
INSERT INTO `tbl_enrollment` VALUES (575, 1, 16, 1);
INSERT INTO `tbl_enrollment` VALUES (576, 2, 1, 3);
INSERT INTO `tbl_enrollment` VALUES (577, 2, 2, 2);
INSERT INTO `tbl_enrollment` VALUES (578, 2, 3, 2);
INSERT INTO `tbl_enrollment` VALUES (579, 2, 4, 2);
INSERT INTO `tbl_enrollment` VALUES (580, 2, 5, 3);
INSERT INTO `tbl_enrollment` VALUES (581, 2, 8, 2);
INSERT INTO `tbl_enrollment` VALUES (582, 2, 9, 1);
INSERT INTO `tbl_enrollment` VALUES (583, 2, 10, 2);
INSERT INTO `tbl_enrollment` VALUES (584, 2, 11, 3);
INSERT INTO `tbl_enrollment` VALUES (585, 2, 13, 3);
INSERT INTO `tbl_enrollment` VALUES (586, 2, 14, 3);
INSERT INTO `tbl_enrollment` VALUES (587, 2, 15, 3);
INSERT INTO `tbl_enrollment` VALUES (588, 3, 4, 1);
INSERT INTO `tbl_enrollment` VALUES (589, 3, 8, 1);
INSERT INTO `tbl_enrollment` VALUES (590, 3, 11, 2);
INSERT INTO `tbl_enrollment` VALUES (591, 3, 12, 3);
INSERT INTO `tbl_enrollment` VALUES (592, 3, 14, 2);
INSERT INTO `tbl_enrollment` VALUES (593, 4, 5, 1);
INSERT INTO `tbl_enrollment` VALUES (594, 4, 10, 1);
INSERT INTO `tbl_enrollment` VALUES (595, 4, 15, 3);
INSERT INTO `tbl_enrollment` VALUES (596, 5, 1, 1);
INSERT INTO `tbl_enrollment` VALUES (597, 5, 2, 2);
INSERT INTO `tbl_enrollment` VALUES (598, 5, 3, 3);
INSERT INTO `tbl_enrollment` VALUES (599, 5, 4, 1);
INSERT INTO `tbl_enrollment` VALUES (600, 5, 6, 3);
INSERT INTO `tbl_enrollment` VALUES (601, 5, 7, 1);
INSERT INTO `tbl_enrollment` VALUES (602, 5, 8, 2);
INSERT INTO `tbl_enrollment` VALUES (603, 5, 9, 2);
INSERT INTO `tbl_enrollment` VALUES (604, 5, 10, 2);
INSERT INTO `tbl_enrollment` VALUES (605, 5, 11, 2);
INSERT INTO `tbl_enrollment` VALUES (606, 5, 12, 1);
INSERT INTO `tbl_enrollment` VALUES (607, 5, 13, 2);
INSERT INTO `tbl_enrollment` VALUES (608, 5, 14, 1);
INSERT INTO `tbl_enrollment` VALUES (609, 5, 15, 2);
INSERT INTO `tbl_enrollment` VALUES (610, 6, 3, 1);
INSERT INTO `tbl_enrollment` VALUES (611, 6, 8, 3);
INSERT INTO `tbl_enrollment` VALUES (612, 6, 14, 3);
INSERT INTO `tbl_enrollment` VALUES (613, 7, 1, 2);
INSERT INTO `tbl_enrollment` VALUES (614, 7, 3, 3);
INSERT INTO `tbl_enrollment` VALUES (615, 7, 6, 1);
INSERT INTO `tbl_enrollment` VALUES (616, 8, 1, 2);
INSERT INTO `tbl_enrollment` VALUES (617, 8, 2, 1);
INSERT INTO `tbl_enrollment` VALUES (618, 8, 5, 1);
INSERT INTO `tbl_enrollment` VALUES (619, 8, 6, 1);
INSERT INTO `tbl_enrollment` VALUES (620, 8, 8, 3);
INSERT INTO `tbl_enrollment` VALUES (621, 8, 9, 3);
INSERT INTO `tbl_enrollment` VALUES (622, 8, 12, 3);
INSERT INTO `tbl_enrollment` VALUES (623, 8, 16, 1);
INSERT INTO `tbl_enrollment` VALUES (624, 9, 2, 1);
INSERT INTO `tbl_enrollment` VALUES (625, 9, 3, 2);
INSERT INTO `tbl_enrollment` VALUES (626, 9, 7, 1);
INSERT INTO `tbl_enrollment` VALUES (627, 9, 10, 3);
INSERT INTO `tbl_enrollment` VALUES (628, 9, 11, 1);
INSERT INTO `tbl_enrollment` VALUES (629, 9, 12, 2);
INSERT INTO `tbl_enrollment` VALUES (630, 9, 13, 2);
INSERT INTO `tbl_enrollment` VALUES (631, 9, 14, 1);
INSERT INTO `tbl_enrollment` VALUES (632, 9, 15, 1);
INSERT INTO `tbl_enrollment` VALUES (633, 9, 16, 1);
INSERT INTO `tbl_enrollment` VALUES (634, 10, 4, 3);
INSERT INTO `tbl_enrollment` VALUES (635, 10, 5, 3);
INSERT INTO `tbl_enrollment` VALUES (636, 10, 6, 1);
INSERT INTO `tbl_enrollment` VALUES (637, 10, 8, 3);
INSERT INTO `tbl_enrollment` VALUES (638, 10, 10, 1);
INSERT INTO `tbl_enrollment` VALUES (639, 10, 11, 3);
INSERT INTO `tbl_enrollment` VALUES (640, 10, 12, 2);
INSERT INTO `tbl_enrollment` VALUES (641, 10, 13, 2);
INSERT INTO `tbl_enrollment` VALUES (642, 10, 14, 3);
INSERT INTO `tbl_enrollment` VALUES (643, 10, 16, 2);
INSERT INTO `tbl_enrollment` VALUES (644, 11, 1, 2);
INSERT INTO `tbl_enrollment` VALUES (645, 11, 2, 2);
INSERT INTO `tbl_enrollment` VALUES (646, 11, 3, 2);
INSERT INTO `tbl_enrollment` VALUES (647, 11, 4, 3);
INSERT INTO `tbl_enrollment` VALUES (648, 11, 7, 1);
INSERT INTO `tbl_enrollment` VALUES (649, 11, 8, 3);
INSERT INTO `tbl_enrollment` VALUES (650, 11, 9, 3);
INSERT INTO `tbl_enrollment` VALUES (651, 11, 12, 1);
INSERT INTO `tbl_enrollment` VALUES (652, 11, 14, 2);
INSERT INTO `tbl_enrollment` VALUES (653, 11, 15, 3);
INSERT INTO `tbl_enrollment` VALUES (654, 12, 2, 3);
INSERT INTO `tbl_enrollment` VALUES (655, 12, 3, 3);
INSERT INTO `tbl_enrollment` VALUES (656, 12, 4, 1);
INSERT INTO `tbl_enrollment` VALUES (657, 12, 6, 1);
INSERT INTO `tbl_enrollment` VALUES (658, 12, 7, 3);
INSERT INTO `tbl_enrollment` VALUES (659, 12, 8, 3);
INSERT INTO `tbl_enrollment` VALUES (660, 12, 11, 1);
INSERT INTO `tbl_enrollment` VALUES (661, 12, 12, 1);
INSERT INTO `tbl_enrollment` VALUES (662, 12, 13, 2);
INSERT INTO `tbl_enrollment` VALUES (663, 12, 15, 1);
INSERT INTO `tbl_enrollment` VALUES (664, 12, 16, 2);
INSERT INTO `tbl_enrollment` VALUES (665, 13, 2, 3);
INSERT INTO `tbl_enrollment` VALUES (666, 13, 3, 2);
INSERT INTO `tbl_enrollment` VALUES (667, 13, 4, 3);
INSERT INTO `tbl_enrollment` VALUES (668, 13, 6, 1);
INSERT INTO `tbl_enrollment` VALUES (669, 13, 9, 3);
INSERT INTO `tbl_enrollment` VALUES (670, 13, 10, 2);
INSERT INTO `tbl_enrollment` VALUES (671, 13, 12, 3);
INSERT INTO `tbl_enrollment` VALUES (672, 14, 2, 2);
INSERT INTO `tbl_enrollment` VALUES (673, 14, 3, 3);
INSERT INTO `tbl_enrollment` VALUES (674, 14, 4, 1);
INSERT INTO `tbl_enrollment` VALUES (675, 14, 5, 2);
INSERT INTO `tbl_enrollment` VALUES (676, 14, 6, 1);
INSERT INTO `tbl_enrollment` VALUES (677, 14, 7, 1);
INSERT INTO `tbl_enrollment` VALUES (678, 14, 8, 1);
INSERT INTO `tbl_enrollment` VALUES (679, 14, 9, 3);
INSERT INTO `tbl_enrollment` VALUES (680, 14, 10, 3);
INSERT INTO `tbl_enrollment` VALUES (681, 14, 11, 1);
INSERT INTO `tbl_enrollment` VALUES (682, 14, 12, 2);
INSERT INTO `tbl_enrollment` VALUES (683, 14, 13, 3);
INSERT INTO `tbl_enrollment` VALUES (684, 14, 14, 3);
INSERT INTO `tbl_enrollment` VALUES (685, 14, 15, 3);
INSERT INTO `tbl_enrollment` VALUES (686, 14, 16, 2);
INSERT INTO `tbl_enrollment` VALUES (687, 15, 2, 3);
INSERT INTO `tbl_enrollment` VALUES (688, 15, 3, 1);
INSERT INTO `tbl_enrollment` VALUES (689, 15, 5, 1);
INSERT INTO `tbl_enrollment` VALUES (690, 15, 6, 3);
INSERT INTO `tbl_enrollment` VALUES (691, 15, 7, 1);
INSERT INTO `tbl_enrollment` VALUES (692, 15, 9, 1);
INSERT INTO `tbl_enrollment` VALUES (693, 15, 11, 2);
INSERT INTO `tbl_enrollment` VALUES (694, 15, 12, 1);
INSERT INTO `tbl_enrollment` VALUES (695, 15, 13, 3);
INSERT INTO `tbl_enrollment` VALUES (696, 15, 14, 2);
INSERT INTO `tbl_enrollment` VALUES (697, 15, 15, 1);
INSERT INTO `tbl_enrollment` VALUES (698, 15, 16, 1);
INSERT INTO `tbl_enrollment` VALUES (699, 16, 1, 2);
INSERT INTO `tbl_enrollment` VALUES (700, 16, 3, 3);
INSERT INTO `tbl_enrollment` VALUES (701, 16, 7, 1);
INSERT INTO `tbl_enrollment` VALUES (702, 16, 9, 1);
INSERT INTO `tbl_enrollment` VALUES (703, 16, 11, 3);
INSERT INTO `tbl_enrollment` VALUES (704, 16, 12, 1);
INSERT INTO `tbl_enrollment` VALUES (705, 16, 13, 3);
INSERT INTO `tbl_enrollment` VALUES (706, 16, 14, 1);
INSERT INTO `tbl_enrollment` VALUES (707, 17, 1, 1);
INSERT INTO `tbl_enrollment` VALUES (708, 17, 2, 2);
INSERT INTO `tbl_enrollment` VALUES (709, 17, 3, 1);
INSERT INTO `tbl_enrollment` VALUES (710, 17, 4, 1);
INSERT INTO `tbl_enrollment` VALUES (711, 17, 5, 1);
INSERT INTO `tbl_enrollment` VALUES (712, 17, 7, 3);
INSERT INTO `tbl_enrollment` VALUES (713, 17, 8, 1);
INSERT INTO `tbl_enrollment` VALUES (714, 17, 9, 3);
INSERT INTO `tbl_enrollment` VALUES (715, 17, 10, 3);
INSERT INTO `tbl_enrollment` VALUES (716, 17, 11, 3);
INSERT INTO `tbl_enrollment` VALUES (717, 17, 12, 3);
INSERT INTO `tbl_enrollment` VALUES (718, 17, 15, 1);
INSERT INTO `tbl_enrollment` VALUES (719, 17, 16, 3);
INSERT INTO `tbl_enrollment` VALUES (720, 18, 3, 2);
INSERT INTO `tbl_enrollment` VALUES (721, 18, 11, 2);
INSERT INTO `tbl_enrollment` VALUES (722, 18, 14, 1);
INSERT INTO `tbl_enrollment` VALUES (723, 18, 15, 2);
INSERT INTO `tbl_enrollment` VALUES (724, 19, 2, 1);
INSERT INTO `tbl_enrollment` VALUES (725, 19, 3, 1);
INSERT INTO `tbl_enrollment` VALUES (726, 19, 5, 2);
INSERT INTO `tbl_enrollment` VALUES (727, 19, 6, 1);
INSERT INTO `tbl_enrollment` VALUES (728, 19, 9, 2);
INSERT INTO `tbl_enrollment` VALUES (729, 19, 10, 3);
INSERT INTO `tbl_enrollment` VALUES (730, 19, 11, 1);
INSERT INTO `tbl_enrollment` VALUES (731, 19, 12, 2);
INSERT INTO `tbl_enrollment` VALUES (732, 19, 13, 3);
INSERT INTO `tbl_enrollment` VALUES (733, 19, 14, 3);
INSERT INTO `tbl_enrollment` VALUES (734, 19, 15, 1);
INSERT INTO `tbl_enrollment` VALUES (735, 19, 16, 3);
INSERT INTO `tbl_enrollment` VALUES (736, 20, 1, 1);
INSERT INTO `tbl_enrollment` VALUES (737, 20, 2, 1);
INSERT INTO `tbl_enrollment` VALUES (738, 20, 3, 1);
INSERT INTO `tbl_enrollment` VALUES (739, 20, 4, 1);
INSERT INTO `tbl_enrollment` VALUES (740, 20, 5, 3);
INSERT INTO `tbl_enrollment` VALUES (741, 20, 6, 1);
INSERT INTO `tbl_enrollment` VALUES (742, 20, 7, 1);
INSERT INTO `tbl_enrollment` VALUES (743, 20, 8, 1);
INSERT INTO `tbl_enrollment` VALUES (744, 20, 10, 3);
INSERT INTO `tbl_enrollment` VALUES (745, 20, 11, 2);
INSERT INTO `tbl_enrollment` VALUES (746, 20, 12, 2);
INSERT INTO `tbl_enrollment` VALUES (747, 20, 14, 3);
INSERT INTO `tbl_enrollment` VALUES (748, 20, 15, 2);
INSERT INTO `tbl_enrollment` VALUES (749, 20, 16, 2);
INSERT INTO `tbl_enrollment` VALUES (750, 21, 12, 3);
INSERT INTO `tbl_enrollment` VALUES (751, 21, 13, 3);
INSERT INTO `tbl_enrollment` VALUES (752, 21, 15, 1);
INSERT INTO `tbl_enrollment` VALUES (753, 22, 1, 3);
INSERT INTO `tbl_enrollment` VALUES (754, 22, 2, 2);
INSERT INTO `tbl_enrollment` VALUES (755, 22, 4, 1);
INSERT INTO `tbl_enrollment` VALUES (756, 22, 5, 3);
INSERT INTO `tbl_enrollment` VALUES (757, 22, 6, 3);
INSERT INTO `tbl_enrollment` VALUES (758, 22, 7, 3);
INSERT INTO `tbl_enrollment` VALUES (759, 22, 8, 2);
INSERT INTO `tbl_enrollment` VALUES (760, 22, 10, 2);
INSERT INTO `tbl_enrollment` VALUES (761, 22, 11, 1);
INSERT INTO `tbl_enrollment` VALUES (762, 22, 12, 1);
INSERT INTO `tbl_enrollment` VALUES (763, 22, 13, 3);
INSERT INTO `tbl_enrollment` VALUES (764, 22, 14, 3);
INSERT INTO `tbl_enrollment` VALUES (765, 22, 16, 3);
INSERT INTO `tbl_enrollment` VALUES (766, 23, 2, 2);
INSERT INTO `tbl_enrollment` VALUES (767, 23, 3, 2);
INSERT INTO `tbl_enrollment` VALUES (768, 23, 4, 2);
INSERT INTO `tbl_enrollment` VALUES (769, 23, 5, 1);
INSERT INTO `tbl_enrollment` VALUES (770, 23, 11, 3);
INSERT INTO `tbl_enrollment` VALUES (771, 23, 12, 2);
INSERT INTO `tbl_enrollment` VALUES (772, 24, 1, 2);
INSERT INTO `tbl_enrollment` VALUES (773, 24, 2, 1);
INSERT INTO `tbl_enrollment` VALUES (774, 24, 4, 2);
INSERT INTO `tbl_enrollment` VALUES (775, 24, 11, 1);
INSERT INTO `tbl_enrollment` VALUES (776, 24, 12, 1);
INSERT INTO `tbl_enrollment` VALUES (777, 24, 15, 1);
INSERT INTO `tbl_enrollment` VALUES (778, 24, 16, 3);
INSERT INTO `tbl_enrollment` VALUES (779, 25, 2, 1);
INSERT INTO `tbl_enrollment` VALUES (780, 25, 3, 2);
INSERT INTO `tbl_enrollment` VALUES (781, 25, 4, 3);
INSERT INTO `tbl_enrollment` VALUES (782, 25, 5, 2);
INSERT INTO `tbl_enrollment` VALUES (783, 25, 6, 2);
INSERT INTO `tbl_enrollment` VALUES (784, 25, 7, 3);
INSERT INTO `tbl_enrollment` VALUES (785, 25, 8, 3);
INSERT INTO `tbl_enrollment` VALUES (786, 25, 9, 2);
INSERT INTO `tbl_enrollment` VALUES (787, 25, 10, 1);
INSERT INTO `tbl_enrollment` VALUES (788, 25, 11, 2);
INSERT INTO `tbl_enrollment` VALUES (789, 25, 12, 3);
INSERT INTO `tbl_enrollment` VALUES (790, 25, 16, 3);
INSERT INTO `tbl_enrollment` VALUES (791, 26, 1, 2);
INSERT INTO `tbl_enrollment` VALUES (792, 26, 2, 1);
INSERT INTO `tbl_enrollment` VALUES (793, 26, 3, 1);
INSERT INTO `tbl_enrollment` VALUES (794, 26, 6, 2);
INSERT INTO `tbl_enrollment` VALUES (795, 26, 7, 3);
INSERT INTO `tbl_enrollment` VALUES (796, 26, 8, 1);
INSERT INTO `tbl_enrollment` VALUES (797, 26, 9, 2);
INSERT INTO `tbl_enrollment` VALUES (798, 26, 10, 2);
INSERT INTO `tbl_enrollment` VALUES (799, 26, 11, 2);
INSERT INTO `tbl_enrollment` VALUES (800, 26, 12, 2);
INSERT INTO `tbl_enrollment` VALUES (801, 26, 13, 3);
INSERT INTO `tbl_enrollment` VALUES (802, 26, 14, 2);
INSERT INTO `tbl_enrollment` VALUES (803, 27, 2, 2);
INSERT INTO `tbl_enrollment` VALUES (804, 27, 3, 1);
INSERT INTO `tbl_enrollment` VALUES (805, 27, 7, 2);
INSERT INTO `tbl_enrollment` VALUES (806, 27, 8, 2);
INSERT INTO `tbl_enrollment` VALUES (807, 27, 9, 1);
INSERT INTO `tbl_enrollment` VALUES (808, 27, 10, 2);
INSERT INTO `tbl_enrollment` VALUES (809, 27, 12, 1);
INSERT INTO `tbl_enrollment` VALUES (810, 27, 13, 1);
INSERT INTO `tbl_enrollment` VALUES (811, 27, 15, 2);
INSERT INTO `tbl_enrollment` VALUES (812, 28, 1, 3);
INSERT INTO `tbl_enrollment` VALUES (813, 28, 2, 2);
INSERT INTO `tbl_enrollment` VALUES (814, 28, 3, 2);
INSERT INTO `tbl_enrollment` VALUES (815, 28, 4, 3);
INSERT INTO `tbl_enrollment` VALUES (816, 28, 5, 1);
INSERT INTO `tbl_enrollment` VALUES (817, 28, 6, 3);
INSERT INTO `tbl_enrollment` VALUES (818, 28, 7, 2);
INSERT INTO `tbl_enrollment` VALUES (819, 28, 8, 2);
INSERT INTO `tbl_enrollment` VALUES (820, 28, 9, 2);
INSERT INTO `tbl_enrollment` VALUES (821, 28, 12, 1);
INSERT INTO `tbl_enrollment` VALUES (822, 28, 13, 1);
INSERT INTO `tbl_enrollment` VALUES (823, 28, 14, 1);
INSERT INTO `tbl_enrollment` VALUES (824, 28, 15, 2);
INSERT INTO `tbl_enrollment` VALUES (825, 29, 3, 1);
INSERT INTO `tbl_enrollment` VALUES (826, 29, 7, 2);
INSERT INTO `tbl_enrollment` VALUES (827, 29, 15, 1);
INSERT INTO `tbl_enrollment` VALUES (828, 30, 1, 3);
INSERT INTO `tbl_enrollment` VALUES (829, 30, 4, 1);
INSERT INTO `tbl_enrollment` VALUES (830, 30, 7, 3);
INSERT INTO `tbl_enrollment` VALUES (831, 30, 10, 1);
INSERT INTO `tbl_enrollment` VALUES (832, 30, 12, 2);
INSERT INTO `tbl_enrollment` VALUES (833, 30, 16, 2);

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'Reo', 'Regan');
INSERT INTO `tbl_user` VALUES (2, 'Camron', 'Pace');
INSERT INTO `tbl_user` VALUES (3, 'Kim', 'Andersen');
INSERT INTO `tbl_user` VALUES (4, 'Elaina', 'Bannister');
INSERT INTO `tbl_user` VALUES (5, 'Kadeem', 'Bowers');
INSERT INTO `tbl_user` VALUES (6, 'Maisie', 'Leon');
INSERT INTO `tbl_user` VALUES (7, 'Kyra', 'Morrison');
INSERT INTO `tbl_user` VALUES (8, 'Spike', 'Haworth');
INSERT INTO `tbl_user` VALUES (9, 'Kaif', 'Wright');
INSERT INTO `tbl_user` VALUES (10, 'Emelia', 'Avalos');
INSERT INTO `tbl_user` VALUES (11, 'Ellesha', 'Rush');
INSERT INTO `tbl_user` VALUES (12, 'Khadijah', 'Perez');
INSERT INTO `tbl_user` VALUES (13, 'Brayden', 'Childs');
INSERT INTO `tbl_user` VALUES (14, 'Tabatha', 'Fritz');
INSERT INTO `tbl_user` VALUES (15, 'Donnell', 'Roberts');
INSERT INTO `tbl_user` VALUES (16, 'Wilf', 'Richard');
INSERT INTO `tbl_user` VALUES (17, 'Hibah', 'Clements');
INSERT INTO `tbl_user` VALUES (18, 'Aaryan', 'Compton');
INSERT INTO `tbl_user` VALUES (19, 'Lorna', 'Lindsay');
INSERT INTO `tbl_user` VALUES (20, 'Lilia', 'Hooper');
INSERT INTO `tbl_user` VALUES (21, 'Buster', 'Ireland');
INSERT INTO `tbl_user` VALUES (22, 'Dale', 'Humphrey');
INSERT INTO `tbl_user` VALUES (23, 'Buddy', 'Boyle');
INSERT INTO `tbl_user` VALUES (24, 'Chanel', 'Stone');
INSERT INTO `tbl_user` VALUES (25, 'Georgina', 'Huynh');
INSERT INTO `tbl_user` VALUES (26, 'Sanaa', 'Phillips');
INSERT INTO `tbl_user` VALUES (27, 'Stan', 'Couch');
INSERT INTO `tbl_user` VALUES (28, 'Hakim', 'Paine');
INSERT INTO `tbl_user` VALUES (29, 'Arjan', 'Soto');
INSERT INTO `tbl_user` VALUES (30, 'Ivo', 'Hampton');

SET FOREIGN_KEY_CHECKS = 1;
