

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

# Create Database
# ------------------------------------------------------------
CREATE DATABASE IF NOT EXISTS shanjupay_user DEFAULT CHARACTER SET = utf8mb4;

Use shanjupay_user;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '用户名',
  `MOBILE` varchar(50) NOT NULL COMMENT '手机号',
  `PASSWORD` varchar(50) DEFAULT NULL COMMENT '密码',
  `SALT` varchar(50) DEFAULT NULL COMMENT '盐',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `mobile_idx` (`MOBILE`),
  UNIQUE KEY `username_idx` (`USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=1206857411246428199 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of account
-- ----------------------------
BEGIN;
INSERT INTO `account` VALUES (123456, 'shanju-operation', '13711111111', 'fcc58e79d1481a65a754e3a94aff31c5', 'srxBW');
INSERT INTO `account` VALUES (1177111672632168450, 'sh-1', '15011111111', '12275c5beae8c3a02a0f7233ad6f0797', 'D359a');
INSERT INTO `account` VALUES (1177112064061394945, 'sh-2', '15011111112', 'c50a809e026b71ac12eced98fa867ea0', 'cq281');
INSERT INTO `account` VALUES (1177140318327615489, 'sh-3', '15011111113', '54b1d741ef218399f93db2753483e141', '0DUr0');
INSERT INTO `account` VALUES (1177141851727409153, 'sh-4', '15011111114', 'c88c1357a7208faa9cbaa0b0637eb7c9', 'HDz9X');
INSERT INTO `account` VALUES (1177142745256767490, 'sh-5', '15011111115', '95b464a913298863123bf5bb10b4f7f6', '4522N');
INSERT INTO `account` VALUES (1177144209505071105, 'sh-6', '15011111116', '09a15164e50033417765b37368ec4180', '96ZU7');
INSERT INTO `account` VALUES (1177144209505071106, 'xc-operation-admin', '15011111117', '9b2cd4453a34d4ce990a3a148a1411a1', '6JeNb');
INSERT INTO `account` VALUES (1186173819371454465, 'yuan2', '17717815565', 'ef856da25066702b64170bee64013e7a', 'sqVy0');
INSERT INTO `account` VALUES (1186855108239962114, 'perry', '13460208206', 'f6b243d0dcbf67f047ae2863f31f3714', 'T0IKt');
INSERT INTO `account` VALUES (1194527284397084673, 'sh-69999', '18811111116', '5361889fec025604e589b75545b1837b', 'Og6Qh');
INSERT INTO `account` VALUES (1194528354594721793, 'sh-scq1', '18811111226', 'a2dd1f5c845437b40031dd28835ffeb4', 'o52p0');
INSERT INTO `account` VALUES (1199893397894148098, 'm5566', '17717815566', '9bf18178dc79f045e8fe748ad4202469', 'vt3B6');
INSERT INTO `account` VALUES (1199981636008058881, 'm5599', '17717815599', '18006913c41f76201eebbf93c1df2bf1', 'TFrE4');
INSERT INTO `account` VALUES (1199981636008058888, 'admin', '13666666666', '18006913c41f76201eebbf93c1df2bf1', 'TFrE4');
INSERT INTO `account` VALUES (1199981636008058889, '111222333', '15701277777', '3858a295cfa0080eebadf647f32741e7', '2UE82');
INSERT INTO `account` VALUES (1199981636008058890, '商户注册666', '15708888888', '1dec1d93c8c2cd640c86cd9cc5317068', 'KLShq');
INSERT INTO `account` VALUES (1199981636008058891, '测试注册商户001', '13700000001', 'fcc58e79d1481a65a754e3a94aff31c5', 'srxBW');
INSERT INTO `account` VALUES (1199981636008058892, '测试商户注册002', '13700000002', '8f95ec6d5788a735acdf7c1a27a80431', 'bjc6t');
INSERT INTO `account` VALUES (1199981636008058893, 'aaaa', '13900000003', '2d0e7bacf4d831c559b0b26febd919ee', 'mj9VX');
INSERT INTO `account` VALUES (1204947714553679873, '17717775555', '17717775555', '3562b4a616515ad36b91b9c82bc63abe', 'KMg1B');
INSERT INTO `account` VALUES (1206765066932981762, 'm5577', '17717815577', '93beac740df5ace90cc78c982f68209b', 'CcFS8');
INSERT INTO `account` VALUES (1206857411246428111, 'xc-user-first', '15022222227', '2166ee1caaf1e7c36a300fa2468fb429', '2iSyC');
INSERT INTO `account` VALUES (1206857411246428161, '17717771111', '17717771111', 'aec7c05772c47baf6554397cce29a5dd', '2iSyB');
INSERT INTO `account` VALUES (1206857411246428164, '23432432', '32432423', '49d1ded38f306cd10da1e699e3e02021', 'wG0ky');
INSERT INTO `account` VALUES (1206857411246428165, '234234', '2341234', '27fd701714e2f1f2712b60c38052f23d', 'b8X81');
INSERT INTO `account` VALUES (1206857411246428166, '2342343244', '2342332434', 'aaf4260f4d5a344547bbdf9a820c9b72', '26AR0');
INSERT INTO `account` VALUES (1206857411246428167, 'nihao', '15801322222', 'ad1d48e07684b24c9807e153ca45c772', 'aMW42');
INSERT INTO `account` VALUES (1206857411246428168, 'm5588', '17717775588', 'ee664514cefcd54491449a8a9974874e', 'i6Npk');
INSERT INTO `account` VALUES (1206857411246428170, '423432', '324234', 'a844821d54d0b65b98bdb95cddc8ca38', '3f1sg');
INSERT INTO `account` VALUES (1206857411246428171, '23423434324', '234324', '2b06420efa8f2d19e6e91d3dc505b640', 'dM1S3');
INSERT INTO `account` VALUES (1206857411246428172, '23423434324343', '234324343', 'd195a451b3f3a13c486c2ff4f6f4dfd8', 'V260F');
INSERT INTO `account` VALUES (1206857411246428174, 'm55999', '17717775599', 'ee8580aaaf4a996122e8f2e7031119b4', 'DwMu7');
INSERT INTO `account` VALUES (1206857411246428175, 'm5511', '17717775511', '5e5e5dcff1dd7396dd9fca45b2c5e537', 'OQRuM');
INSERT INTO `account` VALUES (1206857411246428176, 'bbbb', '15701200258', 'bb120ea4f6622f0be30bf13165d9da6d', '8Bm8g');
INSERT INTO `account` VALUES (1206857411246428177, 'yuangong001', '19201111111', '9c1adc2b867f68eb765797c2e9c5a578', 'JS3a1');
INSERT INTO `account` VALUES (1206857411246428178, '11111111', '123412312341', 'e32690a0837d65d5d3db026d83922e63', '33awF');
INSERT INTO `account` VALUES (1206857411246428180, '9GP18611106984', '18611106984', 'b6dc36cf326dc718bab66a46def84a5c', 'N85S0');
INSERT INTO `account` VALUES (1206857411246428181, '44', '444', 'e02969e71f95f6d1a58b477ad619125d', '8y2gu');
INSERT INTO `account` VALUES (1206857411246428182, 'aiyou', '15111111111', '1e3d3fa1c4f8f740a8416f8d5b16f6f9', '0i5RW');
INSERT INTO `account` VALUES (1206857411246428183, 'aaaaaaaaaa', '15212222222', '4be1d0971ae4df8e7f17ccdfc1828152', 'Phhvx');
INSERT INTO `account` VALUES (1206857411246428184, '111111', '3432', 'f6de281f5e71e0dd306ab13da5f1ed17', 'bu6Au');
INSERT INTO `account` VALUES (1206857411246428185, '111', '1111', '72b982a013eee00c9b4183c6b1f271f7', 'hyLnH');
INSERT INTO `account` VALUES (1206857411246428186, '11111', '19200111111', '279d6783419855dbd3e8fca362420e7a', 'VrN34');
INSERT INTO `account` VALUES (1206857411246428187, '222222', '18900111111', 'f4fa1bd7265ba8b369f6316217ba6c57', 'UlW82');
INSERT INTO `account` VALUES (1206857411246428188, 'haha', '12342211111', 'a70922d54dda592cf67a14f18127694a', '3ACjZ');
INSERT INTO `account` VALUES (1206857411246428189, '111111111', '111', '47d1d1e23902d4366694e5776c1b76a0', 'dShV9');
INSERT INTO `account` VALUES (1206857411246428190, '222222222', '111111111', '39976992e3d5563a837505adc4eb5dca', 'mWXp8');
INSERT INTO `account` VALUES (1206857411246428191, '333333333', '11111111', 'bd4f4dd070e5e160e4402a311d00251a', 'en6ok');
INSERT INTO `account` VALUES (1206857411246428192, '444444444', '111111', 'f91a842579314857d066a46d3cb10787', '9unK9');
INSERT INTO `account` VALUES (1206857411246428193, '17717815577', '12345678901', '3bf855338f87395d927cfb9659a5aed1', '4R9Kx');
INSERT INTO `account` VALUES (1206857411246428194, '1771777777', '1771777777', '3a2496ee94f2ee2f09b1c5f3c8e67334', 'XC3A8');
INSERT INTO `account` VALUES (1206857411246428195, '234', '2342', '6751c37c2353e946153e4913c02cf613', 'P7xC5');
COMMIT;

-- ----------------------------
-- Table structure for account_role
-- ----------------------------
DROP TABLE IF EXISTS `account_role`;
CREATE TABLE `account_role` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '用户名',
  `ROLE_CODE` varchar(50) DEFAULT NULL COMMENT '角色编码',
  `TENANT_ID` bigint(20) DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1301761810982985185 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='账号-角色关系';

-- ----------------------------
-- Records of account_role
-- ----------------------------
BEGIN;
INSERT INTO `account_role` VALUES (1301761810982985018, 'sh-1', 'r_001', 1177111672565059586);
INSERT INTO `account_role` VALUES (1301761810982985019, 'sh-1', 'r_002', 1177111672565059586);
INSERT INTO `account_role` VALUES (1301761810982985020, 'sh-2', 'r_001', 1177112064011063298);
INSERT INTO `account_role` VALUES (1301761810982985021, 'sh-2', 'r_002', 1177112064011063298);
INSERT INTO `account_role` VALUES (1301761810982985022, 'sh-3', 'r_001', 1177140318218563585);
INSERT INTO `account_role` VALUES (1301761810982985023, 'sh-3', 'r_002', 1177140318218563585);
INSERT INTO `account_role` VALUES (1301761810982985024, 'sh-4', 'r_001', 1177141851660300290);
INSERT INTO `account_role` VALUES (1301761810982985025, 'sh-4', 'r_002', 1177141851660300290);
INSERT INTO `account_role` VALUES (1301761810982985026, 'sh-5', 'r_001', 1177142745177075713);
INSERT INTO `account_role` VALUES (1301761810982985027, 'sh-5', 'r_002', 1177142745177075713);
INSERT INTO `account_role` VALUES (1301761810982985028, 'sh-6', 'r_001', 1177144209463128065);
INSERT INTO `account_role` VALUES (1301761810982985029, 'sh-6', 'r_002', 1177144209463128065);
INSERT INTO `account_role` VALUES (1301761810982985035, 'sh-1', 'r_001', 1177112064011063298);
INSERT INTO `account_role` VALUES (1301761810982985036, 'sh-1', 'r_002', 1177112064011063298);
INSERT INTO `account_role` VALUES (1301761810982985037, 'xc-operation-admin', 'r_xc_admin', 1177144209463128115);
INSERT INTO `account_role` VALUES (1301761810982985039, 'yuan', 'r_001', 1186165689237438465);
INSERT INTO `account_role` VALUES (1301761810982985040, 'yuan', 'r_002', 1186165689237438465);
INSERT INTO `account_role` VALUES (1301761810982985041, 'yuan2', 'r_001', 1186168085229404161);
INSERT INTO `account_role` VALUES (1301761810982985042, 'yuan2', 'r_002', 1186168085229404161);
INSERT INTO `account_role` VALUES (1301761810982985043, 'yuan2', 'r_001', 1186170919618412546);
INSERT INTO `account_role` VALUES (1301761810982985044, 'yuan2', 'r_002', 1186170919618412546);
INSERT INTO `account_role` VALUES (1301761810982985045, 'yuan2', 'r_001', 1186171861839446018);
INSERT INTO `account_role` VALUES (1301761810982985046, 'yuan2', 'r_002', 1186171861839446018);
INSERT INTO `account_role` VALUES (1301761810982985047, 'yuan2', 'r_001', 1186172654604845058);
INSERT INTO `account_role` VALUES (1301761810982985048, 'yuan2', 'r_002', 1186172654604845058);
INSERT INTO `account_role` VALUES (1301761810982985049, 'yuan2', 'r_001', 1186173819157544962);
INSERT INTO `account_role` VALUES (1301761810982985050, 'yuan2', 'r_002', 1186173819157544962);
INSERT INTO `account_role` VALUES (1301761810982985051, 'perry', 'r_001', 1186855107896029186);
INSERT INTO `account_role` VALUES (1301761810982985052, 'perry', 'r_002', 1186855107896029186);
INSERT INTO `account_role` VALUES (1301761810982985053, 'sh-69999', 'r_001', 1194527284107677698);
INSERT INTO `account_role` VALUES (1301761810982985054, 'sh-69999', 'r_002', 1194527284107677698);
INSERT INTO `account_role` VALUES (1301761810982985055, 'sh-scq1', 'r_001', 1194528354401783809);
INSERT INTO `account_role` VALUES (1301761810982985056, 'sh-scq1', 'r_002', 1194528354401783809);
INSERT INTO `account_role` VALUES (1301761810982985059, 'm5566', 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985060, 'm5566', 'r_002', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985061, 'm5599', 'r_001', 1199981635597017089);
INSERT INTO `account_role` VALUES (1301761810982985062, 'm5599', 'r_002', 1199981635597017089);
INSERT INTO `account_role` VALUES (1301761810982985063, '111222333', 'r_001', 1199981635597017090);
INSERT INTO `account_role` VALUES (1301761810982985064, '111222333', 'r_002', 1199981635597017090);
INSERT INTO `account_role` VALUES (1301761810982985065, '商户注册666', 'r_001', 1199981635597017091);
INSERT INTO `account_role` VALUES (1301761810982985066, '商户注册666', 'r_002', 1199981635597017091);
INSERT INTO `account_role` VALUES (1301761810982985067, '测试注册商户001', 'r_001', 1199981635597017092);
INSERT INTO `account_role` VALUES (1301761810982985068, '测试注册商户001', 'r_002', 1199981635597017092);
INSERT INTO `account_role` VALUES (1301761810982985069, 'shanju-operation', 'r_sj_operation_admin', 1111111672565051234);
INSERT INTO `account_role` VALUES (1301761810982985070, '测试商户注册002', 'r_001', 1199981635597017093);
INSERT INTO `account_role` VALUES (1301761810982985071, '测试商户注册002', 'r_002', 1199981635597017093);
INSERT INTO `account_role` VALUES (1301761810982985072, 'aaaa', 'r_001', 1199981635597017094);
INSERT INTO `account_role` VALUES (1301761810982985073, 'aaaa', 'r_002', 1199981635597017094);
INSERT INTO `account_role` VALUES (1301761810982985074, '17717775555', 'r_001', 1204947714117472258);
INSERT INTO `account_role` VALUES (1301761810982985075, '17717775555', 'r_002', 1204947714117472258);
INSERT INTO `account_role` VALUES (1301761810982985076, 'm5577', 'r_001', 1206765066677129217);
INSERT INTO `account_role` VALUES (1301761810982985077, 'm5577', 'r_002', 1206765066677129217);
INSERT INTO `account_role` VALUES (1301761810982985078, '17717771111', 'r_001', 1206857411133181953);
INSERT INTO `account_role` VALUES (1301761810982985079, '17717771111', 'r_002', 1206857411133181953);
INSERT INTO `account_role` VALUES (1301761810982985080, 'xc-user-first', 'r_xc_com', 1177144209463128125);
INSERT INTO `account_role` VALUES (1301761810982985081, 'm5588', 'r_001', 1206857411133181954);
INSERT INTO `account_role` VALUES (1301761810982985082, 'm5588', 'r_002', 1206857411133181954);
INSERT INTO `account_role` VALUES (1301761810982985083, '23423434324', 'r_001', 1199981635597017094);
INSERT INTO `account_role` VALUES (1301761810982985084, '23423434324343', 'r_002', 1199981635597017094);
INSERT INTO `account_role` VALUES (1301761810982985085, '23423434324343', 'r_001', 1199981635597017094);
INSERT INTO `account_role` VALUES (1301761810982985086, 'm55999', 'r_001', 1206857411133181956);
INSERT INTO `account_role` VALUES (1301761810982985087, 'm55999', 'r_002', 1206857411133181956);
INSERT INTO `account_role` VALUES (1301761810982985088, 'm5511', 'r_001', 1206857411133181957);
INSERT INTO `account_role` VALUES (1301761810982985089, 'm5511', 'r_002', 1206857411133181957);
INSERT INTO `account_role` VALUES (1301761810982985090, 'bbbb', 'r_001', 1206857411133181958);
INSERT INTO `account_role` VALUES (1301761810982985091, 'bbbb', 'r_002', 1206857411133181958);
INSERT INTO `account_role` VALUES (1301761810982985092, 'shanju-operation', 'r_sj_operation_admin', 1111111672565051234);
INSERT INTO `account_role` VALUES (1301761810982985093, 'yuangong001', 'r_002', 1199981635597017094);
INSERT INTO `account_role` VALUES (1301761810982985094, '11111111', 'r_002', 1199981635597017094);
INSERT INTO `account_role` VALUES (1301761810982985095, '11111111', 'r_001', 1199981635597017094);
INSERT INTO `account_role` VALUES (1301761810982985096, 'zhangss', 'r_002', 1199981635597017094);
INSERT INTO `account_role` VALUES (1301761810982985105, '44', 'r_001', 1199981635597017094);
INSERT INTO `account_role` VALUES (1301761810982985110, 'aiyou', 'r_001', 1199981635597017094);
INSERT INTO `account_role` VALUES (1301761810982985116, '111111', 'r_001', 1199981635597017094);
INSERT INTO `account_role` VALUES (1301761810982985117, '111111', 'r_002', 1199981635597017094);
INSERT INTO `account_role` VALUES (1301761810982985118, '111', 'r_001', 1199981635597017094);
INSERT INTO `account_role` VALUES (1301761810982985119, '11111', 'r_001', 1199981635597017094);
INSERT INTO `account_role` VALUES (1301761810982985120, '222222', 'r_001', 1199981635597017094);
INSERT INTO `account_role` VALUES (1301761810982985123, 'haha', 'r_001', 1199981635597017094);
INSERT INTO `account_role` VALUES (1301761810982985124, 'haha', 'r_002', 1199981635597017094);
INSERT INTO `account_role` VALUES (1301761810982985125, '111111111', 'r_001', 1199981635597017094);
INSERT INTO `account_role` VALUES (1301761810982985126, '222222222', 'r_001', 1199981635597017094);
INSERT INTO `account_role` VALUES (1301761810982985127, '333333333', 'r_001', 1199981635597017094);
INSERT INTO `account_role` VALUES (1301761810982985128, '444444444', 'r_001', 1199981635597017094);
INSERT INTO `account_role` VALUES (1301761810982985129, '17717815577', 'r_002', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985130, NULL, 'r_002', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985131, '17717815577', 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985132, NULL, 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985133, NULL, 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985134, NULL, 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985135, NULL, 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985136, NULL, 'r_002', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985137, NULL, 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985138, NULL, 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985139, NULL, 'r_002', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985140, NULL, 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985141, NULL, 'r_002', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985142, '17717815577', 'r_002', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985143, '17717815577', 'r_002', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985144, '17717815577', 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985145, '17717815577', 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985146, '17717815577', 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985147, '17717815577', 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985148, '12345678901', 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985149, NULL, 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985150, NULL, 'r_002', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985151, NULL, 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985152, NULL, 'r_002', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985153, NULL, 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985154, NULL, 'r_002', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985155, NULL, 'r_002', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985156, NULL, 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985157, '12345678901', 'r_002', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985158, '12345678901', 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985159, 'm5566', 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985160, 'm5566', 'r_002', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985161, 'm5566', 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985162, 'm5566', 'r_002', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985163, '17717815599', 'r_002', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985164, '1771777777', 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985165, '1771777777', 'r_002', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985166, '1771777777', 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985167, '1771777777', 'r_002', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985168, '234', 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985170, '17717815599', 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985171, '17717815599', 'r_002', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985172, '17717815599', 'r_001', 1199893397776707585);
INSERT INTO `account_role` VALUES (1301761810982985173, '17717815599', 'r_002', 1199893397776707585);
COMMIT;

-- ----------------------------
-- Table structure for authorization_privilege
-- ----------------------------
DROP TABLE IF EXISTS `authorization_privilege`;
CREATE TABLE `authorization_privilege` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `NAME` varchar(50) DEFAULT NULL COMMENT '权限名称',
  `CODE` varchar(50) DEFAULT NULL COMMENT '权限编码',
  `PRIVILEGE_GROUP_ID` bigint(20) DEFAULT NULL COMMENT '所属权限组id',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `priv_unq_code` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='权限';

-- ----------------------------
-- Records of authorization_privilege
-- ----------------------------
BEGIN;
INSERT INTO `authorization_privilege` VALUES (1, '工作台', 'sj_m_console', 1);
INSERT INTO `authorization_privilege` VALUES (2, '应用管理', 'sj_m_app_list', 4);
INSERT INTO `authorization_privilege` VALUES (3, '应用交易总览', 'sj_m_transaction_list', 4);
INSERT INTO `authorization_privilege` VALUES (4, '应用财务对账', 'sj_m_account_check', 4);
INSERT INTO `authorization_privilege` VALUES (5, '开始支付', 'sj_m_payment', 4);
INSERT INTO `authorization_privilege` VALUES (6, '账户中心', 'sj_m_account_list', 5);
INSERT INTO `authorization_privilege` VALUES (7, '企业认证', 'sj_m_enterprise_auth', 5);
INSERT INTO `authorization_privilege` VALUES (8, '门店管理', 'sj_m_store_list', 6);
INSERT INTO `authorization_privilege` VALUES (9, '成员管理', 'sj_m_staff_list', 6);
INSERT INTO `authorization_privilege` VALUES (10, '会员管理', 'sj_o_member_list', 7);
INSERT INTO `authorization_privilege` VALUES (11, '企业管理', 'sj_o_entreprise_list', 7);
INSERT INTO `authorization_privilege` VALUES (12, '审核管理', 'sj_o_audit', 7);
INSERT INTO `authorization_privilege` VALUES (13, '服务类型管理', 'sj_o_service_type', 8);
INSERT INTO `authorization_privilege` VALUES (14, '往来对账', 'sj_o_account_check', 9);
INSERT INTO `authorization_privilege` VALUES (15, '管理员管理', 'sj_o_admin_list', 10);
INSERT INTO `authorization_privilege` VALUES (16, '角色管理', 'sj_o_role_list', 10);
INSERT INTO `authorization_privilege` VALUES (17, '应用创建', 'sj_m_app_create', 4);
INSERT INTO `authorization_privilege` VALUES (18, '设置默认支付', 'sj_m_payment_set', 4);
INSERT INTO `authorization_privilege` VALUES (19, '门店新增', 'sj_m_store_create', 6);
INSERT INTO `authorization_privilege` VALUES (20, '门店查询', 'sj_m_store_query', 6);
INSERT INTO `authorization_privilege` VALUES (21, '成员新增', 'sj_m_staff_create', 6);
INSERT INTO `authorization_privilege` VALUES (22, '成员查询', 'sj_m_staff_query', 6);
INSERT INTO `authorization_privilege` VALUES (23, '会员查询', 'sj_o_member_query', 7);
INSERT INTO `authorization_privilege` VALUES (24, '企业查询', 'sj_o_enterprise_query', 7);
INSERT INTO `authorization_privilege` VALUES (25, '企业新建', 'sj_o_enterprise_create', 7);
INSERT INTO `authorization_privilege` VALUES (26, '服务类型新建', 'sj_o_service_create', 8);
INSERT INTO `authorization_privilege` VALUES (27, '服务类型查询', 'sj_o_service_query', 8);
INSERT INTO `authorization_privilege` VALUES (28, '管理员新建', 'sj_o_admin_create', 10);
INSERT INTO `authorization_privilege` VALUES (29, '管理员查询', 'sj_o_admin_query', 10);
INSERT INTO `authorization_privilege` VALUES (30, '角色新建', 'sj_o_role_create', 10);
INSERT INTO `authorization_privilege` VALUES (31, '课程列表', 'xc_course_base_list', 17);
INSERT INTO `authorization_privilege` VALUES (32, '课程保存', 'xc_course_base_save', 17);
INSERT INTO `authorization_privilege` VALUES (33, '课程修改', 'xc_course_base_edit', 17);
INSERT INTO `authorization_privilege` VALUES (34, '课程删除', 'xc_course_base_del', 17);
INSERT INTO `authorization_privilege` VALUES (38, '课程详情', 'xc_course_base_view', 17);
INSERT INTO `authorization_privilege` VALUES (39, '课程计划详情', 'xc_teachplan_view', 17);
INSERT INTO `authorization_privilege` VALUES (40, '操作课程计划', 'xc_teachplan_save_modify', 17);
INSERT INTO `authorization_privilege` VALUES (41, '删除课程计划', 'xc_teachplan_del', 17);
INSERT INTO `authorization_privilege` VALUES (42, '操作课程营销', 'xc_market_save_modify', 17);
INSERT INTO `authorization_privilege` VALUES (43, '课程营销详情', 'xc_market_view', 17);
INSERT INTO `authorization_privilege` VALUES (44, '发布课程', 'xc_course_publish', 17);
INSERT INTO `authorization_privilege` VALUES (45, '媒资列表', 'xc_media_list', 18);
INSERT INTO `authorization_privilege` VALUES (46, '媒资保存', 'xc_media_save', 18);
INSERT INTO `authorization_privilege` VALUES (47, '媒资（视频）预览', 'xc_media_preview', 18);
INSERT INTO `authorization_privilege` VALUES (48, '媒资删除', 'xc_media_del', 18);
INSERT INTO `authorization_privilege` VALUES (49, '机构修改', 'xc_company_modify', 19);
INSERT INTO `authorization_privilege` VALUES (50, '机构详情', 'xc_company_view', 19);
INSERT INTO `authorization_privilege` VALUES (51, '教师列表', 'xc_teacher_list', 19);
INSERT INTO `authorization_privilege` VALUES (52, '保存教师信息', 'xc_teacher_save', 19);
INSERT INTO `authorization_privilege` VALUES (53, '修改教师信息', 'xc_teacher_modify', 19);
INSERT INTO `authorization_privilege` VALUES (54, '作业列表', 'xc_teachplanwork_list', 19);
INSERT INTO `authorization_privilege` VALUES (55, '操作课程作业', 'xc_teachplanwork_save_modify', 19);
INSERT INTO `authorization_privilege` VALUES (56, '删除课程作业', 'xc_teachplanwork_del', 19);
INSERT INTO `authorization_privilege` VALUES (57, '作业记录列表', 'xc_workrecord_list', 19);
INSERT INTO `authorization_privilege` VALUES (58, '作业记录批改', 'xc_workrecord_correction', 19);
INSERT INTO `authorization_privilege` VALUES (59, '角色查询', 'sj_o_role_query', 10);
INSERT INTO `authorization_privilege` VALUES (60, '角色权限保存', 'sj_o_role_save', 10);
INSERT INTO `authorization_privilege` VALUES (61, '企业认证的申请', 'sj_m_auth_apply', 7);
INSERT INTO `authorization_privilege` VALUES (62, '工作台续费', 'sj_m_console_renew', 1);
INSERT INTO `authorization_privilege` VALUES (63, '工作台升级', 'sj_m_console_upgrade', 1);
INSERT INTO `authorization_privilege` VALUES (64, '应用保存', 'sj_m_app_save', 4);
INSERT INTO `authorization_privilege` VALUES (65, '应用编辑', 'sj_m_app_modify', 4);
INSERT INTO `authorization_privilege` VALUES (66, '支付参数保存', 'sj_m_payparam_save', 4);
INSERT INTO `authorization_privilege` VALUES (67, '设置默认支付', 'sj_m_pay_set', 4);
INSERT INTO `authorization_privilege` VALUES (68, '默认支付保存', 'sj_m_pay_save', 4);
INSERT INTO `authorization_privilege` VALUES (69, 'C扫B二维码生成', 'sj_m_c2b_qrcode', 4);
INSERT INTO `authorization_privilege` VALUES (70, 'B扫C订单生成', 'sj_m_b2c_order', 4);
INSERT INTO `authorization_privilege` VALUES (71, '线上支付参数展示', 'sj_m_h5_view', 4);
INSERT INTO `authorization_privilege` VALUES (72, '购买套餐', 'sj_m_bundle_buy', 5);
INSERT INTO `authorization_privilege` VALUES (73, '企业认证资料提交', 'sj_m_enterprise_info_submit', 5);
INSERT INTO `authorization_privilege` VALUES (74, '企业认证资料取消', 'sj_m_enterprise_info_cancel', 5);
INSERT INTO `authorization_privilege` VALUES (76, '通过企业认证', 'sj_o_enterprise_auth_pass', 7);
INSERT INTO `authorization_privilege` VALUES (77, '驳回企业认证', 'sj_o_enterprise_auth_rejection', 7);
INSERT INTO `authorization_privilege` VALUES (81, '门店管理-编辑', 'sj_m_store_edit', 6);
INSERT INTO `authorization_privilege` VALUES (82, '成员管理-编辑', 'sj_m_staff_edit', 6);
INSERT INTO `authorization_privilege` VALUES (83, '管理员管理-编辑', 'sj_o_admin_edit', 10);
INSERT INTO `authorization_privilege` VALUES (84, '角色管理-编辑', 'sj_o_role_edit', 10);
INSERT INTO `authorization_privilege` VALUES (85, '门店管理-保存', 'sj_m_store_save', 6);
INSERT INTO `authorization_privilege` VALUES (86, '门店管理-删除', 'sj_m_store_del', 6);
INSERT INTO `authorization_privilege` VALUES (87, '成员管理-保存', 'sj_m_staff_save', 6);
INSERT INTO `authorization_privilege` VALUES (89, '提交课程', 'xc_course_base_commit', NULL);
INSERT INTO `authorization_privilege` VALUES (90, '下架课程', 'xc_course_base_offline', NULL);
INSERT INTO `authorization_privilege` VALUES (91, '课程审核', 'xc_m_course_approve', 20);
INSERT INTO `authorization_privilege` VALUES (92, '课程封禁', 'xc_m_course_forbidden', 20);
INSERT INTO `authorization_privilege` VALUES (93, '所有课程列表', 'xc_m_course_list', 20);
INSERT INTO `authorization_privilege` VALUES (94, '任意课程删除', 'xc_m_course_del', 20);
INSERT INTO `authorization_privilege` VALUES (95, '所有媒资列表', 'xc_m_media_list', 21);
INSERT INTO `authorization_privilege` VALUES (96, '媒资审核', 'xc_m_media_audit', 21);
INSERT INTO `authorization_privilege` VALUES (97, '所有评论列表', 'xc_m_comment_all_list', 22);
INSERT INTO `authorization_privilege` VALUES (98, '任意评论删除', 'xc_m_comment_del', 22);
INSERT INTO `authorization_privilege` VALUES (100, '所有机构列表', 'xc_m_company_list', 23);
INSERT INTO `authorization_privilege` VALUES (101, '机构审核', 'xc_m_company_approve', 23);
INSERT INTO `authorization_privilege` VALUES (102, '账户管理', 'sj_m_account', 1);
INSERT INTO `authorization_privilege` VALUES (103, '支付应用管理', 'sj_m_app', 1);
INSERT INTO `authorization_privilege` VALUES (104, '组织管理', 'sj_m_organization', 1);
INSERT INTO `authorization_privilege` VALUES (105, '企业管理', 'sj_o_entreprise', 2);
INSERT INTO `authorization_privilege` VALUES (106, '服务类型管理', 'sj_o_service', 2);
INSERT INTO `authorization_privilege` VALUES (107, '系统管理', 'sj_o_sys', 2);
INSERT INTO `authorization_privilege` VALUES (108, '账单管理', 'sj_o_account', 2);
COMMIT;

-- ----------------------------
-- Table structure for authorization_privilege_group
-- ----------------------------
DROP TABLE IF EXISTS `authorization_privilege_group`;
CREATE TABLE `authorization_privilege_group` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `PARENT_ID` bigint(20) DEFAULT NULL COMMENT '父id',
  `NAME` varchar(50) DEFAULT NULL COMMENT '权限组名称',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='权限组';

-- ----------------------------
-- Records of authorization_privilege_group
-- ----------------------------
BEGIN;
INSERT INTO `authorization_privilege_group` VALUES (1, NULL, '商户平台');
INSERT INTO `authorization_privilege_group` VALUES (2, NULL, '运营平台');
INSERT INTO `authorization_privilege_group` VALUES (3, NULL, '门户网站');
INSERT INTO `authorization_privilege_group` VALUES (4, 1, '应用管理');
INSERT INTO `authorization_privilege_group` VALUES (5, 1, '账户管理');
INSERT INTO `authorization_privilege_group` VALUES (6, 1, '组织管理');
INSERT INTO `authorization_privilege_group` VALUES (7, 2, '企业管理');
INSERT INTO `authorization_privilege_group` VALUES (8, 2, '服务类型管理');
INSERT INTO `authorization_privilege_group` VALUES (9, 2, '账单管理');
INSERT INTO `authorization_privilege_group` VALUES (10, 2, '系统管理');
INSERT INTO `authorization_privilege_group` VALUES (12, NULL, '商户平台app端');
INSERT INTO `authorization_privilege_group` VALUES (13, NULL, '学成在线2.0平台');
INSERT INTO `authorization_privilege_group` VALUES (16, NULL, '学成在线2.0运营');
INSERT INTO `authorization_privilege_group` VALUES (17, 13, '内容管理');
INSERT INTO `authorization_privilege_group` VALUES (18, 13, '媒资管理');
INSERT INTO `authorization_privilege_group` VALUES (19, 13, '教学管理');
INSERT INTO `authorization_privilege_group` VALUES (20, 16, '课程审核管理');
INSERT INTO `authorization_privilege_group` VALUES (21, 16, '媒资审核管理');
INSERT INTO `authorization_privilege_group` VALUES (22, 16, '评论管理');
INSERT INTO `authorization_privilege_group` VALUES (23, 16, '机构审核管理');
COMMIT;

-- ----------------------------
-- Table structure for authorization_role
-- ----------------------------
DROP TABLE IF EXISTS `authorization_role`;
CREATE TABLE `authorization_role` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `NAME` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `CODE` varchar(50) DEFAULT NULL COMMENT '角色编码',
  `TENANT_ID` bigint(20) DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `tenant_id_code_unique` (`CODE`,`TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色信息';

-- ----------------------------
-- Records of authorization_role
-- ----------------------------
BEGIN;
INSERT INTO `authorization_role` VALUES (1, '商户管理员', 'r_001', 1177111672565059586);
INSERT INTO `authorization_role` VALUES (2, '商户门店收银员', 'r_002', 1177111672565059586);
INSERT INTO `authorization_role` VALUES (11, '商户管理员', 'r_001', 1177112064011063298);
INSERT INTO `authorization_role` VALUES (12, '商户门店收银员', 'r_002', 1177112064011063298);
INSERT INTO `authorization_role` VALUES (13, '商户管理员', 'r_001', 1177140318218563585);
INSERT INTO `authorization_role` VALUES (14, '商户门店收银员', 'r_002', 1177140318218563585);
INSERT INTO `authorization_role` VALUES (15, '商户管理员', 'r_001', 1177141851660300290);
INSERT INTO `authorization_role` VALUES (16, '商户门店收银员', 'r_002', 1177141851660300290);
INSERT INTO `authorization_role` VALUES (17, '商户管理员', 'r_001', 1177142745177075713);
INSERT INTO `authorization_role` VALUES (18, '商户门店收银员', 'r_002', 1177142745177075713);
INSERT INTO `authorization_role` VALUES (19, '商户管理员', 'r_001', 1177144209463128065);
INSERT INTO `authorization_role` VALUES (20, '商户门店收银员', 'r_002', 1177144209463128065);
INSERT INTO `authorization_role` VALUES (21, '学成-运营商管理员', 'r_xc_admin', 1177144209463128115);
INSERT INTO `authorization_role` VALUES (22, '学成-教学机构管理员', 'r_xc_com', 1177144209463128125);
INSERT INTO `authorization_role` VALUES (23, '商户管理员', 'r_001', 1186165689237438465);
INSERT INTO `authorization_role` VALUES (24, '商户门店收银员', 'r_002', 1186165689237438465);
INSERT INTO `authorization_role` VALUES (25, '商户管理员', 'r_001', 1186168085229404161);
INSERT INTO `authorization_role` VALUES (26, '商户门店收银员', 'r_002', 1186168085229404161);
INSERT INTO `authorization_role` VALUES (27, '商户管理员', 'r_001', 1186170919618412546);
INSERT INTO `authorization_role` VALUES (28, '商户门店收银员', 'r_002', 1186170919618412546);
INSERT INTO `authorization_role` VALUES (29, '商户管理员', 'r_001', 1186171861839446018);
INSERT INTO `authorization_role` VALUES (30, '商户门店收银员', 'r_002', 1186171861839446018);
INSERT INTO `authorization_role` VALUES (31, '商户管理员', 'r_001', 1186172654604845058);
INSERT INTO `authorization_role` VALUES (32, '商户门店收银员', 'r_002', 1186172654604845058);
INSERT INTO `authorization_role` VALUES (33, '商户管理员', 'r_001', 1186173819157544962);
INSERT INTO `authorization_role` VALUES (34, '商户门店收银员', 'r_002', 1186173819157544962);
INSERT INTO `authorization_role` VALUES (35, '商户管理员', 'r_001', 1186855107896029186);
INSERT INTO `authorization_role` VALUES (36, '商户门店收银员', 'r_002', 1186855107896029186);
INSERT INTO `authorization_role` VALUES (38, '商户管理员', 'r_001', 1194527284107677698);
INSERT INTO `authorization_role` VALUES (39, '商户门店收银员', 'r_002', 1194527284107677698);
INSERT INTO `authorization_role` VALUES (40, '商户管理员', 'r_001', 1194528354401783809);
INSERT INTO `authorization_role` VALUES (41, '商户门店收银员', 'r_002', 1194528354401783809);
INSERT INTO `authorization_role` VALUES (46, '商户管理员', 'r_001', 1199893397776707585);
INSERT INTO `authorization_role` VALUES (47, '商户门店收银员', 'r_002', 1199893397776707585);
INSERT INTO `authorization_role` VALUES (48, '商户管理员', 'r_001', 1199981635597017089);
INSERT INTO `authorization_role` VALUES (49, '商户门店收银员', 'r_002', 1199981635597017089);
INSERT INTO `authorization_role` VALUES (50, '商户管理员', 'r_001', 1199981635597017090);
INSERT INTO `authorization_role` VALUES (51, '商户门店收银员', 'r_002', 1199981635597017090);
INSERT INTO `authorization_role` VALUES (52, '商户管理员', 'r_001', 1199981635597017091);
INSERT INTO `authorization_role` VALUES (53, '商户门店收银员', 'r_002', 1199981635597017091);
INSERT INTO `authorization_role` VALUES (54, '商户管理员', 'r_001', 1199981635597017092);
INSERT INTO `authorization_role` VALUES (55, '商户门店收银员', 'r_002', 1199981635597017092);
INSERT INTO `authorization_role` VALUES (56, '运营管理员', 'r_sj_operation_admin', 1111111672565051234);
INSERT INTO `authorization_role` VALUES (57, '商户管理员', 'r_001', 1199981635597017093);
INSERT INTO `authorization_role` VALUES (58, '商户门店收银员', 'r_002', 1199981635597017093);
INSERT INTO `authorization_role` VALUES (59, '商户管理员', 'r_001', 1199981635597017094);
INSERT INTO `authorization_role` VALUES (60, '商户门店收银员', 'r_002', 1199981635597017094);
INSERT INTO `authorization_role` VALUES (61, '商户管理员', 'r_001', 1204947714117472258);
INSERT INTO `authorization_role` VALUES (62, '商户门店收银员', 'r_002', 1204947714117472258);
INSERT INTO `authorization_role` VALUES (63, '商户管理员', 'r_001', 1206765066677129217);
INSERT INTO `authorization_role` VALUES (64, '商户门店收银员', 'r_002', 1206765066677129217);
INSERT INTO `authorization_role` VALUES (65, '商户管理员', 'r_001', 1206857411133181953);
INSERT INTO `authorization_role` VALUES (66, '商户门店收银员', 'r_002', 1206857411133181953);
INSERT INTO `authorization_role` VALUES (67, '商户管理员', 'r_001', 1206857411133181954);
INSERT INTO `authorization_role` VALUES (68, '商户门店收银员', 'r_002', 1206857411133181954);
INSERT INTO `authorization_role` VALUES (69, '商户管理员', 'r_001', 1206857411133181956);
INSERT INTO `authorization_role` VALUES (70, '商户门店收银员', 'r_002', 1206857411133181956);
INSERT INTO `authorization_role` VALUES (71, '商户管理员', 'r_001', 1206857411133181957);
INSERT INTO `authorization_role` VALUES (72, '商户门店收银员', 'r_002', 1206857411133181957);
INSERT INTO `authorization_role` VALUES (73, '商户管理员', 'r_001', 1206857411133181958);
INSERT INTO `authorization_role` VALUES (74, '商户门店收银员', 'r_002', 1206857411133181958);
COMMIT;

-- ----------------------------
-- Table structure for authorization_role_privilege
-- ----------------------------
DROP TABLE IF EXISTS `authorization_role_privilege`;
CREATE TABLE `authorization_role_privilege` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ROLE_ID` bigint(20) DEFAULT NULL COMMENT '角色id',
  `PRIVILEGE_ID` bigint(20) DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `role_priv_unique` (`ROLE_ID`,`PRIVILEGE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1492 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色-权限关系';

-- ----------------------------
-- Records of authorization_role_privilege
-- ----------------------------
BEGIN;
INSERT INTO `authorization_role_privilege` VALUES (1, 1, 1);
INSERT INTO `authorization_role_privilege` VALUES (2, 1, 2);
INSERT INTO `authorization_role_privilege` VALUES (3, 1, 3);
INSERT INTO `authorization_role_privilege` VALUES (4, 1, 4);
INSERT INTO `authorization_role_privilege` VALUES (5, 1, 5);
INSERT INTO `authorization_role_privilege` VALUES (6, 1, 6);
INSERT INTO `authorization_role_privilege` VALUES (7, 1, 7);
INSERT INTO `authorization_role_privilege` VALUES (8, 1, 8);
INSERT INTO `authorization_role_privilege` VALUES (9, 1, 9);
INSERT INTO `authorization_role_privilege` VALUES (1228, 1, 102);
INSERT INTO `authorization_role_privilege` VALUES (1229, 1, 103);
INSERT INTO `authorization_role_privilege` VALUES (1230, 1, 104);
INSERT INTO `authorization_role_privilege` VALUES (1312, 2, 102);
INSERT INTO `authorization_role_privilege` VALUES (1313, 2, 103);
INSERT INTO `authorization_role_privilege` VALUES (1314, 2, 104);
INSERT INTO `authorization_role_privilege` VALUES (15, 11, 1);
INSERT INTO `authorization_role_privilege` VALUES (16, 11, 2);
INSERT INTO `authorization_role_privilege` VALUES (17, 11, 3);
INSERT INTO `authorization_role_privilege` VALUES (18, 11, 4);
INSERT INTO `authorization_role_privilege` VALUES (19, 11, 5);
INSERT INTO `authorization_role_privilege` VALUES (20, 11, 6);
INSERT INTO `authorization_role_privilege` VALUES (21, 11, 7);
INSERT INTO `authorization_role_privilege` VALUES (22, 11, 8);
INSERT INTO `authorization_role_privilege` VALUES (23, 11, 9);
INSERT INTO `authorization_role_privilege` VALUES (1231, 11, 102);
INSERT INTO `authorization_role_privilege` VALUES (1232, 11, 103);
INSERT INTO `authorization_role_privilege` VALUES (1233, 11, 104);
INSERT INTO `authorization_role_privilege` VALUES (1315, 12, 102);
INSERT INTO `authorization_role_privilege` VALUES (1316, 12, 103);
INSERT INTO `authorization_role_privilege` VALUES (1317, 12, 104);
INSERT INTO `authorization_role_privilege` VALUES (29, 13, 1);
INSERT INTO `authorization_role_privilege` VALUES (30, 13, 2);
INSERT INTO `authorization_role_privilege` VALUES (31, 13, 3);
INSERT INTO `authorization_role_privilege` VALUES (32, 13, 4);
INSERT INTO `authorization_role_privilege` VALUES (33, 13, 5);
INSERT INTO `authorization_role_privilege` VALUES (34, 13, 6);
INSERT INTO `authorization_role_privilege` VALUES (35, 13, 7);
INSERT INTO `authorization_role_privilege` VALUES (36, 13, 8);
INSERT INTO `authorization_role_privilege` VALUES (37, 13, 9);
INSERT INTO `authorization_role_privilege` VALUES (1234, 13, 102);
INSERT INTO `authorization_role_privilege` VALUES (1235, 13, 103);
INSERT INTO `authorization_role_privilege` VALUES (1236, 13, 104);
INSERT INTO `authorization_role_privilege` VALUES (1318, 14, 102);
INSERT INTO `authorization_role_privilege` VALUES (1319, 14, 103);
INSERT INTO `authorization_role_privilege` VALUES (1320, 14, 104);
INSERT INTO `authorization_role_privilege` VALUES (43, 15, 1);
INSERT INTO `authorization_role_privilege` VALUES (44, 15, 2);
INSERT INTO `authorization_role_privilege` VALUES (45, 15, 3);
INSERT INTO `authorization_role_privilege` VALUES (46, 15, 4);
INSERT INTO `authorization_role_privilege` VALUES (47, 15, 5);
INSERT INTO `authorization_role_privilege` VALUES (48, 15, 6);
INSERT INTO `authorization_role_privilege` VALUES (49, 15, 7);
INSERT INTO `authorization_role_privilege` VALUES (50, 15, 8);
INSERT INTO `authorization_role_privilege` VALUES (51, 15, 9);
INSERT INTO `authorization_role_privilege` VALUES (1237, 15, 102);
INSERT INTO `authorization_role_privilege` VALUES (1238, 15, 103);
INSERT INTO `authorization_role_privilege` VALUES (1239, 15, 104);
INSERT INTO `authorization_role_privilege` VALUES (1321, 16, 102);
INSERT INTO `authorization_role_privilege` VALUES (1322, 16, 103);
INSERT INTO `authorization_role_privilege` VALUES (1323, 16, 104);
INSERT INTO `authorization_role_privilege` VALUES (57, 17, 1);
INSERT INTO `authorization_role_privilege` VALUES (58, 17, 2);
INSERT INTO `authorization_role_privilege` VALUES (59, 17, 3);
INSERT INTO `authorization_role_privilege` VALUES (60, 17, 4);
INSERT INTO `authorization_role_privilege` VALUES (61, 17, 5);
INSERT INTO `authorization_role_privilege` VALUES (62, 17, 6);
INSERT INTO `authorization_role_privilege` VALUES (63, 17, 7);
INSERT INTO `authorization_role_privilege` VALUES (64, 17, 8);
INSERT INTO `authorization_role_privilege` VALUES (65, 17, 9);
INSERT INTO `authorization_role_privilege` VALUES (1240, 17, 102);
INSERT INTO `authorization_role_privilege` VALUES (1241, 17, 103);
INSERT INTO `authorization_role_privilege` VALUES (1242, 17, 104);
INSERT INTO `authorization_role_privilege` VALUES (1324, 18, 102);
INSERT INTO `authorization_role_privilege` VALUES (1325, 18, 103);
INSERT INTO `authorization_role_privilege` VALUES (1326, 18, 104);
INSERT INTO `authorization_role_privilege` VALUES (71, 19, 1);
INSERT INTO `authorization_role_privilege` VALUES (72, 19, 2);
INSERT INTO `authorization_role_privilege` VALUES (73, 19, 3);
INSERT INTO `authorization_role_privilege` VALUES (74, 19, 4);
INSERT INTO `authorization_role_privilege` VALUES (75, 19, 5);
INSERT INTO `authorization_role_privilege` VALUES (76, 19, 6);
INSERT INTO `authorization_role_privilege` VALUES (77, 19, 7);
INSERT INTO `authorization_role_privilege` VALUES (78, 19, 8);
INSERT INTO `authorization_role_privilege` VALUES (79, 19, 9);
INSERT INTO `authorization_role_privilege` VALUES (1243, 19, 102);
INSERT INTO `authorization_role_privilege` VALUES (1244, 19, 103);
INSERT INTO `authorization_role_privilege` VALUES (1245, 19, 104);
INSERT INTO `authorization_role_privilege` VALUES (1327, 20, 102);
INSERT INTO `authorization_role_privilege` VALUES (1328, 20, 103);
INSERT INTO `authorization_role_privilege` VALUES (1329, 20, 104);
INSERT INTO `authorization_role_privilege` VALUES (926, 21, 31);
INSERT INTO `authorization_role_privilege` VALUES (928, 21, 32);
INSERT INTO `authorization_role_privilege` VALUES (925, 21, 33);
INSERT INTO `authorization_role_privilege` VALUES (924, 21, 34);
INSERT INTO `authorization_role_privilege` VALUES (929, 21, 38);
INSERT INTO `authorization_role_privilege` VALUES (955, 21, 40);
INSERT INTO `authorization_role_privilege` VALUES (954, 21, 41);
INSERT INTO `authorization_role_privilege` VALUES (931, 21, 42);
INSERT INTO `authorization_role_privilege` VALUES (932, 21, 43);
INSERT INTO `authorization_role_privilege` VALUES (930, 21, 44);
INSERT INTO `authorization_role_privilege` VALUES (934, 21, 45);
INSERT INTO `authorization_role_privilege` VALUES (935, 21, 47);
INSERT INTO `authorization_role_privilege` VALUES (933, 21, 48);
INSERT INTO `authorization_role_privilege` VALUES (921, 21, 49);
INSERT INTO `authorization_role_privilege` VALUES (922, 21, 50);
INSERT INTO `authorization_role_privilege` VALUES (948, 21, 51);
INSERT INTO `authorization_role_privilege` VALUES (950, 21, 52);
INSERT INTO `authorization_role_privilege` VALUES (949, 21, 53);
INSERT INTO `authorization_role_privilege` VALUES (952, 21, 54);
INSERT INTO `authorization_role_privilege` VALUES (953, 21, 55);
INSERT INTO `authorization_role_privilege` VALUES (951, 21, 56);
INSERT INTO `authorization_role_privilege` VALUES (958, 21, 57);
INSERT INTO `authorization_role_privilege` VALUES (957, 21, 58);
INSERT INTO `authorization_role_privilege` VALUES (923, 21, 89);
INSERT INTO `authorization_role_privilege` VALUES (927, 21, 90);
INSERT INTO `authorization_role_privilege` VALUES (942, 21, 91);
INSERT INTO `authorization_role_privilege` VALUES (944, 21, 92);
INSERT INTO `authorization_role_privilege` VALUES (945, 21, 93);
INSERT INTO `authorization_role_privilege` VALUES (943, 21, 94);
INSERT INTO `authorization_role_privilege` VALUES (947, 21, 95);
INSERT INTO `authorization_role_privilege` VALUES (946, 21, 96);
INSERT INTO `authorization_role_privilege` VALUES (937, 21, 97);
INSERT INTO `authorization_role_privilege` VALUES (939, 21, 98);
INSERT INTO `authorization_role_privilege` VALUES (938, 21, 99);
INSERT INTO `authorization_role_privilege` VALUES (941, 21, 100);
INSERT INTO `authorization_role_privilege` VALUES (940, 21, 101);
INSERT INTO `authorization_role_privilege` VALUES (86, 22, 31);
INSERT INTO `authorization_role_privilege` VALUES (196, 22, 32);
INSERT INTO `authorization_role_privilege` VALUES (194, 22, 33);
INSERT INTO `authorization_role_privilege` VALUES (193, 22, 34);
INSERT INTO `authorization_role_privilege` VALUES (197, 22, 38);
INSERT INTO `authorization_role_privilege` VALUES (215, 22, 39);
INSERT INTO `authorization_role_privilege` VALUES (214, 22, 40);
INSERT INTO `authorization_role_privilege` VALUES (213, 22, 41);
INSERT INTO `authorization_role_privilege` VALUES (199, 22, 42);
INSERT INTO `authorization_role_privilege` VALUES (200, 22, 43);
INSERT INTO `authorization_role_privilege` VALUES (198, 22, 44);
INSERT INTO `authorization_role_privilege` VALUES (202, 22, 45);
INSERT INTO `authorization_role_privilege` VALUES (204, 22, 46);
INSERT INTO `authorization_role_privilege` VALUES (203, 22, 47);
INSERT INTO `authorization_role_privilege` VALUES (201, 22, 48);
INSERT INTO `authorization_role_privilege` VALUES (191, 22, 49);
INSERT INTO `authorization_role_privilege` VALUES (192, 22, 50);
INSERT INTO `authorization_role_privilege` VALUES (205, 22, 51);
INSERT INTO `authorization_role_privilege` VALUES (207, 22, 52);
INSERT INTO `authorization_role_privilege` VALUES (206, 22, 53);
INSERT INTO `authorization_role_privilege` VALUES (211, 22, 54);
INSERT INTO `authorization_role_privilege` VALUES (212, 22, 55);
INSERT INTO `authorization_role_privilege` VALUES (210, 22, 56);
INSERT INTO `authorization_role_privilege` VALUES (209, 22, 57);
INSERT INTO `authorization_role_privilege` VALUES (208, 22, 58);
INSERT INTO `authorization_role_privilege` VALUES (89, 23, 1);
INSERT INTO `authorization_role_privilege` VALUES (90, 23, 2);
INSERT INTO `authorization_role_privilege` VALUES (91, 23, 3);
INSERT INTO `authorization_role_privilege` VALUES (92, 23, 4);
INSERT INTO `authorization_role_privilege` VALUES (93, 23, 5);
INSERT INTO `authorization_role_privilege` VALUES (94, 23, 6);
INSERT INTO `authorization_role_privilege` VALUES (95, 23, 7);
INSERT INTO `authorization_role_privilege` VALUES (96, 23, 8);
INSERT INTO `authorization_role_privilege` VALUES (97, 23, 9);
INSERT INTO `authorization_role_privilege` VALUES (1246, 23, 102);
INSERT INTO `authorization_role_privilege` VALUES (1247, 23, 103);
INSERT INTO `authorization_role_privilege` VALUES (1248, 23, 104);
INSERT INTO `authorization_role_privilege` VALUES (1330, 24, 102);
INSERT INTO `authorization_role_privilege` VALUES (1331, 24, 103);
INSERT INTO `authorization_role_privilege` VALUES (1332, 24, 104);
INSERT INTO `authorization_role_privilege` VALUES (103, 25, 1);
INSERT INTO `authorization_role_privilege` VALUES (104, 25, 2);
INSERT INTO `authorization_role_privilege` VALUES (105, 25, 3);
INSERT INTO `authorization_role_privilege` VALUES (106, 25, 4);
INSERT INTO `authorization_role_privilege` VALUES (107, 25, 5);
INSERT INTO `authorization_role_privilege` VALUES (108, 25, 6);
INSERT INTO `authorization_role_privilege` VALUES (109, 25, 7);
INSERT INTO `authorization_role_privilege` VALUES (110, 25, 8);
INSERT INTO `authorization_role_privilege` VALUES (111, 25, 9);
INSERT INTO `authorization_role_privilege` VALUES (1249, 25, 102);
INSERT INTO `authorization_role_privilege` VALUES (1250, 25, 103);
INSERT INTO `authorization_role_privilege` VALUES (1251, 25, 104);
INSERT INTO `authorization_role_privilege` VALUES (1333, 26, 102);
INSERT INTO `authorization_role_privilege` VALUES (1334, 26, 103);
INSERT INTO `authorization_role_privilege` VALUES (1335, 26, 104);
INSERT INTO `authorization_role_privilege` VALUES (117, 27, 1);
INSERT INTO `authorization_role_privilege` VALUES (118, 27, 2);
INSERT INTO `authorization_role_privilege` VALUES (119, 27, 3);
INSERT INTO `authorization_role_privilege` VALUES (120, 27, 4);
INSERT INTO `authorization_role_privilege` VALUES (121, 27, 5);
INSERT INTO `authorization_role_privilege` VALUES (122, 27, 6);
INSERT INTO `authorization_role_privilege` VALUES (123, 27, 7);
INSERT INTO `authorization_role_privilege` VALUES (124, 27, 8);
INSERT INTO `authorization_role_privilege` VALUES (125, 27, 9);
INSERT INTO `authorization_role_privilege` VALUES (1252, 27, 102);
INSERT INTO `authorization_role_privilege` VALUES (1253, 27, 103);
INSERT INTO `authorization_role_privilege` VALUES (1254, 27, 104);
INSERT INTO `authorization_role_privilege` VALUES (1336, 28, 102);
INSERT INTO `authorization_role_privilege` VALUES (1337, 28, 103);
INSERT INTO `authorization_role_privilege` VALUES (1338, 28, 104);
INSERT INTO `authorization_role_privilege` VALUES (131, 29, 1);
INSERT INTO `authorization_role_privilege` VALUES (132, 29, 2);
INSERT INTO `authorization_role_privilege` VALUES (133, 29, 3);
INSERT INTO `authorization_role_privilege` VALUES (134, 29, 4);
INSERT INTO `authorization_role_privilege` VALUES (135, 29, 5);
INSERT INTO `authorization_role_privilege` VALUES (136, 29, 6);
INSERT INTO `authorization_role_privilege` VALUES (137, 29, 7);
INSERT INTO `authorization_role_privilege` VALUES (138, 29, 8);
INSERT INTO `authorization_role_privilege` VALUES (139, 29, 9);
INSERT INTO `authorization_role_privilege` VALUES (1255, 29, 102);
INSERT INTO `authorization_role_privilege` VALUES (1256, 29, 103);
INSERT INTO `authorization_role_privilege` VALUES (1257, 29, 104);
INSERT INTO `authorization_role_privilege` VALUES (1339, 30, 102);
INSERT INTO `authorization_role_privilege` VALUES (1340, 30, 103);
INSERT INTO `authorization_role_privilege` VALUES (1341, 30, 104);
INSERT INTO `authorization_role_privilege` VALUES (145, 31, 1);
INSERT INTO `authorization_role_privilege` VALUES (146, 31, 2);
INSERT INTO `authorization_role_privilege` VALUES (147, 31, 3);
INSERT INTO `authorization_role_privilege` VALUES (148, 31, 4);
INSERT INTO `authorization_role_privilege` VALUES (149, 31, 5);
INSERT INTO `authorization_role_privilege` VALUES (150, 31, 6);
INSERT INTO `authorization_role_privilege` VALUES (151, 31, 7);
INSERT INTO `authorization_role_privilege` VALUES (152, 31, 8);
INSERT INTO `authorization_role_privilege` VALUES (153, 31, 9);
INSERT INTO `authorization_role_privilege` VALUES (1258, 31, 102);
INSERT INTO `authorization_role_privilege` VALUES (1259, 31, 103);
INSERT INTO `authorization_role_privilege` VALUES (1260, 31, 104);
INSERT INTO `authorization_role_privilege` VALUES (1342, 32, 102);
INSERT INTO `authorization_role_privilege` VALUES (1343, 32, 103);
INSERT INTO `authorization_role_privilege` VALUES (1344, 32, 104);
INSERT INTO `authorization_role_privilege` VALUES (159, 33, 1);
INSERT INTO `authorization_role_privilege` VALUES (160, 33, 2);
INSERT INTO `authorization_role_privilege` VALUES (161, 33, 3);
INSERT INTO `authorization_role_privilege` VALUES (162, 33, 4);
INSERT INTO `authorization_role_privilege` VALUES (163, 33, 5);
INSERT INTO `authorization_role_privilege` VALUES (164, 33, 6);
INSERT INTO `authorization_role_privilege` VALUES (165, 33, 7);
INSERT INTO `authorization_role_privilege` VALUES (166, 33, 8);
INSERT INTO `authorization_role_privilege` VALUES (167, 33, 9);
INSERT INTO `authorization_role_privilege` VALUES (1261, 33, 102);
INSERT INTO `authorization_role_privilege` VALUES (1262, 33, 103);
INSERT INTO `authorization_role_privilege` VALUES (1263, 33, 104);
INSERT INTO `authorization_role_privilege` VALUES (1345, 34, 102);
INSERT INTO `authorization_role_privilege` VALUES (1346, 34, 103);
INSERT INTO `authorization_role_privilege` VALUES (1347, 34, 104);
INSERT INTO `authorization_role_privilege` VALUES (173, 35, 1);
INSERT INTO `authorization_role_privilege` VALUES (174, 35, 2);
INSERT INTO `authorization_role_privilege` VALUES (175, 35, 3);
INSERT INTO `authorization_role_privilege` VALUES (176, 35, 4);
INSERT INTO `authorization_role_privilege` VALUES (177, 35, 5);
INSERT INTO `authorization_role_privilege` VALUES (178, 35, 6);
INSERT INTO `authorization_role_privilege` VALUES (179, 35, 7);
INSERT INTO `authorization_role_privilege` VALUES (180, 35, 8);
INSERT INTO `authorization_role_privilege` VALUES (1264, 35, 102);
INSERT INTO `authorization_role_privilege` VALUES (1265, 35, 103);
INSERT INTO `authorization_role_privilege` VALUES (1266, 35, 104);
INSERT INTO `authorization_role_privilege` VALUES (1348, 36, 102);
INSERT INTO `authorization_role_privilege` VALUES (1349, 36, 103);
INSERT INTO `authorization_role_privilege` VALUES (1350, 36, 104);
INSERT INTO `authorization_role_privilege` VALUES (216, 38, 1);
INSERT INTO `authorization_role_privilege` VALUES (217, 38, 2);
INSERT INTO `authorization_role_privilege` VALUES (218, 38, 3);
INSERT INTO `authorization_role_privilege` VALUES (219, 38, 4);
INSERT INTO `authorization_role_privilege` VALUES (220, 38, 5);
INSERT INTO `authorization_role_privilege` VALUES (221, 38, 6);
INSERT INTO `authorization_role_privilege` VALUES (222, 38, 7);
INSERT INTO `authorization_role_privilege` VALUES (223, 38, 8);
INSERT INTO `authorization_role_privilege` VALUES (224, 38, 9);
INSERT INTO `authorization_role_privilege` VALUES (232, 38, 17);
INSERT INTO `authorization_role_privilege` VALUES (233, 38, 18);
INSERT INTO `authorization_role_privilege` VALUES (234, 38, 19);
INSERT INTO `authorization_role_privilege` VALUES (235, 38, 20);
INSERT INTO `authorization_role_privilege` VALUES (236, 38, 21);
INSERT INTO `authorization_role_privilege` VALUES (237, 38, 22);
INSERT INTO `authorization_role_privilege` VALUES (248, 38, 61);
INSERT INTO `authorization_role_privilege` VALUES (249, 38, 62);
INSERT INTO `authorization_role_privilege` VALUES (250, 38, 63);
INSERT INTO `authorization_role_privilege` VALUES (251, 38, 64);
INSERT INTO `authorization_role_privilege` VALUES (252, 38, 65);
INSERT INTO `authorization_role_privilege` VALUES (253, 38, 66);
INSERT INTO `authorization_role_privilege` VALUES (254, 38, 67);
INSERT INTO `authorization_role_privilege` VALUES (255, 38, 68);
INSERT INTO `authorization_role_privilege` VALUES (256, 38, 69);
INSERT INTO `authorization_role_privilege` VALUES (257, 38, 70);
INSERT INTO `authorization_role_privilege` VALUES (258, 38, 71);
INSERT INTO `authorization_role_privilege` VALUES (259, 38, 72);
INSERT INTO `authorization_role_privilege` VALUES (260, 38, 73);
INSERT INTO `authorization_role_privilege` VALUES (261, 38, 74);
INSERT INTO `authorization_role_privilege` VALUES (264, 38, 81);
INSERT INTO `authorization_role_privilege` VALUES (265, 38, 82);
INSERT INTO `authorization_role_privilege` VALUES (268, 38, 85);
INSERT INTO `authorization_role_privilege` VALUES (269, 38, 86);
INSERT INTO `authorization_role_privilege` VALUES (270, 38, 87);
INSERT INTO `authorization_role_privilege` VALUES (1267, 38, 102);
INSERT INTO `authorization_role_privilege` VALUES (1268, 38, 103);
INSERT INTO `authorization_role_privilege` VALUES (1269, 38, 104);
INSERT INTO `authorization_role_privilege` VALUES (272, 39, 3);
INSERT INTO `authorization_role_privilege` VALUES (271, 39, 4);
INSERT INTO `authorization_role_privilege` VALUES (1351, 39, 102);
INSERT INTO `authorization_role_privilege` VALUES (1352, 39, 103);
INSERT INTO `authorization_role_privilege` VALUES (1353, 39, 104);
INSERT INTO `authorization_role_privilege` VALUES (273, 40, 1);
INSERT INTO `authorization_role_privilege` VALUES (274, 40, 2);
INSERT INTO `authorization_role_privilege` VALUES (275, 40, 3);
INSERT INTO `authorization_role_privilege` VALUES (276, 40, 4);
INSERT INTO `authorization_role_privilege` VALUES (277, 40, 5);
INSERT INTO `authorization_role_privilege` VALUES (278, 40, 6);
INSERT INTO `authorization_role_privilege` VALUES (279, 40, 7);
INSERT INTO `authorization_role_privilege` VALUES (280, 40, 8);
INSERT INTO `authorization_role_privilege` VALUES (281, 40, 9);
INSERT INTO `authorization_role_privilege` VALUES (289, 40, 17);
INSERT INTO `authorization_role_privilege` VALUES (290, 40, 18);
INSERT INTO `authorization_role_privilege` VALUES (291, 40, 19);
INSERT INTO `authorization_role_privilege` VALUES (292, 40, 20);
INSERT INTO `authorization_role_privilege` VALUES (293, 40, 21);
INSERT INTO `authorization_role_privilege` VALUES (294, 40, 22);
INSERT INTO `authorization_role_privilege` VALUES (305, 40, 61);
INSERT INTO `authorization_role_privilege` VALUES (306, 40, 62);
INSERT INTO `authorization_role_privilege` VALUES (307, 40, 63);
INSERT INTO `authorization_role_privilege` VALUES (308, 40, 64);
INSERT INTO `authorization_role_privilege` VALUES (309, 40, 65);
INSERT INTO `authorization_role_privilege` VALUES (310, 40, 66);
INSERT INTO `authorization_role_privilege` VALUES (311, 40, 67);
INSERT INTO `authorization_role_privilege` VALUES (312, 40, 68);
INSERT INTO `authorization_role_privilege` VALUES (313, 40, 69);
INSERT INTO `authorization_role_privilege` VALUES (314, 40, 70);
INSERT INTO `authorization_role_privilege` VALUES (315, 40, 71);
INSERT INTO `authorization_role_privilege` VALUES (316, 40, 72);
INSERT INTO `authorization_role_privilege` VALUES (317, 40, 73);
INSERT INTO `authorization_role_privilege` VALUES (318, 40, 74);
INSERT INTO `authorization_role_privilege` VALUES (321, 40, 81);
INSERT INTO `authorization_role_privilege` VALUES (322, 40, 82);
INSERT INTO `authorization_role_privilege` VALUES (325, 40, 85);
INSERT INTO `authorization_role_privilege` VALUES (326, 40, 86);
INSERT INTO `authorization_role_privilege` VALUES (327, 40, 87);
INSERT INTO `authorization_role_privilege` VALUES (1270, 40, 102);
INSERT INTO `authorization_role_privilege` VALUES (1271, 40, 103);
INSERT INTO `authorization_role_privilege` VALUES (1272, 40, 104);
INSERT INTO `authorization_role_privilege` VALUES (329, 41, 3);
INSERT INTO `authorization_role_privilege` VALUES (328, 41, 4);
INSERT INTO `authorization_role_privilege` VALUES (1354, 41, 102);
INSERT INTO `authorization_role_privilege` VALUES (1355, 41, 103);
INSERT INTO `authorization_role_privilege` VALUES (1356, 41, 104);
INSERT INTO `authorization_role_privilege` VALUES (330, 46, 1);
INSERT INTO `authorization_role_privilege` VALUES (331, 46, 2);
INSERT INTO `authorization_role_privilege` VALUES (332, 46, 3);
INSERT INTO `authorization_role_privilege` VALUES (333, 46, 4);
INSERT INTO `authorization_role_privilege` VALUES (334, 46, 5);
INSERT INTO `authorization_role_privilege` VALUES (335, 46, 6);
INSERT INTO `authorization_role_privilege` VALUES (336, 46, 7);
INSERT INTO `authorization_role_privilege` VALUES (337, 46, 8);
INSERT INTO `authorization_role_privilege` VALUES (338, 46, 9);
INSERT INTO `authorization_role_privilege` VALUES (346, 46, 17);
INSERT INTO `authorization_role_privilege` VALUES (347, 46, 18);
INSERT INTO `authorization_role_privilege` VALUES (348, 46, 19);
INSERT INTO `authorization_role_privilege` VALUES (349, 46, 20);
INSERT INTO `authorization_role_privilege` VALUES (350, 46, 21);
INSERT INTO `authorization_role_privilege` VALUES (351, 46, 22);
INSERT INTO `authorization_role_privilege` VALUES (362, 46, 61);
INSERT INTO `authorization_role_privilege` VALUES (363, 46, 62);
INSERT INTO `authorization_role_privilege` VALUES (364, 46, 63);
INSERT INTO `authorization_role_privilege` VALUES (365, 46, 64);
INSERT INTO `authorization_role_privilege` VALUES (366, 46, 65);
INSERT INTO `authorization_role_privilege` VALUES (367, 46, 66);
INSERT INTO `authorization_role_privilege` VALUES (368, 46, 67);
INSERT INTO `authorization_role_privilege` VALUES (369, 46, 68);
INSERT INTO `authorization_role_privilege` VALUES (370, 46, 69);
INSERT INTO `authorization_role_privilege` VALUES (371, 46, 70);
INSERT INTO `authorization_role_privilege` VALUES (372, 46, 71);
INSERT INTO `authorization_role_privilege` VALUES (373, 46, 72);
INSERT INTO `authorization_role_privilege` VALUES (374, 46, 73);
INSERT INTO `authorization_role_privilege` VALUES (375, 46, 74);
INSERT INTO `authorization_role_privilege` VALUES (378, 46, 81);
INSERT INTO `authorization_role_privilege` VALUES (379, 46, 82);
INSERT INTO `authorization_role_privilege` VALUES (382, 46, 85);
INSERT INTO `authorization_role_privilege` VALUES (383, 46, 86);
INSERT INTO `authorization_role_privilege` VALUES (384, 46, 87);
INSERT INTO `authorization_role_privilege` VALUES (1273, 46, 102);
INSERT INTO `authorization_role_privilege` VALUES (1274, 46, 103);
INSERT INTO `authorization_role_privilege` VALUES (1275, 46, 104);
INSERT INTO `authorization_role_privilege` VALUES (386, 47, 3);
INSERT INTO `authorization_role_privilege` VALUES (385, 47, 4);
INSERT INTO `authorization_role_privilege` VALUES (1357, 47, 102);
INSERT INTO `authorization_role_privilege` VALUES (1358, 47, 103);
INSERT INTO `authorization_role_privilege` VALUES (1359, 47, 104);
INSERT INTO `authorization_role_privilege` VALUES (387, 48, 1);
INSERT INTO `authorization_role_privilege` VALUES (388, 48, 2);
INSERT INTO `authorization_role_privilege` VALUES (389, 48, 3);
INSERT INTO `authorization_role_privilege` VALUES (390, 48, 4);
INSERT INTO `authorization_role_privilege` VALUES (391, 48, 5);
INSERT INTO `authorization_role_privilege` VALUES (392, 48, 6);
INSERT INTO `authorization_role_privilege` VALUES (393, 48, 7);
INSERT INTO `authorization_role_privilege` VALUES (394, 48, 8);
INSERT INTO `authorization_role_privilege` VALUES (395, 48, 9);
INSERT INTO `authorization_role_privilege` VALUES (403, 48, 17);
INSERT INTO `authorization_role_privilege` VALUES (404, 48, 18);
INSERT INTO `authorization_role_privilege` VALUES (405, 48, 19);
INSERT INTO `authorization_role_privilege` VALUES (406, 48, 20);
INSERT INTO `authorization_role_privilege` VALUES (407, 48, 21);
INSERT INTO `authorization_role_privilege` VALUES (408, 48, 22);
INSERT INTO `authorization_role_privilege` VALUES (419, 48, 61);
INSERT INTO `authorization_role_privilege` VALUES (420, 48, 62);
INSERT INTO `authorization_role_privilege` VALUES (421, 48, 63);
INSERT INTO `authorization_role_privilege` VALUES (422, 48, 64);
INSERT INTO `authorization_role_privilege` VALUES (423, 48, 65);
INSERT INTO `authorization_role_privilege` VALUES (424, 48, 66);
INSERT INTO `authorization_role_privilege` VALUES (425, 48, 67);
INSERT INTO `authorization_role_privilege` VALUES (426, 48, 68);
INSERT INTO `authorization_role_privilege` VALUES (427, 48, 69);
INSERT INTO `authorization_role_privilege` VALUES (428, 48, 70);
INSERT INTO `authorization_role_privilege` VALUES (429, 48, 71);
INSERT INTO `authorization_role_privilege` VALUES (430, 48, 72);
INSERT INTO `authorization_role_privilege` VALUES (431, 48, 73);
INSERT INTO `authorization_role_privilege` VALUES (432, 48, 74);
INSERT INTO `authorization_role_privilege` VALUES (435, 48, 81);
INSERT INTO `authorization_role_privilege` VALUES (436, 48, 82);
INSERT INTO `authorization_role_privilege` VALUES (439, 48, 85);
INSERT INTO `authorization_role_privilege` VALUES (440, 48, 86);
INSERT INTO `authorization_role_privilege` VALUES (441, 48, 87);
INSERT INTO `authorization_role_privilege` VALUES (1276, 48, 102);
INSERT INTO `authorization_role_privilege` VALUES (1277, 48, 103);
INSERT INTO `authorization_role_privilege` VALUES (1278, 48, 104);
INSERT INTO `authorization_role_privilege` VALUES (443, 49, 3);
INSERT INTO `authorization_role_privilege` VALUES (442, 49, 4);
INSERT INTO `authorization_role_privilege` VALUES (1360, 49, 102);
INSERT INTO `authorization_role_privilege` VALUES (1361, 49, 103);
INSERT INTO `authorization_role_privilege` VALUES (1362, 49, 104);
INSERT INTO `authorization_role_privilege` VALUES (444, 50, 1);
INSERT INTO `authorization_role_privilege` VALUES (445, 50, 2);
INSERT INTO `authorization_role_privilege` VALUES (446, 50, 3);
INSERT INTO `authorization_role_privilege` VALUES (447, 50, 4);
INSERT INTO `authorization_role_privilege` VALUES (448, 50, 5);
INSERT INTO `authorization_role_privilege` VALUES (449, 50, 6);
INSERT INTO `authorization_role_privilege` VALUES (450, 50, 7);
INSERT INTO `authorization_role_privilege` VALUES (451, 50, 8);
INSERT INTO `authorization_role_privilege` VALUES (452, 50, 9);
INSERT INTO `authorization_role_privilege` VALUES (460, 50, 17);
INSERT INTO `authorization_role_privilege` VALUES (461, 50, 18);
INSERT INTO `authorization_role_privilege` VALUES (462, 50, 19);
INSERT INTO `authorization_role_privilege` VALUES (463, 50, 20);
INSERT INTO `authorization_role_privilege` VALUES (464, 50, 21);
INSERT INTO `authorization_role_privilege` VALUES (465, 50, 22);
INSERT INTO `authorization_role_privilege` VALUES (476, 50, 61);
INSERT INTO `authorization_role_privilege` VALUES (477, 50, 62);
INSERT INTO `authorization_role_privilege` VALUES (478, 50, 63);
INSERT INTO `authorization_role_privilege` VALUES (479, 50, 64);
INSERT INTO `authorization_role_privilege` VALUES (480, 50, 65);
INSERT INTO `authorization_role_privilege` VALUES (481, 50, 66);
INSERT INTO `authorization_role_privilege` VALUES (482, 50, 67);
INSERT INTO `authorization_role_privilege` VALUES (483, 50, 68);
INSERT INTO `authorization_role_privilege` VALUES (484, 50, 69);
INSERT INTO `authorization_role_privilege` VALUES (485, 50, 70);
INSERT INTO `authorization_role_privilege` VALUES (486, 50, 71);
INSERT INTO `authorization_role_privilege` VALUES (487, 50, 72);
INSERT INTO `authorization_role_privilege` VALUES (488, 50, 73);
INSERT INTO `authorization_role_privilege` VALUES (489, 50, 74);
INSERT INTO `authorization_role_privilege` VALUES (492, 50, 81);
INSERT INTO `authorization_role_privilege` VALUES (493, 50, 82);
INSERT INTO `authorization_role_privilege` VALUES (496, 50, 85);
INSERT INTO `authorization_role_privilege` VALUES (497, 50, 86);
INSERT INTO `authorization_role_privilege` VALUES (498, 50, 87);
INSERT INTO `authorization_role_privilege` VALUES (1279, 50, 102);
INSERT INTO `authorization_role_privilege` VALUES (1280, 50, 103);
INSERT INTO `authorization_role_privilege` VALUES (1281, 50, 104);
INSERT INTO `authorization_role_privilege` VALUES (500, 51, 3);
INSERT INTO `authorization_role_privilege` VALUES (499, 51, 4);
INSERT INTO `authorization_role_privilege` VALUES (1363, 51, 102);
INSERT INTO `authorization_role_privilege` VALUES (1364, 51, 103);
INSERT INTO `authorization_role_privilege` VALUES (1365, 51, 104);
INSERT INTO `authorization_role_privilege` VALUES (501, 52, 1);
INSERT INTO `authorization_role_privilege` VALUES (502, 52, 2);
INSERT INTO `authorization_role_privilege` VALUES (503, 52, 3);
INSERT INTO `authorization_role_privilege` VALUES (504, 52, 4);
INSERT INTO `authorization_role_privilege` VALUES (505, 52, 5);
INSERT INTO `authorization_role_privilege` VALUES (506, 52, 6);
INSERT INTO `authorization_role_privilege` VALUES (507, 52, 7);
INSERT INTO `authorization_role_privilege` VALUES (508, 52, 8);
INSERT INTO `authorization_role_privilege` VALUES (509, 52, 9);
INSERT INTO `authorization_role_privilege` VALUES (517, 52, 17);
INSERT INTO `authorization_role_privilege` VALUES (518, 52, 18);
INSERT INTO `authorization_role_privilege` VALUES (519, 52, 19);
INSERT INTO `authorization_role_privilege` VALUES (520, 52, 20);
INSERT INTO `authorization_role_privilege` VALUES (521, 52, 21);
INSERT INTO `authorization_role_privilege` VALUES (522, 52, 22);
INSERT INTO `authorization_role_privilege` VALUES (533, 52, 61);
INSERT INTO `authorization_role_privilege` VALUES (534, 52, 62);
INSERT INTO `authorization_role_privilege` VALUES (535, 52, 63);
INSERT INTO `authorization_role_privilege` VALUES (536, 52, 64);
INSERT INTO `authorization_role_privilege` VALUES (537, 52, 65);
INSERT INTO `authorization_role_privilege` VALUES (538, 52, 66);
INSERT INTO `authorization_role_privilege` VALUES (539, 52, 67);
INSERT INTO `authorization_role_privilege` VALUES (540, 52, 68);
INSERT INTO `authorization_role_privilege` VALUES (541, 52, 69);
INSERT INTO `authorization_role_privilege` VALUES (542, 52, 70);
INSERT INTO `authorization_role_privilege` VALUES (543, 52, 71);
INSERT INTO `authorization_role_privilege` VALUES (544, 52, 72);
INSERT INTO `authorization_role_privilege` VALUES (545, 52, 73);
INSERT INTO `authorization_role_privilege` VALUES (546, 52, 74);
INSERT INTO `authorization_role_privilege` VALUES (549, 52, 81);
INSERT INTO `authorization_role_privilege` VALUES (550, 52, 82);
INSERT INTO `authorization_role_privilege` VALUES (553, 52, 85);
INSERT INTO `authorization_role_privilege` VALUES (554, 52, 86);
INSERT INTO `authorization_role_privilege` VALUES (555, 52, 87);
INSERT INTO `authorization_role_privilege` VALUES (1282, 52, 102);
INSERT INTO `authorization_role_privilege` VALUES (1283, 52, 103);
INSERT INTO `authorization_role_privilege` VALUES (1284, 52, 104);
INSERT INTO `authorization_role_privilege` VALUES (557, 53, 3);
INSERT INTO `authorization_role_privilege` VALUES (556, 53, 4);
INSERT INTO `authorization_role_privilege` VALUES (1366, 53, 102);
INSERT INTO `authorization_role_privilege` VALUES (1367, 53, 103);
INSERT INTO `authorization_role_privilege` VALUES (1368, 53, 104);
INSERT INTO `authorization_role_privilege` VALUES (558, 54, 1);
INSERT INTO `authorization_role_privilege` VALUES (559, 54, 2);
INSERT INTO `authorization_role_privilege` VALUES (560, 54, 3);
INSERT INTO `authorization_role_privilege` VALUES (561, 54, 4);
INSERT INTO `authorization_role_privilege` VALUES (562, 54, 5);
INSERT INTO `authorization_role_privilege` VALUES (563, 54, 6);
INSERT INTO `authorization_role_privilege` VALUES (564, 54, 7);
INSERT INTO `authorization_role_privilege` VALUES (565, 54, 8);
INSERT INTO `authorization_role_privilege` VALUES (566, 54, 9);
INSERT INTO `authorization_role_privilege` VALUES (574, 54, 17);
INSERT INTO `authorization_role_privilege` VALUES (575, 54, 18);
INSERT INTO `authorization_role_privilege` VALUES (576, 54, 19);
INSERT INTO `authorization_role_privilege` VALUES (577, 54, 20);
INSERT INTO `authorization_role_privilege` VALUES (578, 54, 21);
INSERT INTO `authorization_role_privilege` VALUES (579, 54, 22);
INSERT INTO `authorization_role_privilege` VALUES (590, 54, 61);
INSERT INTO `authorization_role_privilege` VALUES (591, 54, 62);
INSERT INTO `authorization_role_privilege` VALUES (592, 54, 63);
INSERT INTO `authorization_role_privilege` VALUES (593, 54, 64);
INSERT INTO `authorization_role_privilege` VALUES (594, 54, 65);
INSERT INTO `authorization_role_privilege` VALUES (595, 54, 66);
INSERT INTO `authorization_role_privilege` VALUES (596, 54, 67);
INSERT INTO `authorization_role_privilege` VALUES (597, 54, 68);
INSERT INTO `authorization_role_privilege` VALUES (598, 54, 69);
INSERT INTO `authorization_role_privilege` VALUES (599, 54, 70);
INSERT INTO `authorization_role_privilege` VALUES (600, 54, 71);
INSERT INTO `authorization_role_privilege` VALUES (601, 54, 72);
INSERT INTO `authorization_role_privilege` VALUES (602, 54, 73);
INSERT INTO `authorization_role_privilege` VALUES (603, 54, 74);
INSERT INTO `authorization_role_privilege` VALUES (606, 54, 81);
INSERT INTO `authorization_role_privilege` VALUES (607, 54, 82);
INSERT INTO `authorization_role_privilege` VALUES (610, 54, 85);
INSERT INTO `authorization_role_privilege` VALUES (611, 54, 86);
INSERT INTO `authorization_role_privilege` VALUES (612, 54, 87);
INSERT INTO `authorization_role_privilege` VALUES (1285, 54, 102);
INSERT INTO `authorization_role_privilege` VALUES (1286, 54, 103);
INSERT INTO `authorization_role_privilege` VALUES (1287, 54, 104);
INSERT INTO `authorization_role_privilege` VALUES (614, 55, 3);
INSERT INTO `authorization_role_privilege` VALUES (613, 55, 4);
INSERT INTO `authorization_role_privilege` VALUES (1369, 55, 102);
INSERT INTO `authorization_role_privilege` VALUES (1370, 55, 103);
INSERT INTO `authorization_role_privilege` VALUES (1371, 55, 104);
INSERT INTO `authorization_role_privilege` VALUES (615, 56, 10);
INSERT INTO `authorization_role_privilege` VALUES (616, 56, 11);
INSERT INTO `authorization_role_privilege` VALUES (617, 56, 12);
INSERT INTO `authorization_role_privilege` VALUES (618, 56, 13);
INSERT INTO `authorization_role_privilege` VALUES (619, 56, 14);
INSERT INTO `authorization_role_privilege` VALUES (620, 56, 15);
INSERT INTO `authorization_role_privilege` VALUES (621, 56, 16);
INSERT INTO `authorization_role_privilege` VALUES (622, 56, 23);
INSERT INTO `authorization_role_privilege` VALUES (623, 56, 24);
INSERT INTO `authorization_role_privilege` VALUES (624, 56, 25);
INSERT INTO `authorization_role_privilege` VALUES (625, 56, 26);
INSERT INTO `authorization_role_privilege` VALUES (626, 56, 27);
INSERT INTO `authorization_role_privilege` VALUES (627, 56, 28);
INSERT INTO `authorization_role_privilege` VALUES (628, 56, 29);
INSERT INTO `authorization_role_privilege` VALUES (629, 56, 30);
INSERT INTO `authorization_role_privilege` VALUES (630, 56, 59);
INSERT INTO `authorization_role_privilege` VALUES (631, 56, 60);
INSERT INTO `authorization_role_privilege` VALUES (632, 56, 76);
INSERT INTO `authorization_role_privilege` VALUES (633, 56, 77);
INSERT INTO `authorization_role_privilege` VALUES (634, 56, 83);
INSERT INTO `authorization_role_privilege` VALUES (635, 56, 84);
INSERT INTO `authorization_role_privilege` VALUES (1224, 56, 105);
INSERT INTO `authorization_role_privilege` VALUES (1225, 56, 106);
INSERT INTO `authorization_role_privilege` VALUES (1226, 56, 107);
INSERT INTO `authorization_role_privilege` VALUES (1227, 56, 108);
INSERT INTO `authorization_role_privilege` VALUES (636, 57, 1);
INSERT INTO `authorization_role_privilege` VALUES (637, 57, 2);
INSERT INTO `authorization_role_privilege` VALUES (638, 57, 3);
INSERT INTO `authorization_role_privilege` VALUES (639, 57, 4);
INSERT INTO `authorization_role_privilege` VALUES (640, 57, 5);
INSERT INTO `authorization_role_privilege` VALUES (641, 57, 6);
INSERT INTO `authorization_role_privilege` VALUES (642, 57, 7);
INSERT INTO `authorization_role_privilege` VALUES (643, 57, 8);
INSERT INTO `authorization_role_privilege` VALUES (644, 57, 9);
INSERT INTO `authorization_role_privilege` VALUES (652, 57, 17);
INSERT INTO `authorization_role_privilege` VALUES (653, 57, 18);
INSERT INTO `authorization_role_privilege` VALUES (654, 57, 19);
INSERT INTO `authorization_role_privilege` VALUES (655, 57, 20);
INSERT INTO `authorization_role_privilege` VALUES (656, 57, 21);
INSERT INTO `authorization_role_privilege` VALUES (657, 57, 22);
INSERT INTO `authorization_role_privilege` VALUES (668, 57, 61);
INSERT INTO `authorization_role_privilege` VALUES (669, 57, 62);
INSERT INTO `authorization_role_privilege` VALUES (670, 57, 63);
INSERT INTO `authorization_role_privilege` VALUES (671, 57, 64);
INSERT INTO `authorization_role_privilege` VALUES (672, 57, 65);
INSERT INTO `authorization_role_privilege` VALUES (673, 57, 66);
INSERT INTO `authorization_role_privilege` VALUES (674, 57, 67);
INSERT INTO `authorization_role_privilege` VALUES (675, 57, 68);
INSERT INTO `authorization_role_privilege` VALUES (676, 57, 69);
INSERT INTO `authorization_role_privilege` VALUES (677, 57, 70);
INSERT INTO `authorization_role_privilege` VALUES (678, 57, 71);
INSERT INTO `authorization_role_privilege` VALUES (679, 57, 72);
INSERT INTO `authorization_role_privilege` VALUES (680, 57, 73);
INSERT INTO `authorization_role_privilege` VALUES (681, 57, 74);
INSERT INTO `authorization_role_privilege` VALUES (684, 57, 81);
INSERT INTO `authorization_role_privilege` VALUES (685, 57, 82);
INSERT INTO `authorization_role_privilege` VALUES (688, 57, 85);
INSERT INTO `authorization_role_privilege` VALUES (689, 57, 86);
INSERT INTO `authorization_role_privilege` VALUES (690, 57, 87);
INSERT INTO `authorization_role_privilege` VALUES (1288, 57, 102);
INSERT INTO `authorization_role_privilege` VALUES (1289, 57, 103);
INSERT INTO `authorization_role_privilege` VALUES (1290, 57, 104);
INSERT INTO `authorization_role_privilege` VALUES (692, 58, 3);
INSERT INTO `authorization_role_privilege` VALUES (691, 58, 4);
INSERT INTO `authorization_role_privilege` VALUES (1372, 58, 102);
INSERT INTO `authorization_role_privilege` VALUES (1373, 58, 103);
INSERT INTO `authorization_role_privilege` VALUES (1374, 58, 104);
INSERT INTO `authorization_role_privilege` VALUES (693, 59, 1);
INSERT INTO `authorization_role_privilege` VALUES (694, 59, 2);
INSERT INTO `authorization_role_privilege` VALUES (1483, 59, 3);
INSERT INTO `authorization_role_privilege` VALUES (696, 59, 4);
INSERT INTO `authorization_role_privilege` VALUES (697, 59, 5);
INSERT INTO `authorization_role_privilege` VALUES (698, 59, 6);
INSERT INTO `authorization_role_privilege` VALUES (699, 59, 7);
INSERT INTO `authorization_role_privilege` VALUES (700, 59, 8);
INSERT INTO `authorization_role_privilege` VALUES (701, 59, 9);
INSERT INTO `authorization_role_privilege` VALUES (709, 59, 17);
INSERT INTO `authorization_role_privilege` VALUES (710, 59, 18);
INSERT INTO `authorization_role_privilege` VALUES (711, 59, 19);
INSERT INTO `authorization_role_privilege` VALUES (712, 59, 20);
INSERT INTO `authorization_role_privilege` VALUES (713, 59, 21);
INSERT INTO `authorization_role_privilege` VALUES (714, 59, 22);
INSERT INTO `authorization_role_privilege` VALUES (725, 59, 61);
INSERT INTO `authorization_role_privilege` VALUES (726, 59, 62);
INSERT INTO `authorization_role_privilege` VALUES (727, 59, 63);
INSERT INTO `authorization_role_privilege` VALUES (728, 59, 64);
INSERT INTO `authorization_role_privilege` VALUES (729, 59, 65);
INSERT INTO `authorization_role_privilege` VALUES (730, 59, 66);
INSERT INTO `authorization_role_privilege` VALUES (731, 59, 67);
INSERT INTO `authorization_role_privilege` VALUES (732, 59, 68);
INSERT INTO `authorization_role_privilege` VALUES (733, 59, 69);
INSERT INTO `authorization_role_privilege` VALUES (734, 59, 70);
INSERT INTO `authorization_role_privilege` VALUES (735, 59, 71);
INSERT INTO `authorization_role_privilege` VALUES (736, 59, 72);
INSERT INTO `authorization_role_privilege` VALUES (737, 59, 73);
INSERT INTO `authorization_role_privilege` VALUES (738, 59, 74);
INSERT INTO `authorization_role_privilege` VALUES (741, 59, 81);
INSERT INTO `authorization_role_privilege` VALUES (742, 59, 82);
INSERT INTO `authorization_role_privilege` VALUES (745, 59, 85);
INSERT INTO `authorization_role_privilege` VALUES (746, 59, 86);
INSERT INTO `authorization_role_privilege` VALUES (747, 59, 87);
INSERT INTO `authorization_role_privilege` VALUES (1155, 59, 88);
INSERT INTO `authorization_role_privilege` VALUES (1217, 59, 102);
INSERT INTO `authorization_role_privilege` VALUES (1218, 59, 103);
INSERT INTO `authorization_role_privilege` VALUES (1219, 59, 104);
INSERT INTO `authorization_role_privilege` VALUES (749, 60, 3);
INSERT INTO `authorization_role_privilege` VALUES (748, 60, 4);
INSERT INTO `authorization_role_privilege` VALUES (750, 61, 1);
INSERT INTO `authorization_role_privilege` VALUES (751, 61, 2);
INSERT INTO `authorization_role_privilege` VALUES (752, 61, 3);
INSERT INTO `authorization_role_privilege` VALUES (753, 61, 4);
INSERT INTO `authorization_role_privilege` VALUES (754, 61, 5);
INSERT INTO `authorization_role_privilege` VALUES (755, 61, 6);
INSERT INTO `authorization_role_privilege` VALUES (756, 61, 7);
INSERT INTO `authorization_role_privilege` VALUES (757, 61, 8);
INSERT INTO `authorization_role_privilege` VALUES (758, 61, 9);
INSERT INTO `authorization_role_privilege` VALUES (766, 61, 17);
INSERT INTO `authorization_role_privilege` VALUES (767, 61, 18);
INSERT INTO `authorization_role_privilege` VALUES (768, 61, 19);
INSERT INTO `authorization_role_privilege` VALUES (769, 61, 20);
INSERT INTO `authorization_role_privilege` VALUES (770, 61, 21);
INSERT INTO `authorization_role_privilege` VALUES (771, 61, 22);
INSERT INTO `authorization_role_privilege` VALUES (782, 61, 61);
INSERT INTO `authorization_role_privilege` VALUES (783, 61, 62);
INSERT INTO `authorization_role_privilege` VALUES (784, 61, 63);
INSERT INTO `authorization_role_privilege` VALUES (785, 61, 64);
INSERT INTO `authorization_role_privilege` VALUES (786, 61, 65);
INSERT INTO `authorization_role_privilege` VALUES (787, 61, 66);
INSERT INTO `authorization_role_privilege` VALUES (788, 61, 67);
INSERT INTO `authorization_role_privilege` VALUES (789, 61, 68);
INSERT INTO `authorization_role_privilege` VALUES (790, 61, 69);
INSERT INTO `authorization_role_privilege` VALUES (791, 61, 70);
INSERT INTO `authorization_role_privilege` VALUES (792, 61, 71);
INSERT INTO `authorization_role_privilege` VALUES (793, 61, 72);
INSERT INTO `authorization_role_privilege` VALUES (794, 61, 73);
INSERT INTO `authorization_role_privilege` VALUES (795, 61, 74);
INSERT INTO `authorization_role_privilege` VALUES (798, 61, 81);
INSERT INTO `authorization_role_privilege` VALUES (799, 61, 82);
INSERT INTO `authorization_role_privilege` VALUES (802, 61, 85);
INSERT INTO `authorization_role_privilege` VALUES (803, 61, 86);
INSERT INTO `authorization_role_privilege` VALUES (804, 61, 87);
INSERT INTO `authorization_role_privilege` VALUES (1291, 61, 102);
INSERT INTO `authorization_role_privilege` VALUES (1292, 61, 103);
INSERT INTO `authorization_role_privilege` VALUES (1293, 61, 104);
INSERT INTO `authorization_role_privilege` VALUES (806, 62, 3);
INSERT INTO `authorization_role_privilege` VALUES (805, 62, 4);
INSERT INTO `authorization_role_privilege` VALUES (1375, 62, 102);
INSERT INTO `authorization_role_privilege` VALUES (1376, 62, 103);
INSERT INTO `authorization_role_privilege` VALUES (1377, 62, 104);
INSERT INTO `authorization_role_privilege` VALUES (807, 63, 1);
INSERT INTO `authorization_role_privilege` VALUES (808, 63, 2);
INSERT INTO `authorization_role_privilege` VALUES (809, 63, 3);
INSERT INTO `authorization_role_privilege` VALUES (810, 63, 4);
INSERT INTO `authorization_role_privilege` VALUES (811, 63, 5);
INSERT INTO `authorization_role_privilege` VALUES (812, 63, 6);
INSERT INTO `authorization_role_privilege` VALUES (813, 63, 7);
INSERT INTO `authorization_role_privilege` VALUES (814, 63, 8);
INSERT INTO `authorization_role_privilege` VALUES (815, 63, 9);
INSERT INTO `authorization_role_privilege` VALUES (823, 63, 17);
INSERT INTO `authorization_role_privilege` VALUES (824, 63, 18);
INSERT INTO `authorization_role_privilege` VALUES (825, 63, 19);
INSERT INTO `authorization_role_privilege` VALUES (826, 63, 20);
INSERT INTO `authorization_role_privilege` VALUES (827, 63, 21);
INSERT INTO `authorization_role_privilege` VALUES (828, 63, 22);
INSERT INTO `authorization_role_privilege` VALUES (839, 63, 61);
INSERT INTO `authorization_role_privilege` VALUES (840, 63, 62);
INSERT INTO `authorization_role_privilege` VALUES (841, 63, 63);
INSERT INTO `authorization_role_privilege` VALUES (842, 63, 64);
INSERT INTO `authorization_role_privilege` VALUES (843, 63, 65);
INSERT INTO `authorization_role_privilege` VALUES (844, 63, 66);
INSERT INTO `authorization_role_privilege` VALUES (845, 63, 67);
INSERT INTO `authorization_role_privilege` VALUES (846, 63, 68);
INSERT INTO `authorization_role_privilege` VALUES (847, 63, 69);
INSERT INTO `authorization_role_privilege` VALUES (848, 63, 70);
INSERT INTO `authorization_role_privilege` VALUES (849, 63, 71);
INSERT INTO `authorization_role_privilege` VALUES (850, 63, 72);
INSERT INTO `authorization_role_privilege` VALUES (851, 63, 73);
INSERT INTO `authorization_role_privilege` VALUES (852, 63, 74);
INSERT INTO `authorization_role_privilege` VALUES (855, 63, 81);
INSERT INTO `authorization_role_privilege` VALUES (856, 63, 82);
INSERT INTO `authorization_role_privilege` VALUES (859, 63, 85);
INSERT INTO `authorization_role_privilege` VALUES (860, 63, 86);
INSERT INTO `authorization_role_privilege` VALUES (861, 63, 87);
INSERT INTO `authorization_role_privilege` VALUES (1294, 63, 102);
INSERT INTO `authorization_role_privilege` VALUES (1295, 63, 103);
INSERT INTO `authorization_role_privilege` VALUES (1296, 63, 104);
INSERT INTO `authorization_role_privilege` VALUES (863, 64, 3);
INSERT INTO `authorization_role_privilege` VALUES (862, 64, 4);
INSERT INTO `authorization_role_privilege` VALUES (1378, 64, 102);
INSERT INTO `authorization_role_privilege` VALUES (1379, 64, 103);
INSERT INTO `authorization_role_privilege` VALUES (1380, 64, 104);
INSERT INTO `authorization_role_privilege` VALUES (864, 65, 1);
INSERT INTO `authorization_role_privilege` VALUES (865, 65, 2);
INSERT INTO `authorization_role_privilege` VALUES (866, 65, 3);
INSERT INTO `authorization_role_privilege` VALUES (867, 65, 4);
INSERT INTO `authorization_role_privilege` VALUES (868, 65, 5);
INSERT INTO `authorization_role_privilege` VALUES (869, 65, 6);
INSERT INTO `authorization_role_privilege` VALUES (870, 65, 7);
INSERT INTO `authorization_role_privilege` VALUES (871, 65, 8);
INSERT INTO `authorization_role_privilege` VALUES (872, 65, 9);
INSERT INTO `authorization_role_privilege` VALUES (880, 65, 17);
INSERT INTO `authorization_role_privilege` VALUES (881, 65, 18);
INSERT INTO `authorization_role_privilege` VALUES (882, 65, 19);
INSERT INTO `authorization_role_privilege` VALUES (883, 65, 20);
INSERT INTO `authorization_role_privilege` VALUES (884, 65, 21);
INSERT INTO `authorization_role_privilege` VALUES (885, 65, 22);
INSERT INTO `authorization_role_privilege` VALUES (896, 65, 61);
INSERT INTO `authorization_role_privilege` VALUES (897, 65, 62);
INSERT INTO `authorization_role_privilege` VALUES (898, 65, 63);
INSERT INTO `authorization_role_privilege` VALUES (899, 65, 64);
INSERT INTO `authorization_role_privilege` VALUES (900, 65, 65);
INSERT INTO `authorization_role_privilege` VALUES (901, 65, 66);
INSERT INTO `authorization_role_privilege` VALUES (902, 65, 67);
INSERT INTO `authorization_role_privilege` VALUES (903, 65, 68);
INSERT INTO `authorization_role_privilege` VALUES (904, 65, 69);
INSERT INTO `authorization_role_privilege` VALUES (905, 65, 70);
INSERT INTO `authorization_role_privilege` VALUES (906, 65, 71);
INSERT INTO `authorization_role_privilege` VALUES (907, 65, 72);
INSERT INTO `authorization_role_privilege` VALUES (908, 65, 73);
INSERT INTO `authorization_role_privilege` VALUES (909, 65, 74);
INSERT INTO `authorization_role_privilege` VALUES (912, 65, 81);
INSERT INTO `authorization_role_privilege` VALUES (913, 65, 82);
INSERT INTO `authorization_role_privilege` VALUES (916, 65, 85);
INSERT INTO `authorization_role_privilege` VALUES (917, 65, 86);
INSERT INTO `authorization_role_privilege` VALUES (918, 65, 87);
INSERT INTO `authorization_role_privilege` VALUES (1297, 65, 102);
INSERT INTO `authorization_role_privilege` VALUES (1298, 65, 103);
INSERT INTO `authorization_role_privilege` VALUES (1299, 65, 104);
INSERT INTO `authorization_role_privilege` VALUES (920, 66, 3);
INSERT INTO `authorization_role_privilege` VALUES (919, 66, 4);
INSERT INTO `authorization_role_privilege` VALUES (1381, 66, 102);
INSERT INTO `authorization_role_privilege` VALUES (1382, 66, 103);
INSERT INTO `authorization_role_privilege` VALUES (1383, 66, 104);
INSERT INTO `authorization_role_privilege` VALUES (984, 67, 1);
INSERT INTO `authorization_role_privilege` VALUES (985, 67, 2);
INSERT INTO `authorization_role_privilege` VALUES (986, 67, 3);
INSERT INTO `authorization_role_privilege` VALUES (987, 67, 4);
INSERT INTO `authorization_role_privilege` VALUES (988, 67, 5);
INSERT INTO `authorization_role_privilege` VALUES (989, 67, 6);
INSERT INTO `authorization_role_privilege` VALUES (990, 67, 7);
INSERT INTO `authorization_role_privilege` VALUES (991, 67, 8);
INSERT INTO `authorization_role_privilege` VALUES (992, 67, 9);
INSERT INTO `authorization_role_privilege` VALUES (1000, 67, 17);
INSERT INTO `authorization_role_privilege` VALUES (1001, 67, 18);
INSERT INTO `authorization_role_privilege` VALUES (1002, 67, 19);
INSERT INTO `authorization_role_privilege` VALUES (1003, 67, 20);
INSERT INTO `authorization_role_privilege` VALUES (1004, 67, 21);
INSERT INTO `authorization_role_privilege` VALUES (1005, 67, 22);
INSERT INTO `authorization_role_privilege` VALUES (1016, 67, 61);
INSERT INTO `authorization_role_privilege` VALUES (1017, 67, 62);
INSERT INTO `authorization_role_privilege` VALUES (1018, 67, 63);
INSERT INTO `authorization_role_privilege` VALUES (1019, 67, 64);
INSERT INTO `authorization_role_privilege` VALUES (1020, 67, 65);
INSERT INTO `authorization_role_privilege` VALUES (1021, 67, 66);
INSERT INTO `authorization_role_privilege` VALUES (1022, 67, 67);
INSERT INTO `authorization_role_privilege` VALUES (1023, 67, 68);
INSERT INTO `authorization_role_privilege` VALUES (1024, 67, 69);
INSERT INTO `authorization_role_privilege` VALUES (1025, 67, 70);
INSERT INTO `authorization_role_privilege` VALUES (1026, 67, 71);
INSERT INTO `authorization_role_privilege` VALUES (1027, 67, 72);
INSERT INTO `authorization_role_privilege` VALUES (1028, 67, 73);
INSERT INTO `authorization_role_privilege` VALUES (1029, 67, 74);
INSERT INTO `authorization_role_privilege` VALUES (1032, 67, 81);
INSERT INTO `authorization_role_privilege` VALUES (1033, 67, 82);
INSERT INTO `authorization_role_privilege` VALUES (1036, 67, 85);
INSERT INTO `authorization_role_privilege` VALUES (1037, 67, 86);
INSERT INTO `authorization_role_privilege` VALUES (1038, 67, 87);
INSERT INTO `authorization_role_privilege` VALUES (1300, 67, 102);
INSERT INTO `authorization_role_privilege` VALUES (1301, 67, 103);
INSERT INTO `authorization_role_privilege` VALUES (1302, 67, 104);
INSERT INTO `authorization_role_privilege` VALUES (1040, 68, 3);
INSERT INTO `authorization_role_privilege` VALUES (1039, 68, 4);
INSERT INTO `authorization_role_privilege` VALUES (1384, 68, 102);
INSERT INTO `authorization_role_privilege` VALUES (1385, 68, 103);
INSERT INTO `authorization_role_privilege` VALUES (1386, 68, 104);
INSERT INTO `authorization_role_privilege` VALUES (1041, 69, 1);
INSERT INTO `authorization_role_privilege` VALUES (1042, 69, 2);
INSERT INTO `authorization_role_privilege` VALUES (1043, 69, 3);
INSERT INTO `authorization_role_privilege` VALUES (1044, 69, 4);
INSERT INTO `authorization_role_privilege` VALUES (1045, 69, 5);
INSERT INTO `authorization_role_privilege` VALUES (1046, 69, 6);
INSERT INTO `authorization_role_privilege` VALUES (1047, 69, 7);
INSERT INTO `authorization_role_privilege` VALUES (1048, 69, 8);
INSERT INTO `authorization_role_privilege` VALUES (1049, 69, 9);
INSERT INTO `authorization_role_privilege` VALUES (1057, 69, 17);
INSERT INTO `authorization_role_privilege` VALUES (1058, 69, 18);
INSERT INTO `authorization_role_privilege` VALUES (1059, 69, 19);
INSERT INTO `authorization_role_privilege` VALUES (1060, 69, 20);
INSERT INTO `authorization_role_privilege` VALUES (1061, 69, 21);
INSERT INTO `authorization_role_privilege` VALUES (1062, 69, 22);
INSERT INTO `authorization_role_privilege` VALUES (1073, 69, 61);
INSERT INTO `authorization_role_privilege` VALUES (1074, 69, 62);
INSERT INTO `authorization_role_privilege` VALUES (1075, 69, 63);
INSERT INTO `authorization_role_privilege` VALUES (1076, 69, 64);
INSERT INTO `authorization_role_privilege` VALUES (1077, 69, 65);
INSERT INTO `authorization_role_privilege` VALUES (1078, 69, 66);
INSERT INTO `authorization_role_privilege` VALUES (1079, 69, 67);
INSERT INTO `authorization_role_privilege` VALUES (1080, 69, 68);
INSERT INTO `authorization_role_privilege` VALUES (1081, 69, 69);
INSERT INTO `authorization_role_privilege` VALUES (1082, 69, 70);
INSERT INTO `authorization_role_privilege` VALUES (1083, 69, 71);
INSERT INTO `authorization_role_privilege` VALUES (1084, 69, 72);
INSERT INTO `authorization_role_privilege` VALUES (1085, 69, 73);
INSERT INTO `authorization_role_privilege` VALUES (1086, 69, 74);
INSERT INTO `authorization_role_privilege` VALUES (1089, 69, 81);
INSERT INTO `authorization_role_privilege` VALUES (1090, 69, 82);
INSERT INTO `authorization_role_privilege` VALUES (1093, 69, 85);
INSERT INTO `authorization_role_privilege` VALUES (1094, 69, 86);
INSERT INTO `authorization_role_privilege` VALUES (1095, 69, 87);
INSERT INTO `authorization_role_privilege` VALUES (1303, 69, 102);
INSERT INTO `authorization_role_privilege` VALUES (1304, 69, 103);
INSERT INTO `authorization_role_privilege` VALUES (1305, 69, 104);
INSERT INTO `authorization_role_privilege` VALUES (1097, 70, 3);
INSERT INTO `authorization_role_privilege` VALUES (1096, 70, 4);
INSERT INTO `authorization_role_privilege` VALUES (1387, 70, 102);
INSERT INTO `authorization_role_privilege` VALUES (1388, 70, 103);
INSERT INTO `authorization_role_privilege` VALUES (1389, 70, 104);
INSERT INTO `authorization_role_privilege` VALUES (1098, 71, 1);
INSERT INTO `authorization_role_privilege` VALUES (1099, 71, 2);
INSERT INTO `authorization_role_privilege` VALUES (1100, 71, 3);
INSERT INTO `authorization_role_privilege` VALUES (1101, 71, 4);
INSERT INTO `authorization_role_privilege` VALUES (1102, 71, 5);
INSERT INTO `authorization_role_privilege` VALUES (1103, 71, 6);
INSERT INTO `authorization_role_privilege` VALUES (1104, 71, 7);
INSERT INTO `authorization_role_privilege` VALUES (1105, 71, 8);
INSERT INTO `authorization_role_privilege` VALUES (1106, 71, 9);
INSERT INTO `authorization_role_privilege` VALUES (1114, 71, 17);
INSERT INTO `authorization_role_privilege` VALUES (1115, 71, 18);
INSERT INTO `authorization_role_privilege` VALUES (1116, 71, 19);
INSERT INTO `authorization_role_privilege` VALUES (1117, 71, 20);
INSERT INTO `authorization_role_privilege` VALUES (1118, 71, 21);
INSERT INTO `authorization_role_privilege` VALUES (1119, 71, 22);
INSERT INTO `authorization_role_privilege` VALUES (1130, 71, 61);
INSERT INTO `authorization_role_privilege` VALUES (1131, 71, 62);
INSERT INTO `authorization_role_privilege` VALUES (1132, 71, 63);
INSERT INTO `authorization_role_privilege` VALUES (1133, 71, 64);
INSERT INTO `authorization_role_privilege` VALUES (1134, 71, 65);
INSERT INTO `authorization_role_privilege` VALUES (1135, 71, 66);
INSERT INTO `authorization_role_privilege` VALUES (1136, 71, 67);
INSERT INTO `authorization_role_privilege` VALUES (1137, 71, 68);
INSERT INTO `authorization_role_privilege` VALUES (1138, 71, 69);
INSERT INTO `authorization_role_privilege` VALUES (1139, 71, 70);
INSERT INTO `authorization_role_privilege` VALUES (1140, 71, 71);
INSERT INTO `authorization_role_privilege` VALUES (1141, 71, 72);
INSERT INTO `authorization_role_privilege` VALUES (1142, 71, 73);
INSERT INTO `authorization_role_privilege` VALUES (1143, 71, 74);
INSERT INTO `authorization_role_privilege` VALUES (1146, 71, 81);
INSERT INTO `authorization_role_privilege` VALUES (1147, 71, 82);
INSERT INTO `authorization_role_privilege` VALUES (1150, 71, 85);
INSERT INTO `authorization_role_privilege` VALUES (1151, 71, 86);
INSERT INTO `authorization_role_privilege` VALUES (1152, 71, 87);
INSERT INTO `authorization_role_privilege` VALUES (1306, 71, 102);
INSERT INTO `authorization_role_privilege` VALUES (1307, 71, 103);
INSERT INTO `authorization_role_privilege` VALUES (1308, 71, 104);
INSERT INTO `authorization_role_privilege` VALUES (1154, 72, 3);
INSERT INTO `authorization_role_privilege` VALUES (1153, 72, 4);
INSERT INTO `authorization_role_privilege` VALUES (1390, 72, 102);
INSERT INTO `authorization_role_privilege` VALUES (1391, 72, 103);
INSERT INTO `authorization_role_privilege` VALUES (1392, 72, 104);
INSERT INTO `authorization_role_privilege` VALUES (1159, 73, 1);
INSERT INTO `authorization_role_privilege` VALUES (1160, 73, 2);
INSERT INTO `authorization_role_privilege` VALUES (1161, 73, 3);
INSERT INTO `authorization_role_privilege` VALUES (1162, 73, 4);
INSERT INTO `authorization_role_privilege` VALUES (1163, 73, 5);
INSERT INTO `authorization_role_privilege` VALUES (1164, 73, 6);
INSERT INTO `authorization_role_privilege` VALUES (1165, 73, 7);
INSERT INTO `authorization_role_privilege` VALUES (1166, 73, 8);
INSERT INTO `authorization_role_privilege` VALUES (1167, 73, 9);
INSERT INTO `authorization_role_privilege` VALUES (1175, 73, 17);
INSERT INTO `authorization_role_privilege` VALUES (1176, 73, 18);
INSERT INTO `authorization_role_privilege` VALUES (1177, 73, 19);
INSERT INTO `authorization_role_privilege` VALUES (1178, 73, 20);
INSERT INTO `authorization_role_privilege` VALUES (1179, 73, 21);
INSERT INTO `authorization_role_privilege` VALUES (1180, 73, 22);
INSERT INTO `authorization_role_privilege` VALUES (1191, 73, 61);
INSERT INTO `authorization_role_privilege` VALUES (1192, 73, 62);
INSERT INTO `authorization_role_privilege` VALUES (1193, 73, 63);
INSERT INTO `authorization_role_privilege` VALUES (1194, 73, 64);
INSERT INTO `authorization_role_privilege` VALUES (1195, 73, 65);
INSERT INTO `authorization_role_privilege` VALUES (1196, 73, 66);
INSERT INTO `authorization_role_privilege` VALUES (1197, 73, 67);
INSERT INTO `authorization_role_privilege` VALUES (1198, 73, 68);
INSERT INTO `authorization_role_privilege` VALUES (1199, 73, 69);
INSERT INTO `authorization_role_privilege` VALUES (1200, 73, 70);
INSERT INTO `authorization_role_privilege` VALUES (1201, 73, 71);
INSERT INTO `authorization_role_privilege` VALUES (1202, 73, 72);
INSERT INTO `authorization_role_privilege` VALUES (1203, 73, 73);
INSERT INTO `authorization_role_privilege` VALUES (1204, 73, 74);
INSERT INTO `authorization_role_privilege` VALUES (1207, 73, 81);
INSERT INTO `authorization_role_privilege` VALUES (1208, 73, 82);
INSERT INTO `authorization_role_privilege` VALUES (1211, 73, 85);
INSERT INTO `authorization_role_privilege` VALUES (1212, 73, 86);
INSERT INTO `authorization_role_privilege` VALUES (1213, 73, 87);
INSERT INTO `authorization_role_privilege` VALUES (1214, 73, 88);
INSERT INTO `authorization_role_privilege` VALUES (1309, 73, 102);
INSERT INTO `authorization_role_privilege` VALUES (1310, 73, 103);
INSERT INTO `authorization_role_privilege` VALUES (1311, 73, 104);
INSERT INTO `authorization_role_privilege` VALUES (1216, 74, 3);
INSERT INTO `authorization_role_privilege` VALUES (1215, 74, 4);
INSERT INTO `authorization_role_privilege` VALUES (1393, 74, 102);
INSERT INTO `authorization_role_privilege` VALUES (1394, 74, 103);
INSERT INTO `authorization_role_privilege` VALUES (1395, 74, 104);
COMMIT;

-- ----------------------------
-- Table structure for bundle
-- ----------------------------
DROP TABLE IF EXISTS `bundle`;
CREATE TABLE `bundle` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `NAME` varchar(50) DEFAULT NULL COMMENT '套餐名称',
  `CODE` varchar(50) DEFAULT NULL COMMENT '套餐编码',
  `TENANT_TYPE_CODE` varchar(50) DEFAULT NULL COMMENT '租户类型编码',
  `ABILITY` longtext COMMENT '套餐包含功能描述,JSON格式的角色与权限',
  `NUMBER_OF_INVOCATION` int(11) NOT NULL COMMENT 'API调用次数/月',
  `NUMBER_OF_CONCURRENT` int(11) NOT NULL COMMENT '并发数/秒',
  `NUMBER_OF_APP` int(11) NOT NULL COMMENT '允许创建应用数量',
  `COMMENT` varchar(200) DEFAULT NULL COMMENT '套餐说明',
  `INITIALIZE` int(1) DEFAULT NULL COMMENT '是否为初始化套餐',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `bundle_unq_code` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bundle
-- ----------------------------
BEGIN;
INSERT INTO `bundle` VALUES (1, '系统管理根租户初始化套餐', 'admin', 'admin', NULL, 0, 0, 0, NULL, 1);
INSERT INTO `bundle` VALUES (2, '闪聚支付-商户初始化版', 'shanju-merchant', 'shanju-merchant', '[{\"name\":\"商户管理员\",\"code\": \"r_001\",\"privilegeCodes\": [\"sj_m_account\",\"sj_m_app\",\"sj_m_organization\",\"sj_m_account_check\",\"sj_m_account_list\",\"sj_m_app_create\",\"sj_m_app_list\",\"sj_m_app_modify\",\"sj_m_app_save\",\"sj_m_auth_apply\",\"sj_m_b2c_order\",\"sj_m_bundle_buy\",\"sj_m_c2b_qrcode\",\"sj_m_console\",\"sj_m_console_renew\",\"sj_m_console_upgrade\",\"sj_m_enterprise_auth\",\"sj_m_enterprise_info_cancel\",\"sj_m_enterprise_info_submit\",\"sj_m_h5_view\",\"sj_m_payment\",\"sj_m_payment_set\",\"sj_m_payparam_save\",\"sj_m_pay_save\",\"sj_m_pay_set\",\"sj_m_staff_create\",\"sj_m_staff_del\",\"sj_m_staff_edit\",\"sj_m_staff_list\",\"sj_m_staff_query\",\"sj_m_staff_save\",\"sj_m_store_create\",\"sj_m_store_del\",\"sj_m_store_edit\",\"sj_m_store_list\",\"sj_m_store_query\",\"sj_m_store_save\",\"sj_m_transaction_list\",\"sj_o_account_check\",\"sj_o_admin_create\",\"sj_o_admin_edit\",\"sj_o_admin_list\",\"sj_o_admin_query\",\"sj_o_audit\",\"sj_o_enterprise_auth_pass\",\"sj_o_enterprise_auth_rejection\",\"sj_o_enterprise_create\",\"sj_o_enterprise_query\",\"sj_o_entreprise_list\",\"sj_o_member_list\",\"sj_o_member_query\",\"sj_o_role_create\",\"sj_o_role_edit\",\"sj_o_role_list\",\"sj_o_role_query\",\"sj_o_role_save\",\"sj_o_service_create\",\"sj_o_service_query\",\"sj_o_service_type\"]},{\"name\": \"商户门店收银员\",\"code\": \"r_002\",\"privilegeCodes\":  [\"sj_m_account_check\",\"sj_m_transaction_list\"]}]', 1000, 10, 1, NULL, 1);
INSERT INTO `bundle` VALUES (3, '学成在线-教学机构初始化', 'b_xuecheng-company', 'xc-teaching-institution', '[\r\n	{\r\n		\"name\": \"机构管理员\",\r\n		\"code\": \"r_xc_com_admin\",\r\n		\"privilegeCodes\": [\r\n			\"xc_company_modify\",\r\n			\"xc_company_view\",\r\n			\"xc_course_base_del\",\r\n			\"xc_course_base_edit\",\r\n			\"xc_course_base_list\",\r\n			\"xc_course_base_save\",\r\n			\"xc_course_base_view\",\r\n			\"xc_course_publish\",\r\n			\"xc_market_save_modify\",\r\n			\"xc_market_view\",\r\n			\"xc_media_del\",\r\n			\"xc_media_list\",\r\n			\"xc_media_preview\",\r\n			\"xc_media_save\",\r\n			\"xc_teacher_list\",\r\n			\"xc_teacher_modify\",\r\n			\"xc_teacher_save\",\r\n			\"xc_teachplanworkrecord_correction\",\r\n			\"xc_teachplanworkrecord_list\",\r\n			\"xc_teachplanwork_del\",\r\n			\"xc_teachplanwork_list\",\r\n			\"xc_teachplanwork_save_modify\",\r\n			\"xc_teachplan_del\",\r\n			\"xc_teachplan_save_modify\",\r\n			\"xc_teachplan_view\"\r\n		]\r\n	}\r\n]', 1000, 10, 1, '学成新增', 1);
INSERT INTO `bundle` VALUES (4, '闪聚支付-运营后台初始化套餐', 'shanju-operation', 'shanju-operation', '[{\"name\":\"运营后台管理员\",\"code\": \"r_001\",\"privilegeCodes\":[\"sj_o_entreprise\",\"sj_o_service\",\"sj_o_sys\",\"sj_o_account\",\"sj_o_account_check\",\"sj_o_admin_create\",\"sj_o_admin_edit\",\"sj_o_admin_list\",\"sj_o_admin_query\",\"sj_o_audit\",\"sj_o_enterprise_auth_pass\",\"sj_o_enterprise_auth_rejection\",\"sj_o_enterprise_create\",\"sj_o_enterprise_query\",\"sj_o_entreprise_list\",\"sj_o_member_list\",\"sj_o_member_query\",\"sj_o_role_create\",\"sj_o_role_edit\",\"sj_o_role_list\",\"sj_o_role_query\",\"sj_o_role_save\",\"sj_o_service_create\",\"sj_o_service_query\",\"sj_o_service_type\"]}]', 1000, 10, 1, NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for resource_application
-- ----------------------------
DROP TABLE IF EXISTS `resource_application`;
CREATE TABLE `resource_application` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `NAME` varchar(50) DEFAULT NULL COMMENT '应用名称',
  `CODE` varchar(50) DEFAULT NULL COMMENT '应用编码',
  `TENANT_ID` bigint(20) DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1194570708080922687 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='应用信息';

-- ----------------------------
-- Records of resource_application
-- ----------------------------
BEGIN;
INSERT INTO `resource_application` VALUES (1, '闪聚支付-商户平台', 'merchant-platform', 1);
INSERT INTO `resource_application` VALUES (2, '闪聚支付-运营平台', 'operation-platform', 1);
INSERT INTO `resource_application` VALUES (3, '门户', 'portal-site', 1);
INSERT INTO `resource_application` VALUES (4, '商户平台app版', 'merchant-platform-app', 1);
INSERT INTO `resource_application` VALUES (5, '学成在线-运营平台', 'xc-oper-platform', 1);
INSERT INTO `resource_application` VALUES (6, '学成在线-教学机构平台', 'xc-com-platform', 1);
INSERT INTO `resource_application` VALUES (1177175786154926082, '98应用1', 'b910da455bc84514b324656e1088320b', 1177112064011063298);
INSERT INTO `resource_application` VALUES (1186220408609705986, 'yuan2的收款应用', '1f8714fb5743401ea3565d489fa09b76', 1186173819157544962);
INSERT INTO `resource_application` VALUES (1194556024636313601, '09应用1999', 'e366cfc9373e440abbdbe5818aa6c91b', 1177111672565059586);
INSERT INTO `resource_application` VALUES (1194570708080922626, '09应用1999', '5fe423628cd14143a94d05575323555d', 1177111672565059586);
INSERT INTO `resource_application` VALUES (1194570708080922627, NULL, 'c4332c137b88432fb21eece03cb7d79d', 1199981635597017091);
INSERT INTO `resource_application` VALUES (1194570708080922628, '', '1d3b695dfdee42f29cd987f012be307d', 1199981635597017093);
INSERT INTO `resource_application` VALUES (1194570708080922629, '', 'a644f27fea694f2c93d2d7c324c07d01', 1199981635597017093);
INSERT INTO `resource_application` VALUES (1194570708080922630, '测试应用创建005', '05451c6913164f2fbe681fe2621bef3a', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922631, '测试应用创建006', 'ca28d1f01e9a4e24ac48f4b2ce80870e', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922632, '测试应用创建123', '4bee65d6c39e48f885c06985467c8dd5', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922633, '创建应用测试006', '172c6a7c876b48b68c8af93abbdb32d0', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922634, '应用007', '089197177cbe40fb89a5d3e4bc123232', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922635, '1111', 'b0488bc8f7f8481291d911ccbe25c8ae', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922636, '3422', 'c0cb9c5f0c5d4676bef64eb9556b8a69', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922637, '234234', '5066134758184f4687ce18fda49dae99', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922638, '新应用', '48cc4a10026c4dd18dac4c6978a32cc5', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922639, '23432', '089f6616688344299f3372d1dc9ad646', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922640, '23423', 'fd8c6ace199c43afb018440122e71ff8', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922641, '454', '97215074c9384a11a4b70ea7ebe62392', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922642, '2222', '3c5e71ddde054a0f9e9c8a606f118601', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922643, 'werwr', '92cf3ea3cc4c4884877dac0c604dc42c', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922644, 'referf', '01ca64b154b84647bbfa9c0ec00d122b', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922645, 'rfgerg', 'c76721900a274cd8b08e20b2cf5be277', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922646, 'ergerg', '392832f54a2b4b5aa596e8bf3bee95b3', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922647, '3422434', '7015eacc0d3445d78c4f8d1a28c25ef4', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922648, '324234234324', '8c9be997b15f46daad0d89c77b8447a2', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922649, '234232353254', 'fdd0cd67bae14c1fb8d8c2fcbd2300a0', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922650, '新应用001', '9f647f4d2ad340f1a7a6977a54a0aa52', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922651, '2342344543', '62ed3f9065964c65af982aaec2fdb332', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922652, 'tgtrg', 'afe09e28033542a18671c005fffc0ccd', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922653, 'regrtg', '2ce884c30e7a4b10a6de420b5ff2751f', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922654, 'tgtrg45', 'e003bc3285484a10af14ef7d1b29b3bd', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922655, 'tgtrg452343', 'f04edbca99bd4df29dc4159d03298f5d', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922656, '23423423', 'd3a63cb1dcee41e6995e82552e2ee8da', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922657, '23423546546', 'e1a9461bbd39472b86f559201e17f225', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922658, '新应用002', 'c55443253e624c4d8f93d34545240e28', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922659, '新应用003', 'c301ad03972f418eabbd712ca6f549fb', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922660, '546546', '3d116d128e7d4a19b8e6b40e49061c64', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922661, 'kkkkkk', 'c221f347b99e47fe9dc9e69b2f0523da', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922662, 'gggg', '7e15b6bef18a418fb049c7e39fb9b4e6', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922663, '55', '4a632f9dcdaa460da92966b7b6305807', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922664, 'ffff', '5e3aa4bae678455a905151ae437438ac', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922665, 'www', 'd47b0e945c16485cb32667742858f46f', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922666, '新应用666', '2e2aa0c1a1ff48468fddca34f6bba135', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922667, '新应用888', '46f840bf76a64a8a8227605991686209', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922668, '新应用000', '2261c0dde0984a6d9ee23b2fb4b2aaab', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922669, '4444', 'cec7291b03054545b4671f42daa5de4a', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922670, '666', 'a7896a5604ed465497036360133e2480', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922671, '新应用521', 'dca0de8be65546e6a551fc78cfcc0914', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922672, '333', '894eaff3451146dd945ceb4b140931ea', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922673, '新应用007', '57b5ff3f9fea4f1b872b7b3013065130', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922674, '新应用008', '0bc940c590364da7a57ba70c1669c4c6', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922675, 'qwede', '5787ddeff38c49de81645a7441b0c650', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922676, '85', '232ce5785e0e4b9cb923f83f00b7846a', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922677, '785', '73e53b7dc5d948388eb2f2696f87aa91', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922678, '新应用008', 'c8cfe336166547929ced36910502fe15', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922679, '234234', 'a9b5280bdff7462eb728f9e8f97e83e3', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922680, '34543543', 'a6200bacd43a457a90cf81860f8b43da', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922681, '23432rf', 'eec3ef04d2ab494cbb839c6c247a34fc', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922682, '应新用009', 'd597d7a5a97544688991a7af21bdf644', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922683, '新应用8888', 'e03bcb0ca3fa459eb93b51ae3127d394', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922684, '12431234123412', '9352ffde48f44150a699ccad99e275ec', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922685, '234234344', 'e98404a757904dda9d5b297512df92b9', 1199981635597017094);
INSERT INTO `resource_application` VALUES (1194570708080922686, '黑客应用001', '874285a1409740519a353ddc4d748a77', 1206857411133181958);
COMMIT;

-- ----------------------------
-- Table structure for resource_button
-- ----------------------------
DROP TABLE IF EXISTS `resource_button`;
CREATE TABLE `resource_button` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `PARENT_ID` bigint(20) DEFAULT NULL COMMENT '父id',
  `TITLE` varchar(50) NOT NULL COMMENT '按钮标题',
  `URL` varchar(200) DEFAULT NULL COMMENT '链接url',
  `ICON` varchar(50) DEFAULT NULL COMMENT '图标',
  `SORT` int(11) NOT NULL COMMENT '排序',
  `COMMENT` varchar(200) DEFAULT NULL COMMENT '说明',
  `STATUS` int(11) NOT NULL COMMENT '状态',
  `APPLICATION_CODE` varchar(50) DEFAULT NULL COMMENT '所属应用编码',
  `PRIVILEGE_CODE` varchar(50) DEFAULT NULL COMMENT '绑定权限',
  `PCODE` varchar(200) DEFAULT NULL COMMENT '用于鉴权',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1241761810982985032 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='按钮资源';

-- ----------------------------
-- Records of resource_button
-- ----------------------------
BEGIN;
INSERT INTO `resource_button` VALUES (1241761810982985001, NULL, '工作台-升级', NULL, NULL, 2, NULL, 1, 'merchant-platform', 'sj_m_console_upgrade', 'sj_m_console_upgrade');
INSERT INTO `resource_button` VALUES (1241761810982985002, NULL, '工作台-续费', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_m_console_renew', 'sj_m_console_renew');
INSERT INTO `resource_button` VALUES (1241761810982985003, NULL, '创建应用', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_m_app_create', 'sj_m_app_create');
INSERT INTO `resource_button` VALUES (1241761810982985004, NULL, '保存应用', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_m_app_save', 'sj_m_app_save');
INSERT INTO `resource_button` VALUES (1241761810982985005, NULL, '编辑应用', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_m_app_edit', 'sj_m_app_edit');
INSERT INTO `resource_button` VALUES (1241761810982985010, NULL, '支付参数保存', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_m_payparam_save', 'sj_m_payparam_save');
INSERT INTO `resource_button` VALUES (1241761810982985011, NULL, '设置默认支付', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_m_pay_set', 'sj_m_pay_set');
INSERT INTO `resource_button` VALUES (1241761810982985012, NULL, '保存默认支付', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_m_pay_save', 'sj_m_pay_save');
INSERT INTO `resource_button` VALUES (1241761810982985013, NULL, 'C扫B二维码', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_m_c2b_qrcode', 'sj_m_c2b_qrcode');
INSERT INTO `resource_button` VALUES (1241761810982985014, NULL, 'B扫C订单', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_m_b2c_order', 'sj_m_b2c_order');
INSERT INTO `resource_button` VALUES (1241761810982985015, NULL, '购买套餐', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_m_bundle_buy', 'sj_m_bundle_buy');
INSERT INTO `resource_button` VALUES (1241761810982985017, NULL, '企业认证资料提交', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_m_enterprise_info_submit', 'sj_m_enterprise_info_submit');
INSERT INTO `resource_button` VALUES (1241761810982985018, NULL, '会员查询', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_o_member_query', 'sj_o_member_query');
INSERT INTO `resource_button` VALUES (1241761810982985019, NULL, '审核管理企业查询', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_o_enterprise_query', 'sj_o_enterprise_query');
INSERT INTO `resource_button` VALUES (1241761810982985021, NULL, '门店管理-新建按钮', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_m_store_create', 'sj_m_store_create');
INSERT INTO `resource_button` VALUES (1241761810982985022, NULL, '门店管理-编辑按钮', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_m_store_edit', 'sj_m_store_edit');
INSERT INTO `resource_button` VALUES (1241761810982985023, NULL, '门店管理-删除按钮', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_m_store_del', 'sj_m_store_del');
INSERT INTO `resource_button` VALUES (1241761810982985024, NULL, '门店管理-查询按钮', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_m_store_query', 'sj_m_store_query');
INSERT INTO `resource_button` VALUES (1241761810982985025, NULL, '门店管理-保存按钮', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_m_store_save', 'sj_m_store_save');
INSERT INTO `resource_button` VALUES (1241761810982985026, NULL, '成员管理-新建按钮', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_m_staff_create', 'sj_m_staff_create');
INSERT INTO `resource_button` VALUES (1241761810982985027, NULL, '成员管理-编辑按钮', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_m_staff_edit', 'sj_m_staff_edit');
INSERT INTO `resource_button` VALUES (1241761810982985029, NULL, '课程管理-课程审核', NULL, NULL, 1, NULL, 1, NULL, 'p_xc_c_001', NULL);
INSERT INTO `resource_button` VALUES (1241761810982985030, NULL, '媒资管理-审核媒体资质', NULL, NULL, 1, NULL, 1, NULL, 'p_xc_m_001', NULL);
INSERT INTO `resource_button` VALUES (1241761810982985031, NULL, '机构管理-审核机构', NULL, NULL, 1, NULL, 1, NULL, 'p_xc_t_001', NULL);
COMMIT;

-- ----------------------------
-- Table structure for resource_menu
-- ----------------------------
DROP TABLE IF EXISTS `resource_menu`;
CREATE TABLE `resource_menu` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `PARENT_ID` bigint(20) DEFAULT NULL COMMENT '父id',
  `TITLE` varchar(50) NOT NULL COMMENT '菜单标题',
  `URL` varchar(200) DEFAULT NULL COMMENT '链接url',
  `ICON` varchar(50) DEFAULT NULL COMMENT '图标',
  `SORT` int(11) NOT NULL COMMENT '排序',
  `COMMENT` varchar(200) DEFAULT NULL COMMENT '说明',
  `STATUS` int(11) NOT NULL COMMENT '状态',
  `APPLICATION_CODE` varchar(50) DEFAULT NULL COMMENT '所属应用编码',
  `PRIVILEGE_CODE` varchar(50) DEFAULT NULL COMMENT '绑定权限',
  `PCODE` varchar(200) DEFAULT NULL COMMENT '用于鉴权',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单';

-- ----------------------------
-- Records of resource_menu
-- ----------------------------
BEGIN;
INSERT INTO `resource_menu` VALUES (1, NULL, '商户后台', NULL, NULL, 1, NULL, 1, '', NULL, NULL);
INSERT INTO `resource_menu` VALUES (2, NULL, '运营商后台', NULL, NULL, 1, NULL, 1, '', NULL, NULL);
INSERT INTO `resource_menu` VALUES (3, NULL, '门户', NULL, NULL, 1, NULL, 1, '', NULL, NULL);
INSERT INTO `resource_menu` VALUES (4, 1, '工作台', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_m_console', 'sj_m_console');
INSERT INTO `resource_menu` VALUES (5, 1, '应用管理', NULL, NULL, 2, NULL, 1, 'merchant-platform', 'sj_m_app', 'sj_m_app');
INSERT INTO `resource_menu` VALUES (6, 1, '账户管理', NULL, NULL, 3, NULL, 1, 'merchant-platform', 'sj_m_account', 'sj_m_account');
INSERT INTO `resource_menu` VALUES (7, 1, '组织管理', NULL, NULL, 4, NULL, 1, 'merchant-platform', 'sj_m_organization', 'sj_m_organization');
INSERT INTO `resource_menu` VALUES (8, 2, '企业管理', NULL, NULL, 1, NULL, 1, 'operation-platform', 'sj_o_entreprise', 'sj_o_entreprise');
INSERT INTO `resource_menu` VALUES (9, 2, '服务类型管理', NULL, NULL, 2, NULL, 1, 'operation-platform', 'sj_o_service', 'sj_o_service');
INSERT INTO `resource_menu` VALUES (10, 2, '账单管理', NULL, NULL, 3, NULL, 1, 'operation-platform', 'sj_o_account', 'sj_o_account');
INSERT INTO `resource_menu` VALUES (11, 2, '系统管理', NULL, NULL, 4, NULL, 1, 'operation-platform', 'sj_o_sys', 'sj_o_sys');
INSERT INTO `resource_menu` VALUES (12, 5, '应用管理列表', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_m_app_list', 'sj_m_app_list');
INSERT INTO `resource_menu` VALUES (13, 5, '应用交易总览', NULL, NULL, 2, NULL, 1, 'merchant-platform', 'sj_m_transaction_list', 'sj_m_transaction_list');
INSERT INTO `resource_menu` VALUES (14, 5, '应用财务对账', NULL, NULL, 3, NULL, 1, 'merchant-platform', 'sj_m_account_check', 'sj_m_account_check');
INSERT INTO `resource_menu` VALUES (15, 5, '开始支付', NULL, NULL, 4, NULL, 1, 'merchant-platform', 'sj_m_payment', 'sj_m_payment');
INSERT INTO `resource_menu` VALUES (16, 6, '账户中心', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_m_account_list', 'sj_m_account_list');
INSERT INTO `resource_menu` VALUES (17, 6, '企业认证申请', NULL, NULL, 2, NULL, 1, 'merchant-platform', 'sj_m_enterprise_auth', 'sj_m_enterprise_auth');
INSERT INTO `resource_menu` VALUES (18, 7, '门店管理', NULL, NULL, 1, NULL, 1, 'merchant-platform', 'sj_m_store_list', 'sj_m_store_list');
INSERT INTO `resource_menu` VALUES (19, 7, '成员管理', NULL, NULL, 2, NULL, 1, 'merchant-platform', 'sj_m_staff_list', 'sj_m_staff_list');
INSERT INTO `resource_menu` VALUES (20, 8, '会员管理', NULL, NULL, 1, NULL, 1, 'operation-platform', 'sj_o_member_list', 'sj_o_member_list');
INSERT INTO `resource_menu` VALUES (21, 8, '企业管理', NULL, NULL, 2, NULL, 1, 'operation-platform', 'sj_o_entreprise_list', 'sj_o_entreprise_list');
INSERT INTO `resource_menu` VALUES (22, 8, '审核管理', NULL, NULL, 3, NULL, 1, 'operation-platform', 'sj_o_audit', 'sj_o_audit');
INSERT INTO `resource_menu` VALUES (23, 9, '服务类型管理', NULL, NULL, 1, NULL, 1, 'operation-platform', 'sj_o_service_type', 'sj_o_service_type');
INSERT INTO `resource_menu` VALUES (24, 10, '往来对账', NULL, NULL, 1, NULL, 1, 'operation-platform', 'sj_o_account_check', 'sj_o_account_check');
INSERT INTO `resource_menu` VALUES (25, 11, '管理员管理', NULL, NULL, 1, NULL, 1, 'operation-platform', 'sj_o_admin_list', 'sj_o_admin_list');
INSERT INTO `resource_menu` VALUES (26, 11, '角色管理', NULL, NULL, 2, NULL, 1, 'operation-platform', 'sj_o_role_list', 'sj_o_role_list');
INSERT INTO `resource_menu` VALUES (34, NULL, '学成在线2.0运营后台', NULL, NULL, 1, NULL, 1, NULL, NULL, NULL);
INSERT INTO `resource_menu` VALUES (35, 34, '课程管理', NULL, NULL, 1, NULL, 1, '', NULL, NULL);
INSERT INTO `resource_menu` VALUES (36, 35, '课程审核', NULL, NULL, 1, NULL, 1, '', 'p_xc_c_001', NULL);
INSERT INTO `resource_menu` VALUES (37, 34, '媒资管理', NULL, NULL, 2, NULL, 1, NULL, NULL, NULL);
INSERT INTO `resource_menu` VALUES (38, 37, '媒体资质审核', NULL, NULL, 1, NULL, 1, NULL, 'p_xc_m_001', NULL);
INSERT INTO `resource_menu` VALUES (39, 34, '机构管理', NULL, NULL, 3, NULL, 1, NULL, NULL, NULL);
INSERT INTO `resource_menu` VALUES (40, 39, '机构审核', NULL, NULL, 1, NULL, 1, NULL, 'p_xc_t_001', NULL);
INSERT INTO `resource_menu` VALUES (41, NULL, '学成在线2.0运营后台', NULL, NULL, 1, NULL, 1, NULL, NULL, NULL);
INSERT INTO `resource_menu` VALUES (346, 41, '课程管理', NULL, NULL, 40, NULL, 1, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for tenant
-- ----------------------------
DROP TABLE IF EXISTS `tenant`;
CREATE TABLE `tenant` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `NAME` varchar(512) DEFAULT NULL COMMENT '租户名称',
  `TENANT_TYPE_CODE` varchar(50) DEFAULT NULL COMMENT '租户类型编码',
  `BUNDLE_CODE` varchar(50) DEFAULT NULL COMMENT '购买套餐编码',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1206857411133181959 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tenant
-- ----------------------------
BEGIN;
INSERT INTO `tenant` VALUES (1, '根租户', 'admin', 'admin');
INSERT INTO `tenant` VALUES (1111111672565051234, 'operationAdmin', 'shanju-operation', 'shanju-operation');
INSERT INTO `tenant` VALUES (1177111672565059586, 'lBcW8BeY', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1177112064011063298, 'NmN47r0I', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1177140318218563585, 'Ti04ND94', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1177141851660300290, 'GXZxhW79', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1177142745177075713, 'Ympn9S0x', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1177144209463128065, '01FGC8v4', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1177144209463128115, '学成-运营后台', 'xc-operation-backstage', NULL);
INSERT INTO `tenant` VALUES (1177144209463128125, '学成-教育机构', 'xc-teaching-institution', NULL);
INSERT INTO `tenant` VALUES (1186165689237438465, 'Q5XN0cRN', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1186168085229404161, 'CMY08593', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1186170919618412546, 'BleTx399', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1186171861839446018, 'GKf7wlk3', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1186172654604845058, 'NojHSx1G', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1186173819157544962, 'k3C6c7d3', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1186855107896029186, 't7uR1ofQ', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1194527284107677698, 'sh-69999_e77ll8', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1194528354401783809, 'sh-scq1_BOJRNf', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1199893397776707585, 'm5566_2n7wCi', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1199981635597017089, 'm5599_KQI3LW', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1199981635597017090, '111222333_3e2V2Y', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1199981635597017091, '商户注册666_9ZDYGr', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1199981635597017092, '测试注册商户001_14JuIs', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1199981635597017093, '测试商户注册002_MWl26B', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1199981635597017094, '测试注册商户005_5u1g1U', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1204947714117472258, '17717775555_V2KjS3', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1206765066677129217, 'm5577_ohNAqQ', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1206857411133181953, '17717771111_J92IbM', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1206857411133181954, 'm5588_LbwMc9', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1206857411133181956, 'm55999_m03s10', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1206857411133181957, 'm5511_697m5T', 'shanju-merchant', 'shanju-merchant');
INSERT INTO `tenant` VALUES (1206857411133181958, 'bbbb_n091ks', 'shanju-merchant', 'shanju-merchant');
COMMIT;

-- ----------------------------
-- Table structure for tenant_account
-- ----------------------------
DROP TABLE IF EXISTS `tenant_account`;
CREATE TABLE `tenant_account` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TENANT_ID` bigint(20) DEFAULT NULL COMMENT '租户id',
  `ACCOUNT_ID` bigint(20) DEFAULT NULL COMMENT '账号d',
  `IS_ADMIN` tinyint(1) DEFAULT NULL COMMENT '是否是租户管理员',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1199893220994179121 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tenant_account
-- ----------------------------
BEGIN;
INSERT INTO `tenant_account` VALUES (8, 1177111672565059586, 1177111672632168450, 1);
INSERT INTO `tenant_account` VALUES (9, 1177112064011063298, 1177112064061394945, 1);
INSERT INTO `tenant_account` VALUES (10, 1177112064011063298, 1177111672632168450, 0);
INSERT INTO `tenant_account` VALUES (11, 1177140318218563585, 1177140318327615489, 1);
INSERT INTO `tenant_account` VALUES (12, 1177141851660300290, 1177141851727409153, 1);
INSERT INTO `tenant_account` VALUES (13, 1177142745177075713, 1177142745256767490, 1);
INSERT INTO `tenant_account` VALUES (14, 1177144209463128065, 1177144209505071105, 1);
INSERT INTO `tenant_account` VALUES (15, 1177144209463128115, 1177144209505071106, 1);
INSERT INTO `tenant_account` VALUES (17, 1186165689237438465, 1186165689514262529, 1);
INSERT INTO `tenant_account` VALUES (18, 1186168085229404161, 1186168085334261761, 1);
INSERT INTO `tenant_account` VALUES (19, 1186170919618412546, 1186170919786184705, 1);
INSERT INTO `tenant_account` VALUES (20, 1186171861839446018, 1186171862036578305, 1);
INSERT INTO `tenant_account` VALUES (21, 1186172654604845058, 1186172654713896962, 1);
INSERT INTO `tenant_account` VALUES (22, 1186173819157544962, 1186173819371454465, 1);
INSERT INTO `tenant_account` VALUES (23, 1186855107896029186, 1186855108239962114, 1);
INSERT INTO `tenant_account` VALUES (24, 1194527284107677698, 1194527284397084673, 1);
INSERT INTO `tenant_account` VALUES (25, 1194528354401783809, 1194528354594721793, 1);
INSERT INTO `tenant_account` VALUES (1199893220994179075, 1199893397776707585, 1199893397894148098, 1);
INSERT INTO `tenant_account` VALUES (1199893220994179076, 1199981635597017089, 1199981636008058881, 1);
INSERT INTO `tenant_account` VALUES (1199893220994179077, 1199981635597017090, 1199981636008058889, 1);
INSERT INTO `tenant_account` VALUES (1199893220994179078, 1199981635597017091, 1199981636008058890, 1);
INSERT INTO `tenant_account` VALUES (1199893220994179079, 1199981635597017092, 1199981636008058891, 1);
INSERT INTO `tenant_account` VALUES (1199893220994179080, 1111111672565051234, 123456, 1);
INSERT INTO `tenant_account` VALUES (1199893220994179081, 1199981635597017093, 1199981636008058892, 1);
INSERT INTO `tenant_account` VALUES (1199893220994179082, 1199981635597017094, 1199981636008058893, 1);
INSERT INTO `tenant_account` VALUES (1199893220994179083, 1204947714117472258, 1204947714553679873, 1);
INSERT INTO `tenant_account` VALUES (1199893220994179084, 1206765066677129217, 1206765066932981762, 1);
INSERT INTO `tenant_account` VALUES (1199893220994179085, 1206857411133181953, 1206857411246428161, 1);
INSERT INTO `tenant_account` VALUES (1199893220994179086, 1177144209463128125, 1206857411246428111, NULL);
INSERT INTO `tenant_account` VALUES (1199893220994179087, NULL, 1206857411246428164, 0);
INSERT INTO `tenant_account` VALUES (1199893220994179088, NULL, 1206857411246428165, 0);
INSERT INTO `tenant_account` VALUES (1199893220994179089, NULL, 1206857411246428166, 0);
INSERT INTO `tenant_account` VALUES (1199893220994179090, NULL, 1206857411246428167, 0);
INSERT INTO `tenant_account` VALUES (1199893220994179091, 1206857411133181954, 1206857411246428168, 1);
INSERT INTO `tenant_account` VALUES (1199893220994179096, 1206857411133181956, 1206857411246428174, 1);
INSERT INTO `tenant_account` VALUES (1199893220994179097, 1206857411133181957, 1206857411246428175, 1);
INSERT INTO `tenant_account` VALUES (1199893220994179098, 1206857411133181958, 1206857411246428176, 1);
INSERT INTO `tenant_account` VALUES (1199893220994179102, 1199981635597017094, 1206857411246428181, 0);
INSERT INTO `tenant_account` VALUES (1199893220994179103, 1199981635597017094, 1206857411246428182, 0);
INSERT INTO `tenant_account` VALUES (1199893220994179104, 1199981635597017094, 1206857411246428184, 0);
INSERT INTO `tenant_account` VALUES (1199893220994179105, 1199981635597017094, 1206857411246428185, 0);
INSERT INTO `tenant_account` VALUES (1199893220994179106, 1199981635597017094, 1206857411246428186, 0);
INSERT INTO `tenant_account` VALUES (1199893220994179107, 1199981635597017094, 1206857411246428187, 0);
INSERT INTO `tenant_account` VALUES (1199893220994179108, 1199981635597017094, 1206857411246428188, 0);
INSERT INTO `tenant_account` VALUES (1199893220994179109, 1199981635597017094, 1206857411246428189, 0);
INSERT INTO `tenant_account` VALUES (1199893220994179110, 1199981635597017094, 1206857411246428190, 0);
INSERT INTO `tenant_account` VALUES (1199893220994179111, 1199981635597017094, 1206857411246428191, 0);
INSERT INTO `tenant_account` VALUES (1199893220994179112, 1199981635597017094, 1206857411246428192, 0);
COMMIT;

-- ----------------------------
-- Table structure for tenant_type
-- ----------------------------
DROP TABLE IF EXISTS `tenant_type`;
CREATE TABLE `tenant_type` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `NAME` varchar(50) DEFAULT NULL COMMENT '租户类型名称',
  `CODE` varchar(50) DEFAULT NULL COMMENT '租户类型编码',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tenant_type
-- ----------------------------
BEGIN;
INSERT INTO `tenant_type` VALUES (1, '系统管理组织', 'admin');
INSERT INTO `tenant_type` VALUES (2, '闪聚支付-运营商', 'shanju-operation');
INSERT INTO `tenant_type` VALUES (3, '闪聚支付-签约商户', 'shanju-merchant');
INSERT INTO `tenant_type` VALUES (4, '学成在线-运营后台', 'xc-operation-backstage');
INSERT INTO `tenant_type` VALUES (5, '学成在线-教学机构', 'xc-teaching-institution');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
