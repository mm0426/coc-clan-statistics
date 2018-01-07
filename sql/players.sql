CREATE TABLE `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(12) NOT NULL,
  `name` varchar(12) NOT NULL,
  `townHallLevel` int(11) NOT NULL DEFAULT '0',
  `clan_name` varchar(15) DEFAULT NULL,
  `expLevel` int(11) DEFAULT '0',
  `trophies` int(11) DEFAULT '0',
  `bestTrophies` int(11) DEFAULT '0',
  `warStars` int(11) DEFAULT '0',
  `builderHallLevel` int(11) DEFAULT '0',
  `versusTrophies` int(11) DEFAULT '0',
  `bestVersusTrophies` int(11) DEFAULT '0',
  `versusBattleWins` int(11) DEFAULT '0',
  `role` varchar(9) DEFAULT 'member',
  `donations` int(11) DEFAULT '0',
  `donationsReceived` int(11) DEFAULT '0',
  `clan_tag` varchar(12) DEFAULT NULL,
  `league` varchar(100) DEFAULT NULL,
  `versusBattleWinCount` int(11) DEFAULT '0',
  `war_weight_offence` int(11) DEFAULT '0',
  `war_weight_defence` int(11) DEFAULT '0',
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_UNIQUE` (`tag`),
  KEY `clan_tag` (`clan_tag`),
  CONSTRAINT `clan_tag` FOREIGN KEY (`clan_tag`) REFERENCES `clans` (`tag`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1904 DEFAULT CHARSET=latin1;
