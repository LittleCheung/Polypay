

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

# Create Database
# ------------------------------------------------------------
CREATE DATABASE IF NOT EXISTS shanjupay_uaa DEFAULT CHARACTER SET = utf8mb4;

Use shanjupay_uaa;

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(255) NOT NULL COMMENT '客户端标识',
  `resource_ids` varchar(255) DEFAULT NULL COMMENT '接入资源列表',
  `client_secret` varchar(255) DEFAULT NULL COMMENT '客户端秘钥',
  `scope` varchar(255) DEFAULT NULL,
  `authorized_grant_types` varchar(255) DEFAULT NULL,
  `web_server_redirect_uri` varchar(255) DEFAULT NULL,
  `authorities` varchar(255) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` longtext,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `archived` tinyint(4) DEFAULT NULL,
  `trusted` tinyint(4) DEFAULT NULL,
  `autoapprove` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='接入客户端信息';

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
BEGIN;
INSERT INTO `oauth_client_details` VALUES ('0bc940c590364da7a57ba70c1669c4c6', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-18 14:49:42', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('2261c0dde0984a6d9ee23b2fb4b2aaab', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-17 16:55:37', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('232ce5785e0e4b9cb923f83f00b7846a', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-19 17:56:45', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('2ce884c30e7a4b10a6de420b5ff2751f', 'shanju-resource', '', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-17 10:15:39', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('2e2aa0c1a1ff48468fddca34f6bba135', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-17 14:56:55', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('3d116d128e7d4a19b8e6b40e49061c64', 'shanju-resource', '', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-17 14:30:17', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('46f840bf76a64a8a8227605991686209', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-17 16:46:21', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('4a632f9dcdaa460da92966b7b6305807', 'shanju-resource', '', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-17 14:39:44', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('5787ddeff38c49de81645a7441b0c650', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-19 17:48:36', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('57b5ff3f9fea4f1b872b7b3013065130', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_MERCHANT,ROLE_USER', 7200, 259200, NULL, '2019-12-23 11:06:25', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('5e3aa4bae678455a905151ae437438ac', 'shanju-resource', '', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-17 14:44:19', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('62ed3f9065964c65af982aaec2fdb332', 'shanju-resource', '', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-16 21:43:53', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('73e53b7dc5d948388eb2f2696f87aa91', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-19 17:57:41', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('7e15b6bef18a418fb049c7e39fb9b4e6', 'shanju-resource', '', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-17 14:34:07', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('874285a1409740519a353ddc4d748a77', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-30 17:52:48', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('894eaff3451146dd945ceb4b140931ea', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-17 19:54:08', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('9352ffde48f44150a699ccad99e275ec', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-24 15:32:59', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('9f647f4d2ad340f1a7a6977a54a0aa52', 'shanju-resource', '', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-16 21:38:46', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('a6200bacd43a457a90cf81860f8b43da', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-19 20:27:10', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('a7896a5604ed465497036360133e2480', 'shanju-resource', '', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-17 18:14:08', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('a9b5280bdff7462eb728f9e8f97e83e3', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-19 20:25:27', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('afe09e28033542a18671c005fffc0ccd', 'shanju-resource', '', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-16 21:44:16', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('c221f347b99e47fe9dc9e69b2f0523da', 'shanju-resource', '', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-17 14:31:11', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('c301ad03972f418eabbd712ca6f549fb', 'shanju-resource', '', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-17 14:25:47', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('c55443253e624c4d8f93d34545240e28', 'shanju-resource', '', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-17 14:14:41', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('c8cfe336166547929ced36910502fe15', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-19 19:08:09', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('cec7291b03054545b4671f42daa5de4a', 'shanju-resource', '', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-17 18:11:21', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('d3a63cb1dcee41e6995e82552e2ee8da', 'shanju-resource', '', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-17 11:22:49', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('d47b0e945c16485cb32667742858f46f', 'shanju-resource', '', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-17 14:44:51', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('d597d7a5a97544688991a7af21bdf644', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-20 09:51:24', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('dca0de8be65546e6a551fc78cfcc0914', 'shanju-resource', '', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-17 18:38:36', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('e003bc3285484a10af14ef7d1b29b3bd', 'shanju-resource', '', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-17 10:18:14', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('e03bcb0ca3fa459eb93b51ae3127d394', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-24 15:23:27', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('e1a9461bbd39472b86f559201e17f225', 'shanju-resource', '', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-17 11:29:34', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('e98404a757904dda9d5b297512df92b9', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-24 15:38:29', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('eec3ef04d2ab494cbb839c6c247a34fc', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-20 09:47:24', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('f04edbca99bd4df29dc4159d03298f5d', 'shanju-resource', '', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-17 10:19:59', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('merchant-platform', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_MERCHANT,ROLE_USER', 31536000, 259200, NULL, '2019-11-22 12:49:31', 0, 0, 'false');
INSERT INTO `oauth_client_details` VALUES ('operation-platform', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_OPERATION', 31536000, 259200, NULL, '2019-12-03 16:47:51', 0, 0, 'false');
INSERT INTO `oauth_client_details` VALUES ('portal-site', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_PORTAL', 7200, 259200, NULL, '2019-09-26 18:10:18', 0, 0, 'false');
INSERT INTO `oauth_client_details` VALUES ('shanju-resource', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_API', 7200, 259200, NULL, '2019-12-23 11:07:33', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('xc-com-platform', 'shanju-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_XC_API', 7200, 259200, NULL, '2019-12-26 14:38:37', NULL, 0, NULL);
INSERT INTO `oauth_client_details` VALUES ('xc-oper-platform', 'xuecheng-resource', '123456', 'read', 'client_credentials,password,authorization_code,implicit,refresh_token', NULL, 'ROLE_XC_API', 7200, 259200, NULL, '2019-12-26 14:36:34', NULL, 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for oauth_code
-- ----------------------------
DROP TABLE IF EXISTS `oauth_code`;
CREATE TABLE `oauth_code` (
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `code` varchar(255) NOT NULL COMMENT '授权码',
  `authentication` longblob COMMENT '认证信息',
  PRIMARY KEY (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='授权码';

SET FOREIGN_KEY_CHECKS = 1;
