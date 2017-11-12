CREATE TABLE `user_query` (
  `time` bigint(20) unsigned NOT NULL,
  `user` varchar(64) NOT NULL,
  `client` varchar(64) DEFAULT NULL,
  `ip` varchar(64) NOT NULL,
  `helo` varchar(128) DEFAULT NULL,
  `hostname` varchar(128) DEFAULT NULL,
  `sender` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `qualifier` enum('PASS','FAIL','SOFTFAIL','NEUTRAL') DEFAULT NULL,
  `recipient` varchar(128) CHARACTER SET utf8 NOT NULL,
  `tokenSet` text NOT NULL,
  `complainKey` varchar(128) NOT NULL,
  `whiteKey` varchar(128) DEFAULT NULL,
  `blockKey` varchar(128) DEFAULT NULL,
  `result` enum('WHITE','ACCEPT','GREYLIST','LISTED','HOLD','INEXISTENT','FLAG','TRAP','REJECT','FAIL','NXDOMAIN','INVALID','BLOCK') NOT NULL,
  `mailFrom` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `replyto` varchar(128) DEFAULT NULL,
  `subject` text CHARACTER SET utf8mb4,
  `messageID` varchar(512) CHARACTER SET utf8mb4 DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `unsubscribe` varchar(128) DEFAULT NULL,
  `linkMap` text,
  `malware` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `body` blob,
  `adminAdvised` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `senderAdvised` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recipientAdvised` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`time`) USING BTREE,
  KEY `id_user_query_messageID` (`messageID`(250)) USING BTREE,
  KEY `id_user_query_user` (`user`) USING BTREE,
  KEY `id_user_query_result` (`result`) USING BTREE,
  KEY `id_user_query_adminAdvised` (`adminAdvised`) USING BTREE,
  KEY `id_user_query_senderAdvised` (`senderAdvised`) USING BTREE,
  KEY `id_user_query_recipientAdvised` (`recipientAdvised`) USING BTREE,
  KEY `id_user_query_ip` (`ip`) USING BTREE,
  KEY `id_user_query_sender` (`sender`) USING BTREE,
  KEY `id_user_query_mailFrom` (`mailFrom`) USING BTREE,
  KEY `id_user_query_replyto` (`replyto`) USING BTREE,
  KEY `id_user_query_recipient` (`recipient`) USING BTREE,
  KEY `id_user_query_complainKey` (`complainKey`) USING BTREE,
  KEY `id_user_query_whiteKey` (`whiteKey`) USING BTREE,
  KEY `id_user_query_blockKey` (`blockKey`) USING BTREE,
  KEY `id_user_query_helo` (`helo`) USING BTREE,
  KEY `id_user_query_hostname` (`hostname`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=ascii;
