/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : yjfhouse

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2019-12-26 11:40:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `cityId` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `frozen_time` datetime DEFAULT NULL,
  `head` varchar(255) DEFAULT NULL,
  `idCard` varchar(255) DEFAULT NULL,
  `lastLoginType` int(11) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reputationNum` int(11) DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '2019-10-31 17:51:18', '10', '2019-12-23 15:22:23', '武汉市', '1', 'UNN11L97', null, null, 'm/YodFfJvO2mFdLPSER/a0IVFdB83CShrSeg288fXpqoAwiogSd0PA==', '20', '/nPVxk/+baAShvVDij5tWJYgettibRZ2', 'DvPukbHBvQjFO/7zptnXNQ==', '153*****995', '8504003b843d7360b09cfa2ae5943b33', '0', '0', '程', '女士', 'ut3ce4c69bc4945cdf277cb111e64704b8', '10');
INSERT INTO `user` VALUES ('2', '2019-10-31 21:21:54', '10', '2019-11-19 10:18:47', '武汉市', '1', 'U1ZP2K2Z', null, null, 'VxbZcOJagprTgZ7LdDNH337FBk971zGgvT205ZnH7P7Ryte7lBBUQw==', '20', 'njl99Ce7246G3zt4VFeiEMabFu8Co8+w', '38Kuu61Ox4LfFVM7q5GM0w==', '134*****215', '25157edb032ed20b8eab22328c0b55e5', '0', '10', '熊', '先生', 'ut1723dbe0e6f2783de67f5b0a742cad6d', '20');
INSERT INTO `user` VALUES ('3', '2019-10-31 23:01:50', '10', '2019-12-23 16:42:22', '武汉市', '1', 'UK3E3HXF', null, null, 'VxbZcOJagppown3pMKnjlLGZaLOenEnhqg5UrBYaEeTCpUALKnDg2g==', '20', 'p9ZCxYmDSwwIJnnei2/Y8M/N9y3dWSbR', 'Thlnms7Al4tbMVGsyJhzlg==', '187*****315', 'e6abeda3af42e97690eea6e95572d93c', '0', '10', '丁', '先生', 'ut15d4af2ca69592a50c24024e999bc494', '10');
INSERT INTO `user` VALUES ('4', '2019-11-01 09:10:03', '10', '2019-12-24 09:50:07', '武汉市', '1', 'U8HV4Z79', null, null, 'C2oVn9qdEdEw9xDlbmGLn2fU2mn1WkdQd0GKXA28tqkGlVZEBVZKoA==', '20', '1QzINez5Lpf1u8gAxwU3/HW4qZkPDjWV', '1QzINez5Lpf1u8gAxwU3/HW4qZkPDjWV', '过客', 'dd89cdada85c5331fc9103227b283451', '0', '0', '吴', '先生', 'ut38dd7ab90eddf751c4122c439f59bec3', '20');
INSERT INTO `user` VALUES ('5', '2019-11-01 09:32:05', '10', '2019-12-24 18:16:19', '武汉市', '1', 'UJBX5ZW5', null, null, 'xNtcBt9Ksras5jDt3oVghGrUu/thugAQoIuwJ6cWk2/4P95GiGD/eQ==', '20', 'xd9EsAhRTSPFTDG4t2aCpW5sF/DHVz9x', 'b6zX8L25h97vkW2hDj+I6g==', '183*****033', '1be996835e29be58cd094b659f0f0d53', '0', '10', '朱', '先生', 'ut79d0f4ce5820f74b39089da779c9dff8', '20');
INSERT INTO `user` VALUES ('6', '2019-11-01 09:32:43', '10', '2019-12-21 15:25:48', '武汉市', '1', 'UOGU6PTD', null, null, '2OVtEWZP6gRMQWFTNtQbYwJR0XSu7B3lEHXcdOaKUg2Hf5vydqdM9Q==', '20', 'fNOsiKXa4Qp45YXaMod0D9XWck9ua8XP', 'PfrisHWXdlw=', '158*****236', 'cd49c8bd1cc12ee570881db264f122c5', '0', '10', '彭', '先生', 'uta85f9261292c3a2bfd4587254171e115', '10');
INSERT INTO `user` VALUES ('7', '2019-11-01 10:14:08', '10', '2019-12-23 15:59:11', '武汉市', '1', 'UXUK7SSW', null, null, 'nzGecVbEuAA8pt4zv4j5SoruF9gyoaE5iZBvgYlQXeKwlJYQdJuIrw==', '20', '/MPprhCS49uHQqH1BvOp1NGgVQBy96KV', '8HY5/ErvfDk=', '177*****760', '06ae5f9af299c3dc112be29b889dee59', '0', '20', '谢', '女士', 'uta72864f57c33428d3cbd02b3ed105743', '20');
INSERT INTO `user` VALUES ('8', '2019-11-01 11:32:00', '10', '2019-12-24 17:07:33', '武汉市', '1', 'UR1F8G8A', null, null, 'AkM7WhDUCAjPZlrdooHJ1xV1b7doQHqmfcLbX0Qa/JRHH2rUDVFz0w==', '20', 'XV65G43kGMRdtMS528n5aJgQ2ls5LllP', '4WUKGBhtF457xqEef5KlCw==', '土土', 'bf1c4818f013f7e08490f05241190c28', '0', '0', '土', '先生', 'utef28e342069ba864f93692bee283736b', '10');
INSERT INTO `user` VALUES ('9', '2019-11-01 12:51:46', '10', '2019-12-03 12:48:52', '武汉市', '1', 'UAB69ZEK', null, null, '4LpjKlL/ZXZbLWBYRh3odF3+AYARg25hsvi1MXIoAiSvwZ0op83HSA==', '20', '2k9wGpkTauSrWPajS4Fp2sA+YPsiq4cK', 'vG/27h/ykLQpF/2SPh9vGg==', '186*****740', '018496c2b5de217a91969a30b083664d', '0', '20', '阮', '女士', 'uteaa5adb03bcc428ac0f9940c5c56f9d8', '20');
INSERT INTO `user` VALUES ('10', '2019-11-02 16:15:02', '10', '2019-12-19 16:05:29', '武汉市', '1', 'UGQI10BWW', null, null, 'VxbZcOJagppEv1uFUMG/O7Uac0o1vd+1F9T48kKT9uTPNvVmfh91Gg==', '20', 'Db7mtPgMEiR6wVKwKAiwWvgPxDlv31S3', '0IpjzjMOmYFTPYQgAlk/PA==', '133*****016', '406892da4bebfc4320663c65a6573e62', '0', '10', '章', '先生', 'utc23299d7ad8b7b1b047d1e5349ddfdfa', '20');
INSERT INTO `user` VALUES ('11', '2019-11-04 14:34:46', '10', '2019-12-21 14:55:20', '武汉市', '1', 'UXN411ST7', null, null, 'xNtcBt9Ksras5jDt3oVghDE9/xe/L/24Lz+RDE60cg49fIRTM8dyfQ==', '20', '2Yv5WoXXhU/PQ2tG3Oz7yQ1iwrnt5yPi', '7fCO1wU7nDo=', '183*****001', '1be996835e29be58cd094b659f0f0d53', '0', '10', '朱', '先生', 'ut742b5ee4016c14b7846944eca952e0fa', '20');
INSERT INTO `user` VALUES ('12', '2019-11-04 18:07:51', '10', '2019-12-06 15:07:06', '武汉市', '1', 'UD2A12TCV', null, null, 'xNtcBt9Ksras5jDt3oVghPDB6V2b2k7GCdPczEA6GUFrj2FEa9m8cw==', '20', '2Yv5WoXXhU/PQ2tG3Oz7yRSMc7nTqFTT', 'XjhINSeK/kyJ9sPcveTCZA==', '183*****002', '1be996835e29be58cd094b659f0f0d53', '0', '10', '朱', '先生', 'ut50f1f875642a296d7db618feeb53b90b', '20');
INSERT INTO `user` VALUES ('13', '2019-11-05 09:08:14', '10', '2019-11-19 10:18:47', '武汉市', '1', 'UOOW13UOU', null, null, null, '10', 'RJEM0n8cqQ83HnAohKwVbI+Wyyei5gvk', null, '139*****312', null, '0', '30', null, null, 'ut6db9a42dc2abff2f54d8479130770608', '10');
INSERT INTO `user` VALUES ('14', '2019-11-05 10:05:05', '10', '2019-11-19 10:18:47', '武汉市', '1', 'URW814X5W', null, null, '2OVtEWZP6gTlJgTzZA5p1mXzNhqu4GA09f+3ANJdme4ooWpq7Wz3+A==', '20', 'yAhUdNno5FCEd7A0bxHp1s15KF4kfNDz', 'uAt6KPMuGms=', '183*****595', '6332cade2e4ba6283ad388c2dfb5deb5', '0', '20', '王', '女士', 'ute7225763b2e54eba76099c990cda0c9f', '20');
INSERT INTO `user` VALUES ('15', '2019-11-05 14:12:02', '10', '2019-12-23 15:30:58', '武汉市', '1', 'UKBT15X1E', null, null, 'riDUgIXJFO4CsgFvPnXFs8Dy3uyiXV3ld2/QvUQy8Kb4G+ta92wVrQ==', '20', 'bmUObz8rgDO+foX9h9GyDtVcuWVW2tY9', 'leTV2bT8zZdAcVdVHZWaqQ==', '186*****156', '8f545438c0cdfec2e1e2fb30e60b8168', '0', '20', '殷', '女士', 'ut1fdcdbeac808885b6b87f4ab912fc449', '20');
INSERT INTO `user` VALUES ('16', '2019-11-18 10:11:54', '10', '2019-12-06 22:25:17', '武汉市', '1', 'UXJV16SVZ', null, null, 'rbsyoj+rxZdV14EX4rFcTL1BLt/zXIJ+gzfsyJ3AUC8BaU9dOnzzZg==', '20', 'Z0qaNTLL9r0g/RVAyfrU6GbwAhFUtsQP', 'dX1d2XI685t3ZYFYZsRdkQ==', 'Fiery', '60eb1f32c32aefdb31bf303bf48578a7', '0', '10', '马', '先生', 'ut5c34632b802bb0fd73e166790db5154c', '20');
INSERT INTO `user` VALUES ('17', '2019-11-18 11:05:34', '10', '2019-12-08 10:55:25', '武汉市', '1', 'U2K7179MQ', null, null, 'VxbZcOJagpo2m9SdxVz7fAJQjBmQkcOY0E9/vIqqiOhGy7FL98h/CQ==', '10', 'oJKqwLb9+PREKOUQKYczf3yOU2DFHPN4', 'zsw7PZqrC4cbY7hZ3pypBA==', '173*****040', '80828eca4a1c8d691cdd0ec6c3e8cfd5', '0', '20', '李', '女士', 'ut36979b876a2db55cffbc7165b977d694', '10');
INSERT INTO `user` VALUES ('18', '2019-11-18 11:06:17', '10', '2019-12-02 10:46:04', '武汉市', '1', 'UBBF18NFE', null, null, '1Kk1Lk+qWl/IGncQAIcGTb6D2I/NO8pbaxycN35DrylOjmoF+DDU0A==', '10', 'djDF6xutfXna3fwqSCttofUXgyLZgmPX', 'CGCFTz5CnSEzj19hbuW7nA==', '159*****369', '521e614bb491a95f979c16f98e1e3c7c', '0', '10', '虞', '先生', 'ute8dfe20543512b4e11f5bfca46e04d20', '20');
INSERT INTO `user` VALUES ('19', '2019-11-18 11:06:28', '10', '2019-12-06 22:10:36', '武汉市', '1', 'UNXE190FA', null, null, 'tcbYi/O295SACQs2YgcIdPDfZiK4v2uLshl0RS0PrXh+F7HNZ7k7ig==', '10', 'LoPWhkBjBgPJV68VhjXbAgvVYScgL7tl', '1Fs810bu/YA=', '152*****130', '4f6c68db412e2e146f6829623f3c8968', '0', '20', '王', '女士', 'ut5491b662717d863d8a2508616b8d9ce9', '10');
INSERT INTO `user` VALUES ('20', '2019-11-18 11:07:45', '10', '2019-11-19 10:18:48', '武汉市', '1', 'UZZL20EMR', null, null, null, '10', 'NETSNxvRABViPHYRs8OJKhqIeHnXKGOy', null, '185*****320', null, '0', '30', null, null, 'ute73626ed8c8bec9850bdf3a97203bff9', '10');
INSERT INTO `user` VALUES ('21', '2019-11-18 11:08:46', '10', '2019-12-05 16:16:21', '武汉市', '1', 'U5B121OA4', null, null, 'Ccz7s+okPPHe6IP4Q1bRcQXW7jpHHxoteulUuBSgOF7r0YHSifcpfA==', '10', 'X5GHqYLhHIcFucCte+qV9sQw1iyKzrGv', 'sQXn08pDEn8=', '157*****439', 'a166be1c7eb1d2cb0463607d4cfc0b53', '0', '20', '张', '女士', 'utfa29e6a809b79197df8f82f0a6aae6fd', '10');
INSERT INTO `user` VALUES ('22', '2019-11-18 11:08:49', '10', '2019-11-19 10:18:48', '武汉市', '1', 'UDK022PQL', null, null, null, '10', 'hgfRueZc47VeudZscXKvM9YvzTs8XCXK', null, '136*****200', null, '0', '30', null, null, 'utdcd756b8ef357a79c941c04db4b906ad', '20');
INSERT INTO `user` VALUES ('23', '2019-11-18 11:08:54', '10', '2019-12-01 22:56:04', '武汉市', '1', 'UJN923BDE', null, null, null, '10', 'yAhUdNno5FD3+GSb/jtqprrx9x6HE5dL', null, '183*****606', null, '0', '30', null, null, 'utdbb2a419369aa180a03df681cfc19ac0', '10');
INSERT INTO `user` VALUES ('24', '2019-11-18 11:09:10', '10', '2019-12-03 10:16:45', '武汉市', '1', 'UBHT24FMA', null, null, 'vAgZb90ULikV3xamr1dGkHn/isYECDfZ+r0xL116ASEHiwWMVE3Sjw==', '10', '2Vvi14I2yB/KoXxoUyEy5Mcep3bZRA+Y', 'fY2E8WrdryCIZTZ6921Agw==', '155*****358', '5ade1c1e5a0dadabf0e3d2e2c179cee7', '0', '20', '王', '女士', 'ut9da0e72f030d6fad7e91ce42114d1c38', '20');
INSERT INTO `user` VALUES ('25', '2019-11-18 17:36:15', '10', '2019-11-19 14:37:02', '武汉市', '1', 'U4HL2595K', null, null, 'VxbZcOJagppNi4ysliDmbtMyfNO9QU03eGJrqQLsOg8W5/yxRt7/6g==', '10', '5Rg6wFWRHpzixvY9Xra/XBmoZdIEc4fl', '8niu9pUxEwhAuqt02DzHpQ==', '173*****860', 'fd8ff497f555e767347093c299facd88', '0', '10', '严', '先生', 'utc9f1f58ff0a447c36e411c49f371ad0c', '10');
INSERT INTO `user` VALUES ('26', '2019-11-18 18:19:38', '10', '2019-12-08 10:50:57', '武汉市', '1', 'UELQ26F6W', null, null, '3B+5xRRBGyWzgQqKPT88b49hbnX6A3Og+L0zxQIfyUsMtE8TD7KuMA==', '10', 'zpd2N9wzX3lCJOsLoeafZcTCIsSVVkwo', '+5d/dMWzOLs=', '130*****172 ', 'ca232edf94521ead2ed658ab45a3dc06', '0', '10', '李', '先生', 'utf586deb19fcb0184ac8884de2dfd3eb1', '10');
INSERT INTO `user` VALUES ('27', '2019-11-20 11:00:58', '10', '2019-11-20 11:03:04', '武汉市', '1', 'US1D27OVP', null, null, null, '20', 'HHDM7gMpzdM3dom2Gf8ShlCJI0muy+NF', null, 'HHD**************************+NF', null, '0', '30', null, null, 'utf6300b269a4570ff96b807ab22af4948', '20');
INSERT INTO `user` VALUES ('28', '2019-11-20 11:14:42', '10', '2019-11-20 11:17:09', '长沙市', '2', 'U6WE28N1A', null, null, null, '10', '5lqossdfwEkX1FxAfEYPxJDhk6rXkbDz', null, '5lq**************************bDz', null, '0', '30', null, null, 'ut453e173b433e95251809147aa7398fd4', '20');
INSERT INTO `user` VALUES ('29', '2019-11-20 14:31:10', '10', '2019-11-20 14:31:25', '武汉市', '1', 'U5OM29P9S', null, null, null, '10', 'CCo0FdQZz9abOM/SWHp6+3DPqI5CTIOq', null, 'CCo**************************IOq', null, '0', '30', null, null, 'ut0225a9a43b5057ed13f6ddedcb28636d', '10');
INSERT INTO `user` VALUES ('30', '2019-11-20 17:26:28', '10', '2019-12-02 12:57:05', '武汉市', '1', 'USDF30DZD', null, null, null, '10', 'Bmz3OadTp7Ju9pZx/aebFpD9Jrt/8KSs', null, 'Bmz**************************KSs', null, '0', '30', null, null, 'ut2a4dc2fb093db0f57c59bcccb0af823f', '20');
INSERT INTO `user` VALUES ('31', '2019-11-21 11:45:52', '99', '2019-11-28 14:29:22', '武汉市', '1', 'UD4K31WXU', null, null, null, '20', '8GoaFisoi+9n2FCUGjGhvyWrwiYSqg+O', null, '8Go**************************g+O', null, '0', '30', null, null, 'ut4f852b096fa4f4b6bb33398edaf0df33', '10');
INSERT INTO `user` VALUES ('32', '2019-11-21 14:37:09', '10', '2019-12-04 16:52:45', '武汉市', '1', 'UOWF32WMT', null, null, 'xNtcBt9Ksras5jDt3oVghLn4kQXEC0vEDAfrv2K0+SY3XyAeRApS9A==', '20', '2Yv5WoXXhU/PQ2tG3Oz7yXKtgT5UYjED', '9G6+uyXKOP4=', '王武', '1be996835e29be58cd094b659f0f0d53', '0', '10', '王', '先生', 'ute5e0280715fd0e88fa3672bee1f43ba0', '10');
INSERT INTO `user` VALUES ('33', '2019-11-21 16:48:04', '10', '2019-11-28 10:31:13', '武汉市', '1', 'UF3Q33IIZ', null, null, 'xNtcBt9Ksras5jDt3oVghELa2CwH2S85IyaDzVj9MMYIhhBTXIWR6w==', '20', '2Yv5WoXXhU/PQ2tG3Oz7yZ23h8VFVdos', 'k36etHpcP7vQXy4bXlE3og==', '陈飞宇', '1be996835e29be58cd094b659f0f0d53', '0', '10', '成', '先生', 'ut1b1ffb5c79d880e02ddddd2baacf621e', '10');
INSERT INTO `user` VALUES ('34', '2019-11-22 18:49:10', '10', '2019-11-22 18:49:58', '武汉市', '1', 'UDFQ34MO1', null, null, null, '20', 'f03k0wtyNAxN8jR+Mx+HKC5wH8Lhr6SQ', null, 'f03**************************6SQ', null, '0', '30', null, null, 'utabb1efe158abf7784a7f6f5472038f46', '20');
INSERT INTO `user` VALUES ('35', '2019-11-23 15:40:57', '10', '2019-11-23 15:41:02', '武汉市', '1', 'UK593580Q', null, null, null, '10', 'oxq94dLyf4NNJf1MBGls4LQegYjOlGYY', null, 'oxq**************************GYY', null, '0', '30', null, null, 'utbbc704b9a7c6bcb546a0f0226e528fa2', '20');
INSERT INTO `user` VALUES ('36', '2019-11-26 10:19:46', '10', '2019-11-26 10:20:02', '武汉市', '1', 'U7TF361LO', null, null, null, '10', '3zHnaXXGBRQvIKbC3MkDxXmE49IxCOJ9', null, '3zH**************************OJ9', null, '0', '30', null, null, 'ut99134d4d90c01b3a737b493f4cbe8eb3', '10');
INSERT INTO `user` VALUES ('37', '2019-11-26 21:10:57', '10', '2019-11-26 21:10:57', null, null, 'UA7U374W6', null, null, null, '10', 'hgfRueZc47Unc5JNbNXc0qPBGfj+9Z2+', null, 'hgf**************************Z2+', null, '0', '30', null, null, 'ut3cd3abab832f1385c714c6cc5b99fe8d', '0');
INSERT INTO `user` VALUES ('38', '2019-11-26 22:50:55', '10', '2019-12-18 08:59:48', '武汉市', '1', 'UWOS38A7A', null, null, null, '20', 'cOvIiDIYpQyoaimO1mEj1iGisL7p9slf', null, 'cOv**************************slf', null, '0', '30', null, null, 'ut0a9a8c45fca6e5964702bd6ecb7d265b', '20');
INSERT INTO `user` VALUES ('39', '2019-11-27 22:37:37', '10', '2019-12-20 19:29:23', '武汉市', '1', 'UWD439CZF', null, null, null, '20', 'W/3gEkuZb52qQtUMo0+J3ZCs8Kv5HKh/', null, 'W/3**************************Kh/', null, '0', '30', null, null, 'ut15b145bc547ed7422142a27d6635db31', '20');
INSERT INTO `user` VALUES ('40', '2019-11-28 16:38:29', '10', '2019-12-03 10:05:31', '武汉市', '1', 'UOWV40U61', null, null, 'O7OrRTgL7xdiz9xbF2SuFr7G2Exted6wBh0wM1FSIyG45+QNOAWZSw==', '10', '8vEYoDszfzJAaJq7wJ4puykS1UdgHqcJ', 'XW0HaMLeum8=', '8vE**************************qcJ', 'c75002720dda25904f66668df3bc8f6f', '0', '20', '蒋', '女士', 'ut6c2aef3a0d769f5637cdc85f55117973', '10');
INSERT INTO `user` VALUES ('41', '2019-11-29 14:40:10', '10', '2019-11-29 14:43:47', '武汉市', '1', 'URJ841BWS', null, null, null, '20', 'Z0qaNTLL9r31Gjp9ZXAIIlcfzkKk3GvS', null, 'Z0q**************************GvS', null, '0', '30', null, null, 'ut4cb3b52681f4363ff2a7edbe5d86e9f3', '10');
INSERT INTO `user` VALUES ('42', '2019-11-30 10:45:37', '10', '2019-11-30 10:45:48', '武汉市', '1', 'UWQU426HQ', null, null, null, '10', 'Db7mtPgMEiQHZ2vsU54I4nXiB8P4eW/t', null, 'Db7**************************W/t', null, '0', '30', null, null, 'ut47e71726852e3e234557c912da628d10', '10');
INSERT INTO `user` VALUES ('43', '2019-11-30 12:20:02', '10', '2019-11-30 12:22:24', '武汉市', '1', 'UWPA43FCT', null, null, null, '20', 'emxsPv0ajmu6z2AJ/S1zBFKmbMQg+3Hn', null, 'emx**************************3Hn', null, '0', '30', null, null, 'utbff5cdf962994aa254eb0e031a08a9e3', '10');
INSERT INTO `user` VALUES ('44', '2019-12-01 11:38:34', '10', '2019-12-23 10:47:40', '武汉市', '1', 'UFWT44ESC', null, null, '2OVtEWZP6gRyrCwP4mF4NAUAPH1ZueQWyT46322E4znUvSuViUrEXA==', '20', 'P+t2OEZbN+30Ed14vQ/baPgHcSNKjWbH', 'i7w9IMstL3p03iUdAD5YGQ==', 'P+t**************************WbH', '4d6d316cd06bbd6d230c129badfa05d3', '0', '10', '孙', '先生', 'utee5c1ed2316fe33fda4e0bc848f17f04', '20');
INSERT INTO `user` VALUES ('45', '2019-12-01 19:04:58', '10', '2019-12-01 19:05:08', '武汉市', '1', 'UGW545NUJ', null, null, null, '10', '4XsIMFQI+e9MKVX/xl2VbqJQP3Eryng6', null, '4Xs**************************ng6', null, '0', '30', null, null, 'ut829abb32dc72cc43209a45dad76e9c48', '10');
INSERT INTO `user` VALUES ('46', '2019-12-02 11:47:43', '10', '2019-12-09 17:12:50', '武汉市', '1', 'UVU646WHE', null, null, 'm/YodFfJvO2mFdLPSER/a+KP95vEegp40ZLhGLXXYJHjZTTL8DdIvg==', '10', 'SyP0TN7L6yyKn7kDXNVhoXBa464h2hZM', 'Bq+TXZ32ML6OeselHdL/Mg==', '182*****060', '5bb4c490865efd7386e16edc150a0546', '0', '10', '喻发刚', '先生', 'utbf14ce3fe714c5ccdf6b97e32f0470c0', '10');
INSERT INTO `user` VALUES ('47', '2019-12-02 11:52:56', '10', '2019-12-02 11:53:15', '武汉市', '1', 'U7PZ47RA9', null, null, null, '10', 'Fl0xITl2q2Hk4t42nxb39m1Mfnx83uCZ', null, '137*****666', null, '0', '30', null, null, 'ut2dd1a93b8af731d20993574332aabd8b', '20');
INSERT INTO `user` VALUES ('48', '2019-12-02 14:17:38', '10', '2019-12-03 11:34:32', '武汉市', '1', 'UUZG48DHM', null, null, 'xNtcBt9Ksras5jDt3oVghB16jdqZC1FGxgiCsFgRQFl+h2MEEfYP/Q==', '20', 'Le3Ff2n/LRq//y5KKUbn+lh6mFgFGBR5', 'EolXefoChog=', '177*****615', '1be996835e29be58cd094b659f0f0d53', '0', '10', '测试', '先生', 'utf02c82bacc7325596e5f7380504737cc', '10');
INSERT INTO `user` VALUES ('49', '2019-12-02 15:02:39', '10', '2019-12-17 16:35:51', '武汉市', '1', 'UI4749BR9', null, null, 'BODHFRIfsjPe/AopUVa6f74gyBInFfJINjuXnJb5uxRRi99GBSUPrQ==', '10', 'gmyAwHp4hkR/njCYWPovMA4EeT6jctYL', 'H0G2AA4vX+X3I8fui8Ie3A==', '139*****832', '0db870a7e0d7d321e079e0a9b995d248', '0', '10', '任', '先生', 'ut336c911a2d0c215bac79a2a5573d16e4', '10');
INSERT INTO `user` VALUES ('50', '2019-12-02 22:08:15', '10', '2019-12-02 22:10:21', '武汉市', '1', 'UKVU50JND', null, null, 'VxbZcOJagpoSpKj37zPQFT+/odOeqisjBmm327O+4VYprQr3FViYnA==', '10', 'k0MfdPpcnhNePYe5CaoS6Z0IXGf/lVCp', 'pbZZEftndm0=', '180*****569', 'b19c8cbd16084718370cc5e7d81af264', '0', '10', '吴', '先生', 'ut88e1afe60eadfba1ce9efbc9f9a590d6', '10');
INSERT INTO `user` VALUES ('51', '2019-12-03 13:30:27', '10', '2019-12-03 13:30:27', '武汉市', '1', 'U2XV51WIZ', null, null, null, '10', 'HsIvhqTqNE4gvVnRuuHxcJanbwXoCcNR', null, '134*****089', null, '0', '30', null, null, 'ut343c07a7de347085249968b512cd903d', '0');
INSERT INTO `user` VALUES ('52', '2019-12-03 19:08:48', '10', '2019-12-03 19:08:56', '武汉市', '1', 'UHIH52DZP', null, null, null, '10', 'NiZmK1DJdIW8AXFMJbBmBRN6RyfH/3vh', null, '158*****159', null, '0', '30', null, null, 'ut2bb3b9107b784380434fb1412654c4f8', '0');
INSERT INTO `user` VALUES ('53', '2019-12-07 19:11:03', '10', '2019-12-07 19:39:14', '武汉市', '1', 'UOUM53P80', null, null, 'DlGfLlu1nEElzNZdZuH6cwtn9mGGNXIe/ni53d96LCspv/KWWXElXA==', '20', 'VWkWsbJGZNn8131YMZIHf7xK+Cswork3', 'd8aFLJZqdcXRCt2g2iSerw==', '181*****153', '299c388b9c973338af445e389b1b0fdd', '0', '10', '周', '先生', 'ut3568393972331a49b7f66848f6600f8c', '10');
INSERT INTO `user` VALUES ('54', '2019-12-07 19:22:54', '10', '2019-12-07 19:22:54', '武汉市', null, 'UMSI543W3', null, null, null, '10', 'M7zwS8tLXtLXAUlv3gX9r0gk06yzyICz', null, '153*****838', null, '0', '30', null, null, 'ut97c38b058ddc4de5cf66d96c2130f517', '0');
INSERT INTO `user` VALUES ('55', '2019-12-07 19:53:22', '10', '2019-12-07 19:53:22', '武汉市', null, 'UDBA55WQ5', null, null, null, '10', 'EagpI8rdIyFSbbQ1clNdARWYOppEm6d6', null, '138*****185', null, '0', '30', null, null, 'ut29dd017822a6a9c73c2d0ca2645da0c5', '0');
INSERT INTO `user` VALUES ('56', '2019-12-08 01:41:27', '10', '2019-12-08 01:41:27', '武汉市', null, 'US6F56F1J', null, null, null, '10', 'iKHE2jUah4Hxk3ei1qbnE5we0omn6bk6', null, '133*****338', null, '0', '30', null, null, 'ut2eaba8317eea64af8b6ba549dad37beb', '0');
INSERT INTO `user` VALUES ('57', '2019-12-08 13:45:27', '10', '2019-12-09 09:43:48', '武汉市', '1', 'UAHK5758W', null, null, null, '20', '5mZ2NJOlK8un/bV/N/KP64R+M51xJyu3', null, '180*****201', null, '0', '30', null, null, 'ut93d4f30eb8d870c7bdd385cb243b18a3', '10');
INSERT INTO `user` VALUES ('58', '2019-12-09 20:24:24', '10', '2019-12-09 20:24:25', '武汉市', '1', 'UH54588SA', null, null, null, '10', 'iENT6drJm/mryn7qoz1RRvqQBJ4DkfDW', null, '176*****343', null, '0', '30', null, null, 'ut27e50e6193cb5cd6923c4d273c082651', '0');
INSERT INTO `user` VALUES ('59', '2019-12-10 15:07:16', '10', '2019-12-10 15:08:07', '武汉市', '1', 'UMW7597GB', null, null, null, '20', '4fh3xZQ0wtuHJ7GCuG1v5Au8Y1Tr1+i2', null, '183*****576', null, '0', '30', null, null, 'ut927a8729a1774f3fd87ed189abb71612', '10');
INSERT INTO `user` VALUES ('60', '2019-12-12 12:37:51', '10', '2019-12-12 12:37:51', '武汉市', '1', 'UZLZ60CZH', null, null, null, '10', 'NiZmK1DJdIWTa5sm4z/PHsDlWNxuK43t', null, '158*****993', null, '0', '30', null, null, 'ut20254e940e4350d7d3a1310f424f010a', '0');
INSERT INTO `user` VALUES ('61', '2019-12-13 22:06:52', '10', '2019-12-13 22:07:52', '武汉市', '1', 'U0BL61IBW', null, null, null, '20', 'pZT5GwX3+jWNUOCeDnAU0qSYJnczcMKP', null, '187*****758', null, '0', '30', null, null, 'ut41e12b0e4be3867a1169c2806ba23172', '10');
INSERT INTO `user` VALUES ('62', '2019-12-15 19:15:09', '10', '2019-12-15 19:15:28', '武汉市', '1', 'UBXH62TKK', null, null, null, '10', 'aCX7c8P23vaA4kZBqmd6bnRqbPF8PVyK', null, '133*****319', null, '0', '30', null, null, 'ut14267b45329b10874871f4022618898e', '0');
INSERT INTO `user` VALUES ('63', '2019-12-17 10:48:48', '10', '2019-12-18 10:03:31', '武汉市', '1', 'UFUV63PTV', null, null, null, '20', 'oYqObThxc2KX94vgA7u4Ce/+odwu/vUk', null, '小号', null, '0', '30', null, null, 'ut41373aff0cec5d5046b10fcf06ba9014', '10');
INSERT INTO `user` VALUES ('64', '2019-12-17 10:48:49', '10', '2019-12-24 11:20:44', '武汉市', '1', 'UVXU644BM', null, null, 'DlGfLlu1nEElzNZdZuH6c1FzEJZtqxVPc09wMfHKMqvzTKuWnw2f3g==', '10', 'EagpI8rdIyHV9KyicvK1oOyu76yzOZX3', 'MDM+hJwm3wHjXtnErhI7zA==', '138*****132', '863666c5cf3e2812d9c16dae949039cd', '0', '10', '周', '先生', 'ut06d41ec86d4ccec6800894d8954c4ebf', '10');
INSERT INTO `user` VALUES ('65', '2019-12-17 11:43:16', '10', '2019-12-17 11:43:16', '武汉市', null, 'U4CH65XIR', null, null, null, '10', '+EpyKeJj3qBJBBsSsrmn/kXKB0rRnza0', null, '139*****525', null, '0', '30', null, null, 'ut1594d34415204484812bcd82f70e1d1f', '0');
INSERT INTO `user` VALUES ('66', '2019-12-17 13:07:42', '10', '2019-12-17 13:07:42', '武汉市', null, 'UL9S66JOG', null, null, null, '10', '1QzINez5LpeEXkmBGhHekq6RKadbz2yN', null, '156*****023', null, '0', '30', null, null, 'ut19ffe8689adcc1bd452b3d1d1254a884', '0');
INSERT INTO `user` VALUES ('67', '2019-12-18 11:00:35', '10', '2019-12-18 11:00:35', '武汉市', null, 'U4LN679AH', null, null, null, '10', 'AP6jJa2yEb0wTvResP7cb1ky3YmrU2ZV', null, '187*****517', null, '0', '30', null, null, 'ut525f607d956400a3d56d1851ff03f65f', '0');
INSERT INTO `user` VALUES ('68', '2019-12-18 11:01:32', '10', '2019-12-18 11:01:32', '武汉市', null, 'U57B687OF', null, null, null, '10', '2Yv5WoXXhU/PQ2tG3Oz7ycAYyF8Ej7zN', null, '183*****005', null, '0', '30', null, null, 'ut024eb8b9a0b4ee2e34a766bb0de305ad', '0');
INSERT INTO `user` VALUES ('69', '2019-12-18 21:36:59', '10', '2019-12-18 21:48:31', '武汉市', '1', 'UX4M69N22', null, null, null, '20', 'Lpfio12a+E1drO94jO6YumtNnHBubtCh', null, '181*****188', null, '0', '30', null, null, 'ute34fd3f3025cb50a25e35c7c3ce38a0f', '10');
INSERT INTO `user` VALUES ('70', '2019-12-19 14:00:01', '10', '2019-12-19 14:00:01', '武汉市', null, 'UWC570D3G', null, null, null, '10', '+EpyKeJj3qCIiVH829xd53QVz0/M56ip', null, '139*****304', null, '0', '30', null, null, 'utd8a32e57b21f1f6041f9e2e0f7569060', '0');
INSERT INTO `user` VALUES ('71', '2019-12-19 14:07:36', '10', '2019-12-19 16:39:34', '武汉市', '1', 'UBWX714B6', null, null, '4LpjKlL/ZXZbLWBYRh3odF3+AYARg25hsvi1MXIoAiSvwZ0op83HSA==', '20', 'djDF6xutfXnssvzTWh5EfIaVjBGB+5FP', 'vG/27h/ykLQpF/2SPh9vGg==', '159*****130', '018496c2b5de217a91969a30b083664d', '0', '20', '阮', '女士', 'utc24e87c552ef0d2db766c4012dedd76b', '20');
INSERT INTO `user` VALUES ('72', '2019-12-19 15:54:38', '10', '2019-12-19 15:54:38', '武汉市', null, 'UJ7972EHF', null, null, null, '10', 'Ey03ILNDJkwRkNhsY/aR2Tcb0anKQgiQ', null, '153*****306', null, '0', '30', null, null, 'ut259ae4630df49fa3c5a36ef591579d55', '0');
INSERT INTO `user` VALUES ('73', '2019-12-20 12:58:30', '10', '2019-12-20 12:58:30', null, null, 'U9000012A', null, null, null, '10', 'gyVE6tS9pq9+aWMypZ/+Imui1CmbRUap', null, '180*****480', null, '0', '30', null, null, 'ut2bffd1fa71031fc5e99117b6a51a536d', '0');
INSERT INTO `user` VALUES ('74', '2019-12-20 12:58:30', '10', '2019-12-20 12:58:30', null, null, 'U8000012B', null, null, null, '10', 'gyVE6tS9pq9+aWMypZ/+Imui1CmbRUap', null, '180*****480', null, '0', '30', null, null, 'ut8b24058a5ea1fa4a688637e1eda532f7', '0');
INSERT INTO `user` VALUES ('75', '2019-12-20 19:16:13', '10', '2019-12-20 19:16:13', null, null, 'U8000012B', null, null, null, '10', 'cOvIiDIYpQytQd9C0PjkiXshL4ZElJfL', null, '137*****162', null, '0', '30', null, null, 'utfc42d99439963c1a09cf56073e9addab', '0');
INSERT INTO `user` VALUES ('76', '2019-12-20 20:50:44', '10', '2019-12-20 20:51:17', '武汉市', '1', 'UG000012C', null, null, null, '10', 'a7EzzJ4y5RtmmLAo/QSTCuPcjjbu7pgk', null, '158*****670', null, '0', '30', null, null, 'ut04b7e4398d262f9c08a17e194f351a5f', '20');
INSERT INTO `user` VALUES ('77', '2019-12-21 22:05:24', '10', '2019-12-21 22:05:24', null, null, 'UF000012E', null, null, null, '10', '5w36v7lJ6EAHtXj/EF9mm+Lt+8KSAbhW', null, '139*****559', null, '0', '30', null, null, 'utd611ce1057e5bfa4971dc179c6ce4b1c', '0');