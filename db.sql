/*
SQLyog Community Edition- MySQL GUI v6.03
Host - 5.0.22-community-nt : Database - traffic_authentication
*********************************************************************
Server version : 5.0.22-community-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `traffic_authentication`;

USE `traffic_authentication`;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `demo_dealer` */

CREATE TABLE `demo_dealer` (
  `shop_owner` varchar(80) default NULL,
  `email` varchar(100) default NULL,
  `issue_date` date default NULL,
  `license_no` varchar(14) default NULL,
  `userid` varchar(50) default NULL,
  `contact` varchar(13) default NULL,
  `password` varchar(20) default NULL,
  `address` varchar(100) default NULL,
  `nearby_rto` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `demo_dealer` */

insert  into `demo_dealer`(`shop_owner`,`email`,`issue_date`,`license_no`,`userid`,`contact`,`password`,`address`,`nearby_rto`) values ('dealer1','arraghuvanshi12@gmail.com','2022-03-03','1234567890123','user5','999999','12345','indore','indore');

/*Table structure for table `demo_rto` */

CREATE TABLE `demo_rto` (
  `username` varchar(40) default NULL,
  `password` varchar(20) default NULL,
  `email` varchar(80) default NULL,
  `contact` varchar(13) default NULL,
  `state` varchar(50) default NULL,
  `pincode` int(7) default NULL,
  `city` varchar(30) default NULL,
  `address` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `demo_rto` */

insert  into `demo_rto`(`username`,`password`,`email`,`contact`,`state`,`pincode`,`city`,`address`) values ('user5','12345','rto@com','1234567','mp',1002,'indore','abcd');

/*Table structure for table `demo_traffic_police` */

CREATE TABLE `demo_traffic_police` (
  `police_id` varchar(20) default NULL,
  `password` varchar(20) default NULL,
  `name` varchar(50) default NULL,
  `dob` date default NULL,
  `zone` varchar(30) default NULL,
  `email` varchar(80) default NULL,
  `contact` varchar(13) default NULL,
  `aadhar_no` varchar(14) default NULL,
  `address` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `demo_traffic_police` */

insert  into `demo_traffic_police`(`police_id`,`password`,`name`,`dob`,`zone`,`email`,`contact`,`aadhar_no`,`address`) values ('user5','12345','police1','2021-02-02','indore','durvakulkarni3@gmail.com','8888888888','123456789','indore');

/*Table structure for table `doc_list` */

CREATE TABLE `doc_list` (
  `userid` varchar(25) default NULL,
  `aadhar_no` varchar(12) default NULL,
  `license_no` varchar(18) default NULL,
  `vaccination_no` varchar(20) default NULL,
  `pan-card_no` varchar(20) default NULL,
  `passport_no` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doc_list` */

insert  into `doc_list`(`userid`,`aadhar_no`,`license_no`,`vaccination_no`,`pan-card_no`,`passport_no`) values ('abcd','123456789012','lic12345',NULL,'pan12345','pass1234');
insert  into `doc_list`(`userid`,`aadhar_no`,`license_no`,`vaccination_no`,`pan-card_no`,`passport_no`) values ('gg59','123456789013',NULL,NULL,NULL,NULL);
insert  into `doc_list`(`userid`,`aadhar_no`,`license_no`,`vaccination_no`,`pan-card_no`,`passport_no`) values ('user5','123456789018','123',NULL,NULL,NULL);

/*Table structure for table `driving_license` */

CREATE TABLE `driving_license` (
  `aadhar_no` varchar(12) default NULL,
  `license_no` varchar(18) default NULL,
  `issue_date` date default NULL,
  `expire_date` date default NULL,
  `drive` varchar(20) default NULL,
  `state` varchar(50) default NULL,
  `name` varchar(50) default NULL,
  `dob` date default NULL,
  `blood` varchar(3) default NULL,
  `s/w/d` varchar(50) default NULL,
  `present_address` varchar(100) default NULL,
  `permanent_address` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `driving_license` */

insert  into `driving_license`(`aadhar_no`,`license_no`,`issue_date`,`expire_date`,`drive`,`state`,`name`,`dob`,`blood`,`s/w/d`,`present_address`,`permanent_address`) values ('123456789012','123','2002-01-01','2022-02-02','two','MP','Durva','2002-05-09','AB+','d','present','permanent');

/*Table structure for table `medical_report` */

CREATE TABLE `medical_report` (
  `userid` varchar(20) default NULL,
  `title1` varchar(30) default NULL,
  `doc1` blob,
  `title2` varchar(30) default NULL,
  `doc2` blob,
  `title3` varchar(30) default NULL,
  `doc3` blob,
  `title4` varchar(30) default NULL,
  `doc4` blob,
  `title5` varchar(30) default NULL,
  `doc5` blob,
  `title6` varchar(30) default NULL,
  `doc6` blob,
  `title7` varchar(30) default NULL,
  `doc7` blob,
  `title8` varchar(30) default NULL,
  `doc8` blob,
  `title9` varchar(30) default NULL,
  `doc9` blob,
  `title10` varchar(30) default NULL,
  `doc10` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `medical_report` */

insert  into `medical_report`(`userid`,`title1`,`doc1`,`title2`,`doc2`,`title3`,`doc3`,`title4`,`doc4`,`title5`,`doc5`,`title6`,`doc6`,`title7`,`doc7`,`title8`,`doc8`,`title9`,`doc9`,`title10`,`doc10`) values ('user5','abcd','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0á\0\0\0á\0\0\0	m\"H\0\0\0ÌPLTEüüü÷÷÷ÿÿÿ5ó!J\0\03:úúú\0\00\0\0.\0\0,\0\0$\0\0\Z\0\0)û\"K\0\0*ô\0:\0\0!\0\0ððò††•=ÙÙÞÆÆÍŽŽœ\0\0&×G\0\0rr‚__tgg{¬¬·ÎÎÔ44SPPh??X@žž©>8z=œAºCë Iô\n@êÂÊæ0UîLgó\05ïÞãéÑØ~~µµ¾  EééìCC^\'\'JÜHLLdM\n9´Cj<©BËEç\06ê³½çˆ˜é˜¥ér†ùY61\0\0@IDATxœíkCÚJ†“Õœ„ ¨xA+Ò*`ï¥=µ­VýÿÿéD@ É&™™ÍBÈû¥6ìNÞ‡™lHv–(D–TÅìZot˜ôzÐ+mF´¥J‹ö€ªb7ÄG¼žCqŠÑW~q9ã‰¢I,ÞBèÔ\Zjåã`T OR©w1|Šˆ\nãSc$w-”O…‘Ø±p>:#­›@\"#¥“)>\Z\"¾A>#º‡a@<\"²ƒi¼©tšf›K¡i²¥ôš¦ŠH¡i¦˜ø	M%ÄMhšG&NBÓ,)â#4M’*.BÓâ!4M‘)BÓ9R\'4M+UBÓþR#4í$BÓÞ¢šv•Ð´o„h„¦]£D!4í©ŠpãÓÓ^0í— ¡i·$aM{%ª\"Üx@9¢l£iŸ\n‚šv©¢òÊpÊ(ALl1íPUå\'L•\r0¸u„¦Ý±(‹Ð´7•ŸÐJ\'4íŒMÛKhÚ£¶•Ð´+Vm\'¡iOÌÚFBÓŽ¸U~BkûMûÑ Špó%4íF‹¶‹Ð´=*?¡ÅO¨>jñŽ{Ü„Â:êœùÚVøN…É×ÎùYçÈbr´ ä	wq°¿çûV«ãÒ\"\n·Ój5|oÿà‚‘Pœ×™‚oJH1ùÌ#8õsSŒ„¢÷ê.Tm`BØƒÚ2D‹ñ•#ÔE}gE{=Â··ôöVCÔY\n•‘ðÀÙ‰ø;ÄF‡‘÷hÇ¬¡xµ·³×Evö¢!êo8Œ±vcö¼+4á•§ú&É¢N	ÕãXâ¬µç8hB\'Zç;³õ&ôÐ„žB‹0~y—hÂËx•vÖŠðh_Õžø{“öÖ‰Ðrk±³z ŒÇŽÃákJÈèm+rõ	gü~äXÞçùhÊFö+Eæy„ëÑöWŽÄcÂ{$ËFh_d±á¡?ÑLCz‹,¶¾ÛëF–C7|Ï«×{Ä+D1éÕžãùAÐå»\nf#|)³‹Þå~÷ìNˆÃ/—ƒ«Þ…ÂEt\"&#!Çÿ+áZjË®òVªT©R¥J•*UªT©R%˜\\Ó4Ëµl»ÌŒ®m‡„6eYÁfh\ngÛ¥eœ£Íþ)a©ºv”°ti\\r-þ*U\Z][FÈF†ò,·ô#P«ÿQMãËÜÌÕÁ?*:`˜—qítB%DawZï9jòü ÕUš<ŒÅ	*UL+‹÷”H‹¥€IBj\ZÅÄ¯å{ªæS+ÕMð$	‰ˆâ’0DD¯ÇI”’*5¶CY­·D)Œl#Q4œ|Û9>PÎ\"ÝŠFL,ŠRaIT\nŠ|31±üRYøÅ—i$)Û‘ˆâÜg&ô±½SAÒ^À\r©¢Ï9’¾¨†[%Ds	Qˆ\ZrˆZ^š˜EˆAo™	1§‹ÀLBb|¥½º0«ý³\0³	Ã0Ÿ1#d3d¾\nG]Þ2=Fœ,r²_#r—)¢Hór^‡#²ž/çŠ\\€¼PDqÄ™Ä:ø3[¾ÿÜ`Äøã\n‚?Ì\0°ŸßxÎàL\"8…™ç	0!8‰?³Äw×7Ãû“ÿNî‡7×ï2[Ö~ò¥DD‡§é¦¯‡£CíNþ1\Z^§7>…¤ óFPÄNÊ­¨»án¡pËðNÞ<€>pój=¿É›w\'qºä‰¬Z½|!˜\\§’ÁæW\nßòW²ôd„B/âˆ¿GY€!âèwú8Ô9°ñ,zËíO6ß”ñO¤Gz]6m=û«ŸÀïóCÄû•ô)p`\"ÁgÅïË{RiCLñdÑþ@Ü7¸%´NÅÏ\0¸‚ðò†ˆçÓ{§Î\n\"§×Ïûàûkà\ZEÂ/¤º§¡á8`ˆx¾%§ð«^ŒkD[ðmqä5î0€!â]ÃßåF¤Eˆ¸§a÷P€»ÿ>ôÓ¢(Ó˜ÆDñw4F\0ŽGó÷8Ï¨Ö˜;¨îcÊ8n>¢¾´G#!j6C´ÇÆñø7ã‹´ŒkŽ›Ìí§QN\"ÇÍÑS·À3Ìà	±SRBÜ>ï¦BŽ›»Ï·è4XÇÈöèI~!ÜÛÇ÷Íf¬`Çãfóýã­‹_„L!š4Ç/ÄäöéùÃèácóEFžŸn\'´åOhÃØÄ•\Z/ríö§ÏŸ?jÛ.ýml\nñ„j‹ßÔEÇûE÷0»„B¡Ù…¨»ø.&“ˆO!…Ðd)n+B‰Ì•)¡HI„æ’H2Kéd*‰”ÒM%‘æµ\"”ÊL™’Š”Hh&‰D«¡\\&Ê”V¤TBI¤:­ST|™‹´\"ÌèX´ÈF+Â4]¦Ô\"¥DºÏŠp‹	‹=É‡aE˜ÙµH)Ø,;¡«’þ\r!ÜÁTÅ%¹o‘CJ¥‰’\nÂ\"Ë”nr+7b¨¡{|ùR\n:¡«ãKðZîB…4…(¢ÒŠ7iòpö‹VÊ|Z%ûÀ3Î³½ŽJ²sfÈ´= ºsBd¿”½32fìgõõw×pÝ2vÏ™Upâ•“ÄªŒùá1\",½ò(@Â‚ƒ½Î×âzÁ<ÐÁ±qf_ø˜\r‰Š3ý]nX¢l`±!f_OÚ¢Ö’ávùÉO`.$5h®Û%ØÒˆ&ÀTLµ€PÀÂD5?\Z\\%ÌD, _0ÀabÁæaF	S5PÄwÙyQv9¸‚¸MŒhÉ4ä–¦œ\n	aœQqP×®\\·r€Ù=f×]w¼™,wfWîöF—¼Óùåõ·\0\0\0\0IEND®B`‚','abcd','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0á\0\0\0á\0\0\0	m\"H\0\0\0ÌPLTEüüü÷÷÷ÿÿÿ5ó!J\0\03:úúú\0\00\0\0.\0\0,\0\0$\0\0\Z\0\0)û\"K\0\0*ô\0:\0\0!\0\0ððò††•=ÙÙÞÆÆÍŽŽœ\0\0&×G\0\0rr‚__tgg{¬¬·ÎÎÔ44SPPh??X@žž©>8z=œAºCë Iô\n@êÂÊæ0UîLgó\05ïÞãéÑØ~~µµ¾  EééìCC^\'\'JÜHLLdM\n9´Cj<©BËEç\06ê³½çˆ˜é˜¥ér†ùY61\0\0@IDATxœíkCÚJ†“Õœ„ ¨xA+Ò*`ï¥=µ­VýÿÿéD@ É&™™ÍBÈû¥6ìNÞ‡™lHv–(D–TÅìZot˜ôzÐ+mF´¥J‹ö€ªb7ÄG¼žCqŠÑW~q9ã‰¢I,ÞBèÔ\Zjåã`T OR©w1|Šˆ\nãSc$w-”O…‘Ø±p>:#­›@\"#¥“)>\Z\"¾A>#º‡a@<\"²ƒi¼©tšf›K¡i²¥ôš¦ŠH¡i¦˜ø	M%ÄMhšG&NBÓ,)â#4M’*.BÓâ!4M‘)BÓ9R\'4M+UBÓþR#4í$BÓÞ¢šv•Ð´o„h„¦]£D!4í©ŠpãÓÓ^0í— ¡i·$aM{%ª\"Üx@9¢l£iŸ\n‚šv©¢òÊpÊ(ALl1íPUå\'L•\r0¸u„¦Ý±(‹Ð´7•ŸÐJ\'4íŒMÛKhÚ£¶•Ð´+Vm\'¡iOÌÚFBÓŽ¸U~BkûMûÑ Špó%4íF‹¶‹Ð´=*?¡ÅO¨>jñŽ{Ü„Â:êœùÚVøN…É×ÎùYçÈbr´ ä	wq°¿çûV«ãÒ\"\n·Ój5|oÿà‚‘Pœ×™‚oJH1ùÌ#8õsSŒ„¢÷ê.Tm`BØƒÚ2D‹ñ•#ÔE}gE{=Â··ôöVCÔY\n•‘ðÀÙ‰ø;ÄF‡‘÷hÇ¬¡xµ·³×Evö¢!êo8Œ±vcö¼+4á•§ú&É¢N	ÕãXâ¬µç8hB\'Zç;³õ&ôÐ„žB‹0~y—hÂËx•vÖŠðh_Õžø{“öÖ‰Ðrk±³z ŒÇŽÃákJÈèm+rõ	gü~äXÞçùhÊFö+Eæy„ëÑöWŽÄcÂ{$ËFh_d±á¡?ÑLCz‹,¶¾ÛëF–C7|Ï«×{Ä+D1éÕžãùAÐå»\nf#|)³‹Þå~÷ìNˆÃ/—ƒ«Þ…ÂEt\"&#!Çÿ+áZjË®òVªT©R¥J•*UªT©R%˜\\Ó4Ëµl»ÌŒ®m‡„6eYÁfh\ngÛ¥eœ£Íþ)a©ºv”°ti\\r-þ*U\Z][FÈF†ò,·ô#P«ÿQMãËÜÌÕÁ?*:`˜—qítB%DawZï9jòü ÕUš<ŒÅ	*UL+‹÷”H‹¥€IBj\ZÅÄ¯å{ªæS+ÕMð$	‰ˆâ’0DD¯ÇI”’*5¶CY­·D)Œl#Q4œ|Û9>PÎ\"ÝŠFL,ŠRaIT\nŠ|31±üRYøÅ—i$)Û‘ˆâÜg&ô±½SAÒ^À\r©¢Ï9’¾¨†[%Ds	Qˆ\ZrˆZ^š˜EˆAo™	1§‹ÀLBb|¥½º0«ý³\0³	Ã0Ÿ1#d3d¾\nG]Þ2=Fœ,r²_#r—)¢Hór^‡#²ž/çŠ\\€¼PDqÄ™Ä:ø3[¾ÿÜ`Äøã\n‚?Ì\0°ŸßxÎàL\"8…™ç	0!8‰?³Äw×7Ãû“ÿNî‡7×ï2[Ö~ò¥DD‡§é¦¯‡£CíNþ1\Z^§7>…¤ óFPÄNÊ­¨»án¡pËðNÞ<€>pój=¿É›w\'qºä‰¬Z½|!˜\\§’ÁæW\nßòW²ôd„B/âˆ¿GY€!âèwú8Ô9°ñ,zËíO6ß”ñO¤Gz]6m=û«ŸÀïóCÄû•ô)p`\"ÁgÅïË{RiCLñdÑþ@Ü7¸%´NÅÏ\0¸‚ðò†ˆçÓ{§Î\n\"§×Ïûàûkà\ZEÂ/¤º§¡á8`ˆx¾%§ð«^ŒkD[ðmqä5î0€!â]ÃßåF¤Eˆ¸§a÷P€»ÿ>ôÓ¢(Ó˜ÆDñw4F\0ŽGó÷8Ï¨Ö˜;¨îcÊ8n>¢¾´G#!j6C´ÇÆñø7ã‹´ŒkŽ›Ìí§QN\"ÇÍÑS·À3Ìà	±SRBÜ>ï¦BŽ›»Ï·è4XÇÈöèI~!ÜÛÇ÷Íf¬`Çãfóýã­‹_„L!š4Ç/ÄäöéùÃèácóEFžŸn\'´åOhÃØÄ•\Z/ríö§ÏŸ?jÛ.ýml\nñ„j‹ßÔEÇûE÷0»„B¡Ù…¨»ø.&“ˆO!…Ðd)n+B‰Ì•)¡HI„æ’H2Kéd*‰”ÒM%‘æµ\"”ÊL™’Š”Hh&‰D«¡\\&Ê”V¤TBI¤:­ST|™‹´\"ÌèX´ÈF+Â4]¦Ô\"¥DºÏŠp‹	‹=É‡aE˜ÙµH)Ø,;¡«’þ\r!ÜÁTÅ%¹o‘CJ¥‰’\nÂ\"Ë”nr+7b¨¡{|ùR\n:¡«ãKðZîB…4…(¢ÒŠ7iòpö‹VÊ|Z%ûÀ3Î³½ŽJ²sfÈ´= ºsBd¿”½32fìgõõw×pÝ2vÏ™Upâ•“ÄªŒùá1\",½ò(@Â‚ƒ½Î×âzÁ<ÐÁ±qf_ø˜\r‰Š3ý]nX¢l`±!f_OÚ¢Ö’ávùÉO`.$5h®Û%ØÒˆ&ÀTLµ€PÀÂD5?\Z\\%ÌD, _0ÀabÁæaF	S5PÄwÙyQv9¸‚¸MŒhÉ4ä–¦œ\n	aœQqP×®\\·r€Ù=f×]w¼™,wfWîöF—¼Óùåõ·\0\0\0\0IEND®B`‚','logo','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0ú\0\0\0ú\0\0\0ŽÍj\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0GIDATx^íwTTçº‡Ïÿw­{Öºÿß{’ØQcWìbÁnŒ]±ÅŠb¬1öÞKbÔØ[ŒõØ,¨€\rTÄ\"‚(*(JP`¾¹¿qï nÈžOÞß³ÞÅÚå+{Ï÷í÷›Ùÿ°\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚p\'Ý\'í¹UaÂ	‰\'·ó†VW)k£¹çþÇ÷§\"<>U«^<¯ÔÓ@uc¾å¢¯ålWËéößZ‚{««Õƒ=ÖŒûzË…ÉˆU‘+UÔ¯ÿ‰@GIAz¿%wÒ½×êÐôÙçTt^qI«Ý+N<i8k7Bc_jÕ¼IU×gXN´°ø7qex©ˆ9h\\ïå-*ñ¬±Ø§us‘ÞqIÄtï·îŠAG»ÑcU¨VºW™rÊpÖn„Å¦hÕß#3ó±ÁWÆùÖ7iz_¸ò¤cOêÎ2½ã’u7‹btÏÍ°œífPÄõqÉÏšŸ£uHÝ]u7‹¢º«¸]?>Q¨Ç\'ô©»ë îfaÔ=ÿµ%èS¦1…B]›¢õIÝ]u7£îé19Œàe9ÓÙr®»-á)8Øñ½7dšë\Z\"¸í¢mºO}Ê îŸ»î*9Ì GáPáÓ­éÑÖ¼,[Ú]4r3‘÷¿‹Ìxuw­åd+C#ïâl7ÜLlRw×AÝÍÂ¨»‰yA=q^/ç0êÁc;q®§UYl…06R#­iQvCÝZdl¤P¨{›\rå‹‰Ô;Öì¤·—V2¡îfaÔýÙyƒCï\"¸·^È)^=´„ô+6ÔÍz‡Q1[WU(Ô“Sz9ÁPw³0æî)·½‹€¦êþV«å^ÒqT¾UåÎß+îm2^U¡PëåCÝÍÂ¨{Î3;Ÿ¤÷U×g¨ÛK‘—«ØíêÑÛSÏ/[SnXÓïY³[_¿°%÷0*€ºÛ…º›…Qwe±\\jÐÈ‰8ám9ÕÆr¦“%ÈÇra°\n£Â§aiMUÜ.õèõô´zqÅ6$>ênênFÝÑNü>ƒF®Ó`¿ÞŸ3Pw»Pw³(ª»õMªí]ó\"2¹<ÔåÎ¦ïÔÝ.î¤{ï5aíF×•—µº.ÓM%[NØûÈ¡žës:u·‹;éî»%ü¿‡þçPG…l¸ªÕu¡î6Rn\"ù¶åâE¬raØÞ)wênwÒ=-+71-Ç©HÍÊÕêºXw`É³½Ó’¥’¯¨„£êÞFuk‘º2Þ6Îvµ-Iš\Z„s6Ôí¥z_ŽAÝíâNº®×Ý„ülÛ»+™qÖ—*)H=<¤b¶¨È*bŽ\nŸªÂÆY.ùÙž¢ñ÷2iÛW=œºÛÅt‘ù&>9ëáG…“3l€ÿ¨îŽŸcM¿‡tÅr²¥ÁË‚P×&ë…ƒºÛÅt²ùÚ\r:äTô[wE«ëÝ-yêÁ³YE­2~ÅG^è9‹Š^oð² \nžvênwÒ½ÏZ§ß™éö«ëÞ™±äÙî-¢‘*|š^ÌIÔ³†¦\n‚º»wÒýoßÝ:ÊàÐ»8ÙÚöD¡ó ­76õgPw—CÝÍÂ »Š˜epè½ìˆU©5=ÆšïP wO<kûÃ†vþêîr¨»YuÞ`p¨¸ð²}S) ™½°ÿA•º1WïØ1¨»]¨»YuO8fpè“†Š\\¡wìÔÝ.ÔÝ,º#ý°ûf¹C=9©÷ëÔÝ.ÔÝ,Œº£«\Z}ª¸4ÜjÑ?vênênEu·f?µ„ô7˜äú¸èkÍNÔ{tênênÅèòs ŽíÏ ~ôS1ÅÄ™Î¶\'Ãœœ×5lÚÀÐZ¡PŽèåCÝÍ¢xÝ5Ðbfœz|BÝ]£®ÏT¡£-—†Ùž+ò%k¢¿åòHuk‰zì_ø¯C:‹J\nV7¨›‹Š‹Ö”›z9ÁPw³0Óý¯0~ÃÚ‘È×ë’Ou7‹Ñ|ÆPw³ î%ênÔ½„!Hwþ÷âžÒ½åâÿuìÿFw0P8âá‡¿OB>C¤è²ßägæä½zíh °£„” éNuw‚¸¸8ßÁCâÄëûï“ø4qØ¡ã‹?[,999cGÞþûïú~q¼yófë–ß®‡‡G\\¿Þ¹ã·QQQAçÎý{×nýt!öíÝ‹búŽ)èwøPß^Ý{¼zõJ?$A¹»Ïš°Z3kÏ8ãxÜyœ®U×¸zåJ©}í233_¿~\r³“õ\'[0ÂBÃpöF„í?¹ÆÆÆÞ‰Á†ÅbÉÈÈÈÎÊÂ`ÐŽ?zøÐVá-h§Ì—_3°š’R0–ž<yr/:\Z¨ˆf;6únôÜÙsÐl®Ý*{x |ZZZ^^^nnnzz:Ä­Y­ÚÔI“µ#ÏŸ?×šÒÀGFF&\'\'cûL` Ú\\µr%Jjg… H÷r?ž0œµ—ï¿÷ÎæNX“¾÷óónÚ¬j¥ÊõêxB»Û·—+UºQ½úeK•z÷\0³5t¬TÁcíê5	Õ÷ôlX·Þw}û-˜7¯ú×UjT©ºyÓ&­A8Z¥b¥ysæþ´diÝÚuš6n\\¡LÙcGŽîÜ±£võ\Z(ŒŽ~ùùçÒ_|‰¾ÎŸß²y‹i“§x”-Wö«R¨…/_ºtüè±¶-[á,zGkþÇ4ÕÑ)FˆÖQvvvÏnÝÑ5.ƒö›víñBºvêÌÙýóå#uÿø÷ÝtïÑµ+2ó!ç±‹ŸÞÍšOŸ:m÷Î]Ø½v¥n­ÚÛ·mƒô5ªVÓ¦|X¡òÊå+FøR\"EAƒšîóçÎ›5cŠAtŒ“Ã‡7kÒyË¡ûúøÀÎŠåÊÃò(ƒ‰y@¿þ\r<ëÞºy»!ÁÁ÷À`ÀM IÃFhêÂùó¡—/whÛnâ´+GË¸µkÝfÒ„	ÁAA¨‹kSÂÖâÔÝ,þJ÷î]º`rE\\¾tÿcÇ=kÖ‚ÍÈ°‹¹³oä;w£îV*_áè‘#°<!!ó+6\Z×oÐÂ«ikoo-©(¬{µÊ_ãFQ§FMä-031&oŒ”AƒK/ÁDŽÞ‘JôáÕ¨1²$Bl‡Báü¼|Œºë×ãz {«Þ3Èm´+Ç-“=6&Žÿ±O/ŸÛ·náŽ´³r îfa2»CP¤ÎÈaN<	ÝìÛ¤žav\"ƒGaÌÊ§OžB™˜{÷—£.ì\rE2;Ñ`aÝ1Cc@w?ßa—.^Ä<yâDT		Ad;˜°±{íêUÐtÇ.Zûãða¤=HÍ›7ñZ¿vzD…îüýq+Ð®|ÍêÕHo°á7lØàpg€îN­ªKÔÝ,ºkKÕ;·o#O€‹©©©špcGFÞ‚<»˜×‘¦·oÓ¶]«ÖƒÄ¯UÉÏÏÇÔŽƒÈCúõÖÿ‘¦sœ1m:ZƒX\\ÂTßÁC0œPí``t¡qÌßÈÎQ×0á‡ñØØ²i3Ò}Ü+ >î?XÂ¢üÞ={PCƒ\rÛZGX¤âÎ3|¨/búˆˆ@Xfhgå@ÝÍÂ û³gÏ6oÜ˜ò2Räß˜§áèË—/çÌš…Ü){FFÆ³¤¤™Ó§ãÊCh”AT¿={æLä\'Zƒ¹¹¹HW0`Ð\Zê\"áÙµc\'¦sT\\²p†²<ˆÙýì™3èÝaVÆ\Z\0Ó<Òtô‚Ù]Ó\Zƒ\nÅbccÑÆÏï¿m-œšž:T‹`l\'%&âªp©Ú)9Pw³0èNÜênÔ½„AÝÍ¢¨îXž\"{F‚Ž\\\\?ô\'			÷ïß×w>%HÓ‘Ï óÑv?~ÿ iŒöaV±¤§§#YÏËËÓ÷Myú}§AÝÍÂ ;$kÒ°QÃºõ°à›;k¶~ôOF0@ßù”`ñPÙÃ	º¶Û³[÷Jå+x”-‡ŸÃ†Õå·Í[*”)kø¨õ¯ø¶C‡n»è;%ênÝ7®__ê__¤¦¤¬_»®Y“&8’ðèV‡ÂvHp0VØÀÜ¿|Ù/\',–¡/\\ÀªñàþØÅäŠÅ(ªc9‹’w£î¢ºÿñã…ïa¡a+~YàïÂ×¯íØ¾ëà×¯_cqŒím[·–/]Çµò„XþâÂþ½k7¦d¬_]±· œÂbKaôŽóÖ-¿¡zÇÆ‹/p#:wö,ÖÜ8«­¤1~PŒí6-[~Ó®=6°‹+ÄKÃvvV.¯«^\\9.ûÑÃ‡¸ÝáÎºÔÝ,ºCkóÃØ±×ÃÃ³^e=yòÄ³f­1#GaZ…‚3¦MïÑµÛÍ7kT©º|Ù2LÀ¢{—.uk×ñ6¡êB#lß¦-ŒüÚ£â’…‹*Uð8zDÿ«ÚG§K-ÆÏ½{öŒ>w’ÑßÄnÐ¹sóæÌ­U­úÐAƒKñåùóZp`ß~ˆŠŠÂ Â>}ÊÔ²¥lŸ\0 #ï¦Íš6nÜ®u›ukÖ¢ÌàË•*=Òo„Öîø‰;†ŽkžÄÔîÓ£ç¡Ë|ùÕØÑ£q£=¿Ð¯woìbàeâ%cŒ¡Œ~Ÿ=ÔÝ,ŠæîË~ú	¿lí÷­}bŠƒûöî…gS\'Mîß§ï†uë«T¬„¹–/˜7`ÂãsrràV­TùØ‘£˜ÚaùÒÅKÊ~U\nJ¡$!­}Ü.Ð,ÆZÆM\0^vú¦#æ~‰ýûöµjá\rã1UÃ0mÆÕØ³{7.)\"\"ÂwðÚÕk@MìöõñÁO4…8súôŸ—.Å.ºÆ@àÐîTè…[{{Û:*_Ó9.»O/?ßaukÕÆM	Wˆaƒ#X* LðãÆŒØÿ»‰ãônÖ\\¿ŽÏênÝÃ¯]ƒ¬H¦Lš}gÏœ‰Ù])•œœ 5tG\Z§ñ	ÒÈ:iÂdÛH?ê`Ê‡Í°\n«FèŽ	uñÂ…oKêîb£S‡o`?Ær\'ˆØµSgøŠTÈ 0+#«AÅ‚dhº_»zõ»¾ý ;r´	kqÐÿØq¶û11kV¯Æ.²4Ø«{èŽ—€Tºã‚é¼Ë·ÐTÍjÕPºcvÐ¯?Ö*8Ñ±,iàY¯QûpíôÉSgq1î¼·Wá¸“î>Îÿ_Õ.+ôM\nÝ?þ»ªHð›N|šˆe66oÚí°{p[Ÿ>u\ZÙ¹cÔÌÍÍÅÌ¿¡ûø±ã£<reÔ…ñ˜5×¬Z…ƒ	0	ÙˆÖR#$³ûÚÕk0›vlßºCÍCBJäEÚÃ3…gw¤\"8r#âøšÐ®UëU+Wâ rè‹ŒHûPs³¶Õv1J7hˆÆ×©Q322·lÚõ±Æ@ÅÅDßÆXÅÄËÄx+EXHTÿº\n¶C/ëÿ\"åóÇt»ã†³_6ñûu­.twö»ªÃwU±mÛ²¦:ÜÜ1¥½zõ\n~#oT¯>d«@ø„½¾§\'šÈ fÄ†uë!wß´afSª£$TîÐ¶JbbÖº@îÆÑ,zÙ¾m$C~‚uBó&^ÈÝ1~0N°Ž„£WÂÞý7(ŒÌ²¸<´ãÕ¨1²tÆ\'¦gærŒ(”IJ´}å{??Œ%4‚k€ÄsgÏÁ’´qýH–åÇ?ˆ2hÊ`üà2ä´ðjŠû˜¶ðÀÊÉúÅô,Ë>u\'Ý_çYœý²)ªè•ÿ®*¢èwUóóò‘º¤¥éÃ\0™Ì³gÏà=¶1Û!mÀrÔÞÇOG±ì¬,$Á8‚t’aàHAÉÒÓÓ!ji M­ºöTºFw8XøÍœÂÐŽ ÕAŠ¢èN{fA+ƒ¦Pàþƒ6m-gg£\n\n`ÃVñm#ØFlh­ißÁRÉ•öÏÅ°¢­WÇ÷œrÜIwò÷‚s?î-ÈŽ0P±HÅZÅ½ž\"¦îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔˆÁjýØqˆ¹^[(ö\0\0\0\0IEND®B`‚','pdf','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0á\0\0\0á\0\0\0	m\"H\0\0\0ÌPLTEüüü÷÷÷ÿÿÿ5ó!J\0\03:úúú\0\00\0\0.\0\0,\0\0$\0\0\Z\0\0)û\"K\0\0*ô\0:\0\0!\0\0ððò††•=ÙÙÞÆÆÍŽŽœ\0\0&×G\0\0rr‚__tgg{¬¬·ÎÎÔ44SPPh??X@žž©>8z=œAºCë Iô\n@êÂÊæ0UîLgó\05ïÞãéÑØ~~µµ¾  EééìCC^\'\'JÜHLLdM\n9´Cj<©BËEç\06ê³½çˆ˜é˜¥ér†ùY61\0\0@IDATxœíkCÚJ†“Õœ„ ¨xA+Ò*`ï¥=µ­VýÿÿéD@ É&™™ÍBÈû¥6ìNÞ‡™lHv–(D–TÅìZot˜ôzÐ+mF´¥J‹ö€ªb7ÄG¼žCqŠÑW~q9ã‰¢I,ÞBèÔ\Zjåã`T OR©w1|Šˆ\nãSc$w-”O…‘Ø±p>:#­›@\"#¥“)>\Z\"¾A>#º‡a@<\"²ƒi¼©tšf›K¡i²¥ôš¦ŠH¡i¦˜ø	M%ÄMhšG&NBÓ,)â#4M’*.BÓâ!4M‘)BÓ9R\'4M+UBÓþR#4í$BÓÞ¢šv•Ð´o„h„¦]£D!4í©ŠpãÓÓ^0í— ¡i·$aM{%ª\"Üx@9¢l£iŸ\n‚šv©¢òÊpÊ(ALl1íPUå\'L•\r0¸u„¦Ý±(‹Ð´7•ŸÐJ\'4íŒMÛKhÚ£¶•Ð´+Vm\'¡iOÌÚFBÓŽ¸U~BkûMûÑ Špó%4íF‹¶‹Ð´=*?¡ÅO¨>jñŽ{Ü„Â:êœùÚVøN…É×ÎùYçÈbr´ ä	wq°¿çûV«ãÒ\"\n·Ój5|oÿà‚‘Pœ×™‚oJH1ùÌ#8õsSŒ„¢÷ê.Tm`BØƒÚ2D‹ñ•#ÔE}gE{=Â··ôöVCÔY\n•‘ðÀÙ‰ø;ÄF‡‘÷hÇ¬¡xµ·³×Evö¢!êo8Œ±vcö¼+4á•§ú&É¢N	ÕãXâ¬µç8hB\'Zç;³õ&ôÐ„žB‹0~y—hÂËx•vÖŠðh_Õžø{“öÖ‰Ðrk±³z ŒÇŽÃákJÈèm+rõ	gü~äXÞçùhÊFö+Eæy„ëÑöWŽÄcÂ{$ËFh_d±á¡?ÑLCz‹,¶¾ÛëF–C7|Ï«×{Ä+D1éÕžãùAÐå»\nf#|)³‹Þå~÷ìNˆÃ/—ƒ«Þ…ÂEt\"&#!Çÿ+áZjË®òVªT©R¥J•*UªT©R%˜\\Ó4Ëµl»ÌŒ®m‡„6eYÁfh\ngÛ¥eœ£Íþ)a©ºv”°ti\\r-þ*U\Z][FÈF†ò,·ô#P«ÿQMãËÜÌÕÁ?*:`˜—qítB%DawZï9jòü ÕUš<ŒÅ	*UL+‹÷”H‹¥€IBj\ZÅÄ¯å{ªæS+ÕMð$	‰ˆâ’0DD¯ÇI”’*5¶CY­·D)Œl#Q4œ|Û9>PÎ\"ÝŠFL,ŠRaIT\nŠ|31±üRYøÅ—i$)Û‘ˆâÜg&ô±½SAÒ^À\r©¢Ï9’¾¨†[%Ds	Qˆ\ZrˆZ^š˜EˆAo™	1§‹ÀLBb|¥½º0«ý³\0³	Ã0Ÿ1#d3d¾\nG]Þ2=Fœ,r²_#r—)¢Hór^‡#²ž/çŠ\\€¼PDqÄ™Ä:ø3[¾ÿÜ`Äøã\n‚?Ì\0°ŸßxÎàL\"8…™ç	0!8‰?³Äw×7Ãû“ÿNî‡7×ï2[Ö~ò¥DD‡§é¦¯‡£CíNþ1\Z^§7>…¤ óFPÄNÊ­¨»án¡pËðNÞ<€>pój=¿É›w\'qºä‰¬Z½|!˜\\§’ÁæW\nßòW²ôd„B/âˆ¿GY€!âèwú8Ô9°ñ,zËíO6ß”ñO¤Gz]6m=û«ŸÀïóCÄû•ô)p`\"ÁgÅïË{RiCLñdÑþ@Ü7¸%´NÅÏ\0¸‚ðò†ˆçÓ{§Î\n\"§×Ïûàûkà\ZEÂ/¤º§¡á8`ˆx¾%§ð«^ŒkD[ðmqä5î0€!â]ÃßåF¤Eˆ¸§a÷P€»ÿ>ôÓ¢(Ó˜ÆDñw4F\0ŽGó÷8Ï¨Ö˜;¨îcÊ8n>¢¾´G#!j6C´ÇÆñø7ã‹´ŒkŽ›Ìí§QN\"ÇÍÑS·À3Ìà	±SRBÜ>ï¦BŽ›»Ï·è4XÇÈöèI~!ÜÛÇ÷Íf¬`Çãfóýã­‹_„L!š4Ç/ÄäöéùÃèácóEFžŸn\'´åOhÃØÄ•\Z/ríö§ÏŸ?jÛ.ýml\nñ„j‹ßÔEÇûE÷0»„B¡Ù…¨»ø.&“ˆO!…Ðd)n+B‰Ì•)¡HI„æ’H2Kéd*‰”ÒM%‘æµ\"”ÊL™’Š”Hh&‰D«¡\\&Ê”V¤TBI¤:­ST|™‹´\"ÌèX´ÈF+Â4]¦Ô\"¥DºÏŠp‹	‹=É‡aE˜ÙµH)Ø,;¡«’þ\r!ÜÁTÅ%¹o‘CJ¥‰’\nÂ\"Ë”nr+7b¨¡{|ùR\n:¡«ãKðZîB…4…(¢ÒŠ7iòpö‹VÊ|Z%ûÀ3Î³½ŽJ²sfÈ´= ºsBd¿”½32fìgõõw×pÝ2vÏ™Upâ•“ÄªŒùá1\",½ò(@Â‚ƒ½Î×âzÁ<ÐÁ±qf_ø˜\r‰Š3ý]nX¢l`±!f_OÚ¢Ö’ávùÉO`.$5h®Û%ØÒˆ&ÀTLµ€PÀÂD5?\Z\\%ÌD, _0ÀabÁæaF	S5PÄwÙyQv9¸‚¸MŒhÉ4ä–¦œ\n	aœQqP×®\\·r€Ù=f×]w¼™,wfWîöF—¼Óùåõ·\0\0\0\0IEND®B`‚','abcd','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0á\0\0\0á\0\0\0	m\"H\0\0\0ÌPLTEüüü÷÷÷ÿÿÿ5ó!J\0\03:úúú\0\00\0\0.\0\0,\0\0$\0\0\Z\0\0)û\"K\0\0*ô\0:\0\0!\0\0ððò††•=ÙÙÞÆÆÍŽŽœ\0\0&×G\0\0rr‚__tgg{¬¬·ÎÎÔ44SPPh??X@žž©>8z=œAºCë Iô\n@êÂÊæ0UîLgó\05ïÞãéÑØ~~µµ¾  EééìCC^\'\'JÜHLLdM\n9´Cj<©BËEç\06ê³½çˆ˜é˜¥ér†ùY61\0\0@IDATxœíkCÚJ†“Õœ„ ¨xA+Ò*`ï¥=µ­VýÿÿéD@ É&™™ÍBÈû¥6ìNÞ‡™lHv–(D–TÅìZot˜ôzÐ+mF´¥J‹ö€ªb7ÄG¼žCqŠÑW~q9ã‰¢I,ÞBèÔ\Zjåã`T OR©w1|Šˆ\nãSc$w-”O…‘Ø±p>:#­›@\"#¥“)>\Z\"¾A>#º‡a@<\"²ƒi¼©tšf›K¡i²¥ôš¦ŠH¡i¦˜ø	M%ÄMhšG&NBÓ,)â#4M’*.BÓâ!4M‘)BÓ9R\'4M+UBÓþR#4í$BÓÞ¢šv•Ð´o„h„¦]£D!4í©ŠpãÓÓ^0í— ¡i·$aM{%ª\"Üx@9¢l£iŸ\n‚šv©¢òÊpÊ(ALl1íPUå\'L•\r0¸u„¦Ý±(‹Ð´7•ŸÐJ\'4íŒMÛKhÚ£¶•Ð´+Vm\'¡iOÌÚFBÓŽ¸U~BkûMûÑ Špó%4íF‹¶‹Ð´=*?¡ÅO¨>jñŽ{Ü„Â:êœùÚVøN…É×ÎùYçÈbr´ ä	wq°¿çûV«ãÒ\"\n·Ój5|oÿà‚‘Pœ×™‚oJH1ùÌ#8õsSŒ„¢÷ê.Tm`BØƒÚ2D‹ñ•#ÔE}gE{=Â··ôöVCÔY\n•‘ðÀÙ‰ø;ÄF‡‘÷hÇ¬¡xµ·³×Evö¢!êo8Œ±vcö¼+4á•§ú&É¢N	ÕãXâ¬µç8hB\'Zç;³õ&ôÐ„žB‹0~y—hÂËx•vÖŠðh_Õžø{“öÖ‰Ðrk±³z ŒÇŽÃákJÈèm+rõ	gü~äXÞçùhÊFö+Eæy„ëÑöWŽÄcÂ{$ËFh_d±á¡?ÑLCz‹,¶¾ÛëF–C7|Ï«×{Ä+D1éÕžãùAÐå»\nf#|)³‹Þå~÷ìNˆÃ/—ƒ«Þ…ÂEt\"&#!Çÿ+áZjË®òVªT©R¥J•*UªT©R%˜\\Ó4Ëµl»ÌŒ®m‡„6eYÁfh\ngÛ¥eœ£Íþ)a©ºv”°ti\\r-þ*U\Z][FÈF†ò,·ô#P«ÿQMãËÜÌÕÁ?*:`˜—qítB%DawZï9jòü ÕUš<ŒÅ	*UL+‹÷”H‹¥€IBj\ZÅÄ¯å{ªæS+ÕMð$	‰ˆâ’0DD¯ÇI”’*5¶CY­·D)Œl#Q4œ|Û9>PÎ\"ÝŠFL,ŠRaIT\nŠ|31±üRYøÅ—i$)Û‘ˆâÜg&ô±½SAÒ^À\r©¢Ï9’¾¨†[%Ds	Qˆ\ZrˆZ^š˜EˆAo™	1§‹ÀLBb|¥½º0«ý³\0³	Ã0Ÿ1#d3d¾\nG]Þ2=Fœ,r²_#r—)¢Hór^‡#²ž/çŠ\\€¼PDqÄ™Ä:ø3[¾ÿÜ`Äøã\n‚?Ì\0°ŸßxÎàL\"8…™ç	0!8‰?³Äw×7Ãû“ÿNî‡7×ï2[Ö~ò¥DD‡§é¦¯‡£CíNþ1\Z^§7>…¤ óFPÄNÊ­¨»án¡pËðNÞ<€>pój=¿É›w\'qºä‰¬Z½|!˜\\§’ÁæW\nßòW²ôd„B/âˆ¿GY€!âèwú8Ô9°ñ,zËíO6ß”ñO¤Gz]6m=û«ŸÀïóCÄû•ô)p`\"ÁgÅïË{RiCLñdÑþ@Ü7¸%´NÅÏ\0¸‚ðò†ˆçÓ{§Î\n\"§×Ïûàûkà\ZEÂ/¤º§¡á8`ˆx¾%§ð«^ŒkD[ðmqä5î0€!â]ÃßåF¤Eˆ¸§a÷P€»ÿ>ôÓ¢(Ó˜ÆDñw4F\0ŽGó÷8Ï¨Ö˜;¨îcÊ8n>¢¾´G#!j6C´ÇÆñø7ã‹´ŒkŽ›Ìí§QN\"ÇÍÑS·À3Ìà	±SRBÜ>ï¦BŽ›»Ï·è4XÇÈöèI~!ÜÛÇ÷Íf¬`Çãfóýã­‹_„L!š4Ç/ÄäöéùÃèácóEFžŸn\'´åOhÃØÄ•\Z/ríö§ÏŸ?jÛ.ýml\nñ„j‹ßÔEÇûE÷0»„B¡Ù…¨»ø.&“ˆO!…Ðd)n+B‰Ì•)¡HI„æ’H2Kéd*‰”ÒM%‘æµ\"”ÊL™’Š”Hh&‰D«¡\\&Ê”V¤TBI¤:­ST|™‹´\"ÌèX´ÈF+Â4]¦Ô\"¥DºÏŠp‹	‹=É‡aE˜ÙµH)Ø,;¡«’þ\r!ÜÁTÅ%¹o‘CJ¥‰’\nÂ\"Ë”nr+7b¨¡{|ùR\n:¡«ãKðZîB…4…(¢ÒŠ7iòpö‹VÊ|Z%ûÀ3Î³½ŽJ²sfÈ´= ºsBd¿”½32fìgõõw×pÝ2vÏ™Upâ•“ÄªŒùá1\",½ò(@Â‚ƒ½Î×âzÁ<ÐÁ±qf_ø˜\r‰Š3ý]nX¢l`±!f_OÚ¢Ö’ávùÉO`.$5h®Û%ØÒˆ&ÀTLµ€PÀÂD5?\Z\\%ÌD, _0ÀabÁæaF	S5PÄwÙyQv9¸‚¸MŒhÉ4ä–¦œ\n	aœQqP×®\\·r€Ù=f×]w¼™,wfWîöF—¼Óùåõ·\0\0\0\0IEND®B`‚',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `medical_status` */

CREATE TABLE `medical_status` (
  `userid` varchar(20) NOT NULL,
  `age` int(3) default NULL,
  `gender` varchar(10) default NULL,
  `blood_group` varchar(3) default NULL,
  `specially_abled` varchar(3) default NULL,
  `desc_ability` varchar(100) default NULL,
  `weight` decimal(10,0) default NULL,
  `height` decimal(10,0) default NULL,
  `diabetes` varchar(3) default NULL,
  `blood_pressure` varchar(5) default NULL,
  `any_medication` varchar(3) default NULL,
  `medication_desc` varchar(100) default NULL,
  `med_allergy` varchar(3) default NULL,
  `allergy_desc` varchar(100) default NULL,
  `other_diseases` varchar(100) default NULL,
  `tobacco` varchar(3) default NULL,
  `smoke` varchar(10) default NULL,
  `alcohol` varchar(20) default NULL,
  `health_comment` varchar(100) default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `medical_status` */

insert  into `medical_status`(`userid`,`age`,`gender`,`blood_group`,`specially_abled`,`desc_ability`,`weight`,`height`,`diabetes`,`blood_pressure`,`any_medication`,`medication_desc`,`med_allergy`,`allergy_desc`,`other_diseases`,`tobacco`,`smoke`,`alcohol`,`health_comment`) values ('abcd',20,'female','O+','Yes','Loobly','50','50','Yes','High','Yes','Laughter','Yes','Noi','Covid,Tyu Batau','Yes','Yes','Daily','Me Sooooo Looobly Loooobly ......');

/*Table structure for table `personal_drive` */

CREATE TABLE `personal_drive` (
  `userid` varchar(20) default NULL,
  `title1` varchar(30) default NULL,
  `doc1` blob,
  `title2` varchar(30) default NULL,
  `doc2` blob,
  `title3` varchar(30) default NULL,
  `doc3` blob,
  `title4` varchar(30) default NULL,
  `doc4` blob,
  `title5` varchar(30) default NULL,
  `doc5` blob,
  `title6` varchar(30) default NULL,
  `doc6` blob,
  `title7` varchar(30) default NULL,
  `doc7` blob,
  `title8` varchar(30) default NULL,
  `doc8` blob,
  `title9` varchar(30) default NULL,
  `doc9` blob,
  `title10` varchar(30) default NULL,
  `doc10` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `personal_drive` */

insert  into `personal_drive`(`userid`,`title1`,`doc1`,`title2`,`doc2`,`title3`,`doc3`,`title4`,`doc4`,`title5`,`doc5`,`title6`,`doc6`,`title7`,`doc7`,`title8`,`doc8`,`title9`,`doc9`,`title10`,`doc10`) values ('user5','abcd','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0á\0\0\0á\0\0\0	m\"H\0\0\0ÌPLTEüüü÷÷÷ÿÿÿ5ó!J\0\03:úúú\0\00\0\0.\0\0,\0\0$\0\0\Z\0\0)û\"K\0\0*ô\0:\0\0!\0\0ððò††•=ÙÙÞÆÆÍŽŽœ\0\0&×G\0\0rr‚__tgg{¬¬·ÎÎÔ44SPPh??X@žž©>8z=œAºCë Iô\n@êÂÊæ0UîLgó\05ïÞãéÑØ~~µµ¾  EééìCC^\'\'JÜHLLdM\n9´Cj<©BËEç\06ê³½çˆ˜é˜¥ér†ùY61\0\0@IDATxœíkCÚJ†“Õœ„ ¨xA+Ò*`ï¥=µ­VýÿÿéD@ É&™™ÍBÈû¥6ìNÞ‡™lHv–(D–TÅìZot˜ôzÐ+mF´¥J‹ö€ªb7ÄG¼žCqŠÑW~q9ã‰¢I,ÞBèÔ\Zjåã`T OR©w1|Šˆ\nãSc$w-”O…‘Ø±p>:#­›@\"#¥“)>\Z\"¾A>#º‡a@<\"²ƒi¼©tšf›K¡i²¥ôš¦ŠH¡i¦˜ø	M%ÄMhšG&NBÓ,)â#4M’*.BÓâ!4M‘)BÓ9R\'4M+UBÓþR#4í$BÓÞ¢šv•Ð´o„h„¦]£D!4í©ŠpãÓÓ^0í— ¡i·$aM{%ª\"Üx@9¢l£iŸ\n‚šv©¢òÊpÊ(ALl1íPUå\'L•\r0¸u„¦Ý±(‹Ð´7•ŸÐJ\'4íŒMÛKhÚ£¶•Ð´+Vm\'¡iOÌÚFBÓŽ¸U~BkûMûÑ Špó%4íF‹¶‹Ð´=*?¡ÅO¨>jñŽ{Ü„Â:êœùÚVøN…É×ÎùYçÈbr´ ä	wq°¿çûV«ãÒ\"\n·Ój5|oÿà‚‘Pœ×™‚oJH1ùÌ#8õsSŒ„¢÷ê.Tm`BØƒÚ2D‹ñ•#ÔE}gE{=Â··ôöVCÔY\n•‘ðÀÙ‰ø;ÄF‡‘÷hÇ¬¡xµ·³×Evö¢!êo8Œ±vcö¼+4á•§ú&É¢N	ÕãXâ¬µç8hB\'Zç;³õ&ôÐ„žB‹0~y—hÂËx•vÖŠðh_Õžø{“öÖ‰Ðrk±³z ŒÇŽÃákJÈèm+rõ	gü~äXÞçùhÊFö+Eæy„ëÑöWŽÄcÂ{$ËFh_d±á¡?ÑLCz‹,¶¾ÛëF–C7|Ï«×{Ä+D1éÕžãùAÐå»\nf#|)³‹Þå~÷ìNˆÃ/—ƒ«Þ…ÂEt\"&#!Çÿ+áZjË®òVªT©R¥J•*UªT©R%˜\\Ó4Ëµl»ÌŒ®m‡„6eYÁfh\ngÛ¥eœ£Íþ)a©ºv”°ti\\r-þ*U\Z][FÈF†ò,·ô#P«ÿQMãËÜÌÕÁ?*:`˜—qítB%DawZï9jòü ÕUš<ŒÅ	*UL+‹÷”H‹¥€IBj\ZÅÄ¯å{ªæS+ÕMð$	‰ˆâ’0DD¯ÇI”’*5¶CY­·D)Œl#Q4œ|Û9>PÎ\"ÝŠFL,ŠRaIT\nŠ|31±üRYøÅ—i$)Û‘ˆâÜg&ô±½SAÒ^À\r©¢Ï9’¾¨†[%Ds	Qˆ\ZrˆZ^š˜EˆAo™	1§‹ÀLBb|¥½º0«ý³\0³	Ã0Ÿ1#d3d¾\nG]Þ2=Fœ,r²_#r—)¢Hór^‡#²ž/çŠ\\€¼PDqÄ™Ä:ø3[¾ÿÜ`Äøã\n‚?Ì\0°ŸßxÎàL\"8…™ç	0!8‰?³Äw×7Ãû“ÿNî‡7×ï2[Ö~ò¥DD‡§é¦¯‡£CíNþ1\Z^§7>…¤ óFPÄNÊ­¨»án¡pËðNÞ<€>pój=¿É›w\'qºä‰¬Z½|!˜\\§’ÁæW\nßòW²ôd„B/âˆ¿GY€!âèwú8Ô9°ñ,zËíO6ß”ñO¤Gz]6m=û«ŸÀïóCÄû•ô)p`\"ÁgÅïË{RiCLñdÑþ@Ü7¸%´NÅÏ\0¸‚ðò†ˆçÓ{§Î\n\"§×Ïûàûkà\ZEÂ/¤º§¡á8`ˆx¾%§ð«^ŒkD[ðmqä5î0€!â]ÃßåF¤Eˆ¸§a÷P€»ÿ>ôÓ¢(Ó˜ÆDñw4F\0ŽGó÷8Ï¨Ö˜;¨îcÊ8n>¢¾´G#!j6C´ÇÆñø7ã‹´ŒkŽ›Ìí§QN\"ÇÍÑS·À3Ìà	±SRBÜ>ï¦BŽ›»Ï·è4XÇÈöèI~!ÜÛÇ÷Íf¬`Çãfóýã­‹_„L!š4Ç/ÄäöéùÃèácóEFžŸn\'´åOhÃØÄ•\Z/ríö§ÏŸ?jÛ.ýml\nñ„j‹ßÔEÇûE÷0»„B¡Ù…¨»ø.&“ˆO!…Ðd)n+B‰Ì•)¡HI„æ’H2Kéd*‰”ÒM%‘æµ\"”ÊL™’Š”Hh&‰D«¡\\&Ê”V¤TBI¤:­ST|™‹´\"ÌèX´ÈF+Â4]¦Ô\"¥DºÏŠp‹	‹=É‡aE˜ÙµH)Ø,;¡«’þ\r!ÜÁTÅ%¹o‘CJ¥‰’\nÂ\"Ë”nr+7b¨¡{|ùR\n:¡«ãKðZîB…4…(¢ÒŠ7iòpö‹VÊ|Z%ûÀ3Î³½ŽJ²sfÈ´= ºsBd¿”½32fìgõõw×pÝ2vÏ™Upâ•“ÄªŒùá1\",½ò(@Â‚ƒ½Î×âzÁ<ÐÁ±qf_ø˜\r‰Š3ý]nX¢l`±!f_OÚ¢Ö’ávùÉO`.$5h®Û%ØÒˆ&ÀTLµ€PÀÂD5?\Z\\%ÌD, _0ÀabÁæaF	S5PÄwÙyQv9¸‚¸MŒhÉ4ä–¦œ\n	aœQqP×®\\·r€Ù=f×]w¼™,wfWîöF—¼Óùåõ·\0\0\0\0IEND®B`‚','profile','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0á\0\0\0á\0\0\0	m\"H\0\0\0ÌPLTEüüü÷÷÷ÿÿÿ5ó!J\0\03:úúú\0\00\0\0.\0\0,\0\0$\0\0\Z\0\0)û\"K\0\0*ô\0:\0\0!\0\0ððò††•=ÙÙÞÆÆÍŽŽœ\0\0&×G\0\0rr‚__tgg{¬¬·ÎÎÔ44SPPh??X@žž©>8z=œAºCë Iô\n@êÂÊæ0UîLgó\05ïÞãéÑØ~~µµ¾  EééìCC^\'\'JÜHLLdM\n9´Cj<©BËEç\06ê³½çˆ˜é˜¥ér†ùY61\0\0@IDATxœíkCÚJ†“Õœ„ ¨xA+Ò*`ï¥=µ­VýÿÿéD@ É&™™ÍBÈû¥6ìNÞ‡™lHv–(D–TÅìZot˜ôzÐ+mF´¥J‹ö€ªb7ÄG¼žCqŠÑW~q9ã‰¢I,ÞBèÔ\Zjåã`T OR©w1|Šˆ\nãSc$w-”O…‘Ø±p>:#­›@\"#¥“)>\Z\"¾A>#º‡a@<\"²ƒi¼©tšf›K¡i²¥ôš¦ŠH¡i¦˜ø	M%ÄMhšG&NBÓ,)â#4M’*.BÓâ!4M‘)BÓ9R\'4M+UBÓþR#4í$BÓÞ¢šv•Ð´o„h„¦]£D!4í©ŠpãÓÓ^0í— ¡i·$aM{%ª\"Üx@9¢l£iŸ\n‚šv©¢òÊpÊ(ALl1íPUå\'L•\r0¸u„¦Ý±(‹Ð´7•ŸÐJ\'4íŒMÛKhÚ£¶•Ð´+Vm\'¡iOÌÚFBÓŽ¸U~BkûMûÑ Špó%4íF‹¶‹Ð´=*?¡ÅO¨>jñŽ{Ü„Â:êœùÚVøN…É×ÎùYçÈbr´ ä	wq°¿çûV«ãÒ\"\n·Ój5|oÿà‚‘Pœ×™‚oJH1ùÌ#8õsSŒ„¢÷ê.Tm`BØƒÚ2D‹ñ•#ÔE}gE{=Â··ôöVCÔY\n•‘ðÀÙ‰ø;ÄF‡‘÷hÇ¬¡xµ·³×Evö¢!êo8Œ±vcö¼+4á•§ú&É¢N	ÕãXâ¬µç8hB\'Zç;³õ&ôÐ„žB‹0~y—hÂËx•vÖŠðh_Õžø{“öÖ‰Ðrk±³z ŒÇŽÃákJÈèm+rõ	gü~äXÞçùhÊFö+Eæy„ëÑöWŽÄcÂ{$ËFh_d±á¡?ÑLCz‹,¶¾ÛëF–C7|Ï«×{Ä+D1éÕžãùAÐå»\nf#|)³‹Þå~÷ìNˆÃ/—ƒ«Þ…ÂEt\"&#!Çÿ+áZjË®òVªT©R¥J•*UªT©R%˜\\Ó4Ëµl»ÌŒ®m‡„6eYÁfh\ngÛ¥eœ£Íþ)a©ºv”°ti\\r-þ*U\Z][FÈF†ò,·ô#P«ÿQMãËÜÌÕÁ?*:`˜—qítB%DawZï9jòü ÕUš<ŒÅ	*UL+‹÷”H‹¥€IBj\ZÅÄ¯å{ªæS+ÕMð$	‰ˆâ’0DD¯ÇI”’*5¶CY­·D)Œl#Q4œ|Û9>PÎ\"ÝŠFL,ŠRaIT\nŠ|31±üRYøÅ—i$)Û‘ˆâÜg&ô±½SAÒ^À\r©¢Ï9’¾¨†[%Ds	Qˆ\ZrˆZ^š˜EˆAo™	1§‹ÀLBb|¥½º0«ý³\0³	Ã0Ÿ1#d3d¾\nG]Þ2=Fœ,r²_#r—)¢Hór^‡#²ž/çŠ\\€¼PDqÄ™Ä:ø3[¾ÿÜ`Äøã\n‚?Ì\0°ŸßxÎàL\"8…™ç	0!8‰?³Äw×7Ãû“ÿNî‡7×ï2[Ö~ò¥DD‡§é¦¯‡£CíNþ1\Z^§7>…¤ óFPÄNÊ­¨»án¡pËðNÞ<€>pój=¿É›w\'qºä‰¬Z½|!˜\\§’ÁæW\nßòW²ôd„B/âˆ¿GY€!âèwú8Ô9°ñ,zËíO6ß”ñO¤Gz]6m=û«ŸÀïóCÄû•ô)p`\"ÁgÅïË{RiCLñdÑþ@Ü7¸%´NÅÏ\0¸‚ðò†ˆçÓ{§Î\n\"§×Ïûàûkà\ZEÂ/¤º§¡á8`ˆx¾%§ð«^ŒkD[ðmqä5î0€!â]ÃßåF¤Eˆ¸§a÷P€»ÿ>ôÓ¢(Ó˜ÆDñw4F\0ŽGó÷8Ï¨Ö˜;¨îcÊ8n>¢¾´G#!j6C´ÇÆñø7ã‹´ŒkŽ›Ìí§QN\"ÇÍÑS·À3Ìà	±SRBÜ>ï¦BŽ›»Ï·è4XÇÈöèI~!ÜÛÇ÷Íf¬`Çãfóýã­‹_„L!š4Ç/ÄäöéùÃèácóEFžŸn\'´åOhÃØÄ•\Z/ríö§ÏŸ?jÛ.ýml\nñ„j‹ßÔEÇûE÷0»„B¡Ù…¨»ø.&“ˆO!…Ðd)n+B‰Ì•)¡HI„æ’H2Kéd*‰”ÒM%‘æµ\"”ÊL™’Š”Hh&‰D«¡\\&Ê”V¤TBI¤:­ST|™‹´\"ÌèX´ÈF+Â4]¦Ô\"¥DºÏŠp‹	‹=É‡aE˜ÙµH)Ø,;¡«’þ\r!ÜÁTÅ%¹o‘CJ¥‰’\nÂ\"Ë”nr+7b¨¡{|ùR\n:¡«ãKðZîB…4…(¢ÒŠ7iòpö‹VÊ|Z%ûÀ3Î³½ŽJ²sfÈ´= ºsBd¿”½32fìgõõw×pÝ2vÏ™Upâ•“ÄªŒùá1\",½ò(@Â‚ƒ½Î×âzÁ<ÐÁ±qf_ø˜\r‰Š3ý]nX¢l`±!f_OÚ¢Ö’ávùÉO`.$5h®Û%ØÒˆ&ÀTLµ€PÀÂD5?\Z\\%ÌD, _0ÀabÁæaF	S5PÄwÙyQv9¸‚¸MŒhÉ4ä–¦œ\n	aœQqP×®\\·r€Ù=f×]w¼™,wfWîöF—¼Óùåõ·\0\0\0\0IEND®B`‚',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `uidai` */

CREATE TABLE `uidai` (
  `aadhar_no` varchar(12) NOT NULL,
  `name` varchar(50) default NULL,
  `dob` date default NULL,
  `gender` varchar(10) default NULL,
  `address` varchar(50) default NULL,
  `profile` mediumblob,
  `fingerprint` mediumblob,
  PRIMARY KEY  (`aadhar_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `uidai` */

insert  into `uidai`(`aadhar_no`,`name`,`dob`,`gender`,`address`,`profile`,`fingerprint`) values ('123456789011','Ayush','2001-01-01','male','IIST,Indore',NULL,NULL);
insert  into `uidai`(`aadhar_no`,`name`,`dob`,`gender`,`address`,`profile`,`fingerprint`) values ('123456789012','Durva','2002-05-09','female','IIST,Indore',NULL,NULL);
insert  into `uidai`(`aadhar_no`,`name`,`dob`,`gender`,`address`,`profile`,`fingerprint`) values ('123456789013','Ikka','2001-03-03','male','IIST,Indore',NULL,NULL);
insert  into `uidai`(`aadhar_no`,`name`,`dob`,`gender`,`address`,`profile`,`fingerprint`) values ('123456789018','opppp','2022-03-18','other','IIST,Indore',NULL,NULL);

/*Table structure for table `user` */

CREATE TABLE `user` (
  `userid` varchar(20) default NULL,
  `aadhar_no` varchar(12) default NULL,
  `password` varchar(20) default NULL,
  `name` varchar(50) default NULL,
  `dob` date default NULL,
  `gender` varchar(20) default NULL,
  `contact` varchar(14) default NULL,
  `email` varchar(90) default NULL,
  `uno` int(11) unsigned NOT NULL auto_increment,
  `profile` mediumblob,
  `address` varchar(100) default NULL,
  `profession` varchar(80) default NULL,
  PRIMARY KEY  (`uno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`userid`,`aadhar_no`,`password`,`name`,`dob`,`gender`,`contact`,`email`,`uno`,`profile`,`address`,`profession`) values ('abcd','123456789012','12345','Durva','2002-05-09','female','9399492709','arraghuvanshi12@gmail.com',1,'‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0ú\0\0\0ú\0\0\0ŽÍj\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0GIDATx^íwTTçº‡Ïÿw­{Öºÿß{’ØQcWìbÁnŒ]±ÅŠb¬1öÞKbÔØ[ŒõØ,¨€\rTÄ\"‚(*(JP`¾¹¿qï nÈžOÞß³ÞÅÚå+{Ï÷í÷›Ùÿ°\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚p\'Ý\'í¹UaÂ	‰\'·ó†VW)k£¹çþÇ÷§\"<>U«^<¯ÔÓ@uc¾å¢¯ålWËéößZ‚{««Õƒ=ÖŒûzË…ÉˆU‘+UÔ¯ÿ‰@GIAz¿%wÒ½×êÐôÙçTt^qI«Ý+N<i8k7Bc_jÕ¼IU×gXN´°ø7qex©ˆ9h\\ïå-*ñ¬±Ø§us‘ÞqIÄtï·îŠAG»ÑcU¨VºW™rÊpÖn„Å¦hÕß#3ó±ÁWÆùÖ7iz_¸ò¤cOêÎ2½ã’u7‹btÏÍ°œífPÄõqÉÏšŸ£uHÝ]u7‹¢º«¸]?>Q¨Ç\'ô©»ë îfaÔ=ÿµ%èS¦1…B]›¢õIÝ]u7£îé19Œàe9ÓÙr®»-á)8Øñ½7dšë\Z\"¸í¢mºO}Ê îŸ»î*9Ì GáPáÓ­éÑÖ¼,[Ú]4r3‘÷¿‹Ìxuw­åd+C#ïâl7ÜLlRw×AÝÍÂ¨»‰yA=q^/ç0êÁc;q®§UYl…06R#­iQvCÝZdl¤P¨{›\rå‹‰Ô;Öì¤·—V2¡îfaÔýÙyƒCï\"¸·^È)^=´„ô+6ÔÍz‡Q1[WU(Ô“Sz9ÁPw³0æî)·½‹€¦êþV«å^ÒqT¾UåÎß+îm2^U¡PëåCÝÍÂ¨{Î3;Ÿ¤÷U×g¨ÛK‘—«ØíêÑÛSÏ/[SnXÓïY³[_¿°%÷0*€ºÛ…º›…Qwe±\\jÐÈ‰8ám9ÕÆr¦“%ÈÇra°\n£Â§aiMUÜ.õèõô´zqÅ6$>ênênFÝÑNü>ƒF®Ó`¿ÞŸ3Pw»Pw³(ª»õMªí]ó\"2¹<ÔåÎ¦ïÔÝ.î¤{ï5aíF×•—µº.ÓM%[NØûÈ¡žës:u·‹;éî»%ü¿‡þçPG…l¸ªÕu¡î6Rn\"ù¶åâE¬raØÞ)wênwÒ=-+71-Ç©HÍÊÕêºXw`É³½Ó’¥’¯¨„£êÞFuk‘º2Þ6Îvµ-Iš\Z„s6Ôí¥z_ŽAÝíâNº®×Ý„ülÛ»+™qÖ—*)H=<¤b¶¨È*bŽ\nŸªÂÆY.ùÙž¢ñ÷2iÛW=œºÛÅt‘ù&>9ëáG…“3l€ÿ¨îŽŸcM¿‡tÅr²¥ÁË‚P×&ë…ƒºÛÅt²ùÚ\r:äTô[wE«ëÝ-yêÁ³YE­2~ÅG^è9‹Š^oð² \nžvênwÒ½ÏZ§ß™éö«ëÞ™±äÙî-¢‘*|š^ÌIÔ³†¦\n‚º»wÒýoßÝ:ÊàÐ»8ÙÚöD¡ó ­76õgPw—CÝÍÂ »Š˜epè½ìˆU©5=ÆšïP wO<kûÃ†vþêîr¨»YuÞ`p¨¸ð²}S) ™½°ÿA•º1WïØ1¨»]¨»YuO8fpè“†Š\\¡wìÔÝ.ÔÝ,º#ý°ûf¹C=9©÷ëÔÝ.ÔÝ,Œº£«\Z}ª¸4ÜjÑ?vênênEu·f?µ„ô7˜äú¸èkÍNÔ{tênênÅèòs ŽíÏ ~ôS1ÅÄ™Î¶\'Ãœœ×5lÚÀÐZ¡PŽèåCÝÍ¢xÝ5Ðbfœz|BÝ]£®ÏT¡£-—†Ùž+ò%k¢¿åòHuk‰zì_ø¯C:‹J\nV7¨›‹Š‹Ö”›z9ÁPw³0Óý¯0~ÃÚ‘È×ë’Ou7‹Ñ|ÆPw³ î%ênÔ½„!Hwþ÷âžÒ½åâÿuìÿFw0P8âá‡¿OB>C¤è²ßägæä½zíh °£„” éNuw‚¸¸8ßÁCâÄëûï“ø4qØ¡ã‹?[,999cGÞþûïú~q¼yófë–ß®‡‡G\\¿Þ¹ã·QQQAçÎý{×nýt!öíÝ‹búŽ)èwøPß^Ý{¼zõJ?$A¹»Ïš°Z3kÏ8ãxÜyœ®U×¸zåJ©}í233_¿~\r³“õ\'[0ÂBÃpöF„í?¹ÆÆÆÞ‰Á†ÅbÉÈÈÈÎÊÂ`ÐŽ?zøÐVá-h§Ì—_3°š’R0–ž<yr/:\Z¨ˆf;6únôÜÙsÐl®Ý*{x |ZZZ^^^nnnzz:Ä­Y­ÚÔI“µ#ÏŸ?×šÒÀGFF&\'\'cûL` Ú\\µr%Jjg… H÷r?ž0œµ—ï¿÷ÎæNX“¾÷óónÚ¬j¥ÊõêxB»Û·—+UºQ½úeK•z÷\0³5t¬TÁcíê5	Õ÷ôlX·Þw}û-˜7¯ú×UjT©ºyÓ&­A8Z¥b¥ysæþ´diÝÚuš6n\\¡LÙcGŽîÜ±£võ\Z(ŒŽ~ùùçÒ_|‰¾ÎŸß²y‹i“§x”-Wö«R¨…/_ºtüè±¶-[á,zGkþÇ4ÕÑ)FˆÖQvvvÏnÝÑ5.ƒö›víñBºvêÌÙýóå#uÿø÷ÝtïÑµ+2ó!ç±‹ŸÞÍšOŸ:m÷Î]Ø½v¥n­ÚÛ·mƒô5ªVÓ¦|X¡òÊå+FøR\"EAƒšîóçÎ›5cŠAtŒ“Ã‡7kÒyË¡ûúøÀÎŠåÊÃò(ƒ‰y@¿þ\r<ëÞºy»!ÁÁ÷À`ÀM IÃFhêÂùó¡—/whÛnâ´+GË¸µkÝfÒ„	ÁAA¨‹kSÂÖâÔÝ,þJ÷î]º`rE\\¾tÿcÇ=kÖ‚ÍÈ°‹¹³oä;w£îV*_áè‘#°<!!ó+6\Z×oÐÂ«ikoo-©(¬{µÊ_ãFQ§FMä-031&oŒ”AƒK/ÁDŽÞ‘JôáÕ¨1²$Bl‡Báü¼|Œºë×ãz {«Þ3Èm´+Ç-“=6&Žÿ±O/ŸÛ·náŽ´³r îfa2»CP¤ÎÈaN<	ÝìÛ¤žav\"ƒGaÌÊ§OžB™˜{÷—£.ì\rE2;Ñ`aÝ1Cc@w?ßa—.^Ä<yâDT		Ad;˜°±{íêUÐtÇ.Zûãða¤=HÍ›7ñZ¿vzD…îüýq+Ð®|ÍêÕHo°á7lØàpg€îN­ªKÔÝ,ºkKÕ;·o#O€‹©©©špcGFÞ‚<»˜×‘¦·oÓ¶]«ÖƒÄ¯UÉÏÏÇÔŽƒÈCúõÖÿ‘¦sœ1m:ZƒX\\ÂTßÁC0œPí``t¡qÌßÈÎQ×0á‡ñØØ²i3Ò}Ü+ >î?XÂ¢üÞ={PCƒ\rÛZGX¤âÎ3|¨/búˆˆ@Xfhgå@ÝÍÂ û³gÏ6oÜ˜ò2Räß˜§áèË—/çÌš…Ü){FFÆ³¤¤™Ó§ãÊCh”AT¿={æLä\'Zƒ¹¹¹HW0`Ð\Zê\"áÙµc\'¦sT\\²p†²<ˆÙýì™3èÝaVÆ\Z\0Ó<Òtô‚Ù]Ó\Zƒ\nÅbccÑÆÏï¿m-œšž:T‹`l\'%&âªp©Ú)9Pw³0èNÜênÔ½„AÝÍ¢¨îXž\"{F‚Ž\\\\?ô\'			÷ïß×w>%HÓ‘Ï óÑv?~ÿ iŒöaV±¤§§#YÏËËÓ÷Myú}§AÝÍÂ ;$kÒ°QÃºõ°à›;k¶~ôOF0@ßù”`ñPÙÃ	º¶Û³[÷Jå+x”-‡ŸÃ†Õå·Í[*”)kø¨õ¯ø¶C‡n»è;%ênÝ7®__ê__¤¦¤¬_»®Y“&8’ðèV‡ÂvHp0VØÀÜ¿|Ù/\',–¡/\\ÀªñàþØÅäŠÅ(ªc9‹’w£î¢ºÿñã…ïa¡a+~YàïÂ×¯íØ¾ëà×¯_cqŒím[·–/]Çµò„XþâÂþ½k7¦d¬_]±· œÂbKaôŽóÖ-¿¡zÇÆ‹/p#:wö,ÖÜ8«­¤1~PŒí6-[~Ó®=6°‹+ÄKÃvvV.¯«^\\9.ûÑÃ‡¸ÝáÎºÔÝ,ºCkóÃØ±×ÃÃ³^e=yòÄ³f­1#GaZ…‚3¦MïÑµÛÍ7kT©º|Ù2LÀ¢{—.uk×ñ6¡êB#lß¦-ŒüÚ£â’…‹*Uð8zDÿ«ÚG§K-ÆÏ½{öŒ>w’ÑßÄnÐ¹sóæÌ­U­úÐAƒKñåùóZp`ß~ˆŠŠÂ Â>}ÊÔ²¥lŸ\0 #ï¦Íš6nÜ®u›ukÖ¢ÌàË•*=Òo„Öîø‰;†ŽkžÄÔîÓ£ç¡Ë|ùÕØÑ£q£=¿Ð¯woìbàeâ%cŒ¡Œ~Ÿ=ÔÝ,ŠæîË~ú	¿lí÷­}bŠƒûöî…gS\'Mîß§ï†uë«T¬„¹–/˜7`ÂãsrràV­TùØ‘£˜ÚaùÒÅKÊ~U\nJ¡$!­}Ü.Ð,ÆZÆM\0^vú¦#æ~‰ýûöµjá\rã1UÃ0mÆÕØ³{7.)\"\"ÂwðÚÕk@MìöõñÁO4…8súôŸ—.Å.ºÆ@àÐîTè…[{{Û:*_Ó9.»O/?ßaukÕÆM	Wˆaƒ#X* LðãÆŒØÿ»‰ãônÖ\\¿ŽÏênÝÃ¯]ƒ¬H¦Lš}gÏœ‰Ù])•œœ 5tG\Z§ñ	ÒÈ:iÂdÛH?ê`Ê‡Í°\n«FèŽ	uñÂ…oKêîb£S‡o`?Ær\'ˆØµSgøŠTÈ 0+#«AÅ‚dhº_»zõ»¾ý ;r´	kqÐÿØq¶û11kV¯Æ.²4Ø«{èŽ—€Tºã‚é¼Ë·ÐTÍjÕPºcvÐ¯?Ö*8Ñ±,iàY¯QûpíôÉSgq1î¼·Wá¸“î>Îÿ_Õ.+ôM\nÝ?þ»ªHð›N|šˆe66oÚí°{p[Ÿ>u\ZÙ¹cÔÌÍÍÅÌ¿¡ûø±ã£<reÔ…ñ˜5×¬Z…ƒ	0	ÙˆÖR#$³ûÚÕk0›vlßºCÍCBJäEÚÃ3…gw¤\"8r#âøšÐ®UëU+Wâ rè‹ŒHûPs³¶Õv1J7hˆÆ×©Q322·lÚõ±Æ@ÅÅDßÆXÅÄËÄx+EXHTÿº\n¶C/ëÿ\"åóÇt»ã†³_6ñûu­.twö»ªÃwU±mÛ²¦:ÜÜ1¥½zõ\n~#oT¯>d«@ø„½¾§\'šÈ fÄ†uë!wß´afSª£$TîÐ¶JbbÖº@îÆÑ,zÙ¾m$C~‚uBó&^ÈÝ1~0N°Ž„£WÂÞý7(ŒÌ²¸<´ãÕ¨1²tÆ\'¦gærŒ(”IJ´}å{??Œ%4‚k€ÄsgÏÁ’´qýH–åÇ?ˆ2hÊ`üà2ä´ðjŠû˜¶ðÀÊÉúÅô,Ë>u\'Ý_çYœý²)ªè•ÿ®*¢èwUóóò‘º¤¥éÃ\0™Ì³gÏà=¶1Û!mÀrÔÞÇOG±ì¬,$Á8‚t’aàHAÉÒÓÓ!ji M­ºöTºFw8XøÍœÂÐŽ ÕAŠ¢èN{fA+ƒ¦Pàþƒ6m-gg£\n\n`ÃVñm#ØFlh­ißÁRÉ•öÏÅ°¢­WÇ÷œrÜIwò÷‚s?î-ÈŽ0P±HÅZÅ½ž\"¦îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔ‚ºAPw\"êNAÝ‰ ¨;u\'‚ îDÔˆÁjýØqˆ¹^[(ö\0\0\0\0IEND®B`‚','IIST,India','Intern..');
insert  into `user`(`userid`,`aadhar_no`,`password`,`name`,`dob`,`gender`,`contact`,`email`,`uno`,`profile`,`address`,`profession`) values ('gg59','123456789013','12345','Ikka','2001-03-03','Male','7974652538','ikkaballu69@gmail.com',3,NULL,'IIST,Indore','Singer');
insert  into `user`(`userid`,`aadhar_no`,`password`,`name`,`dob`,`gender`,`contact`,`email`,`uno`,`profile`,`address`,`profession`) values ('user5','123456789018','12345','opppp','2022-03-18','Other','1234567890','durvakulkarni3@gmail.com',36,'‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0á\0\0\0á\0\0\0	m\"H\0\0\0ÌPLTEüüü÷÷÷ÿÿÿ5ó!J\0\03:úúú\0\00\0\0.\0\0,\0\0$\0\0\Z\0\0)û\"K\0\0*ô\0:\0\0!\0\0ððò††•=ÙÙÞÆÆÍŽŽœ\0\0&×G\0\0rr‚__tgg{¬¬·ÎÎÔ44SPPh??X@žž©>8z=œAºCë Iô\n@êÂÊæ0UîLgó\05ïÞãéÑØ~~µµ¾  EééìCC^\'\'JÜHLLdM\n9´Cj<©BËEç\06ê³½çˆ˜é˜¥ér†ùY61\0\0@IDATxœíkCÚJ†“Õœ„ ¨xA+Ò*`ï¥=µ­VýÿÿéD@ É&™™ÍBÈû¥6ìNÞ‡™lHv–(D–TÅìZot˜ôzÐ+mF´¥J‹ö€ªb7ÄG¼žCqŠÑW~q9ã‰¢I,ÞBèÔ\Zjåã`T OR©w1|Šˆ\nãSc$w-”O…‘Ø±p>:#­›@\"#¥“)>\Z\"¾A>#º‡a@<\"²ƒi¼©tšf›K¡i²¥ôš¦ŠH¡i¦˜ø	M%ÄMhšG&NBÓ,)â#4M’*.BÓâ!4M‘)BÓ9R\'4M+UBÓþR#4í$BÓÞ¢šv•Ð´o„h„¦]£D!4í©ŠpãÓÓ^0í— ¡i·$aM{%ª\"Üx@9¢l£iŸ\n‚šv©¢òÊpÊ(ALl1íPUå\'L•\r0¸u„¦Ý±(‹Ð´7•ŸÐJ\'4íŒMÛKhÚ£¶•Ð´+Vm\'¡iOÌÚFBÓŽ¸U~BkûMûÑ Špó%4íF‹¶‹Ð´=*?¡ÅO¨>jñŽ{Ü„Â:êœùÚVøN…É×ÎùYçÈbr´ ä	wq°¿çûV«ãÒ\"\n·Ój5|oÿà‚‘Pœ×™‚oJH1ùÌ#8õsSŒ„¢÷ê.Tm`BØƒÚ2D‹ñ•#ÔE}gE{=Â··ôöVCÔY\n•‘ðÀÙ‰ø;ÄF‡‘÷hÇ¬¡xµ·³×Evö¢!êo8Œ±vcö¼+4á•§ú&É¢N	ÕãXâ¬µç8hB\'Zç;³õ&ôÐ„žB‹0~y—hÂËx•vÖŠðh_Õžø{“öÖ‰Ðrk±³z ŒÇŽÃákJÈèm+rõ	gü~äXÞçùhÊFö+Eæy„ëÑöWŽÄcÂ{$ËFh_d±á¡?ÑLCz‹,¶¾ÛëF–C7|Ï«×{Ä+D1éÕžãùAÐå»\nf#|)³‹Þå~÷ìNˆÃ/—ƒ«Þ…ÂEt\"&#!Çÿ+áZjË®òVªT©R¥J•*UªT©R%˜\\Ó4Ëµl»ÌŒ®m‡„6eYÁfh\ngÛ¥eœ£Íþ)a©ºv”°ti\\r-þ*U\Z][FÈF†ò,·ô#P«ÿQMãËÜÌÕÁ?*:`˜—qítB%DawZï9jòü ÕUš<ŒÅ	*UL+‹÷”H‹¥€IBj\ZÅÄ¯å{ªæS+ÕMð$	‰ˆâ’0DD¯ÇI”’*5¶CY­·D)Œl#Q4œ|Û9>PÎ\"ÝŠFL,ŠRaIT\nŠ|31±üRYøÅ—i$)Û‘ˆâÜg&ô±½SAÒ^À\r©¢Ï9’¾¨†[%Ds	Qˆ\ZrˆZ^š˜EˆAo™	1§‹ÀLBb|¥½º0«ý³\0³	Ã0Ÿ1#d3d¾\nG]Þ2=Fœ,r²_#r—)¢Hór^‡#²ž/çŠ\\€¼PDqÄ™Ä:ø3[¾ÿÜ`Äøã\n‚?Ì\0°ŸßxÎàL\"8…™ç	0!8‰?³Äw×7Ãû“ÿNî‡7×ï2[Ö~ò¥DD‡§é¦¯‡£CíNþ1\Z^§7>…¤ óFPÄNÊ­¨»án¡pËðNÞ<€>pój=¿É›w\'qºä‰¬Z½|!˜\\§’ÁæW\nßòW²ôd„B/âˆ¿GY€!âèwú8Ô9°ñ,zËíO6ß”ñO¤Gz]6m=û«ŸÀïóCÄû•ô)p`\"ÁgÅïË{RiCLñdÑþ@Ü7¸%´NÅÏ\0¸‚ðò†ˆçÓ{§Î\n\"§×Ïûàûkà\ZEÂ/¤º§¡á8`ˆx¾%§ð«^ŒkD[ðmqä5î0€!â]ÃßåF¤Eˆ¸§a÷P€»ÿ>ôÓ¢(Ó˜ÆDñw4F\0ŽGó÷8Ï¨Ö˜;¨îcÊ8n>¢¾´G#!j6C´ÇÆñø7ã‹´ŒkŽ›Ìí§QN\"ÇÍÑS·À3Ìà	±SRBÜ>ï¦BŽ›»Ï·è4XÇÈöèI~!ÜÛÇ÷Íf¬`Çãfóýã­‹_„L!š4Ç/ÄäöéùÃèácóEFžŸn\'´åOhÃØÄ•\Z/ríö§ÏŸ?jÛ.ýml\nñ„j‹ßÔEÇûE÷0»„B¡Ù…¨»ø.&“ˆO!…Ðd)n+B‰Ì•)¡HI„æ’H2Kéd*‰”ÒM%‘æµ\"”ÊL™’Š”Hh&‰D«¡\\&Ê”V¤TBI¤:­ST|™‹´\"ÌèX´ÈF+Â4]¦Ô\"¥DºÏŠp‹	‹=É‡aE˜ÙµH)Ø,;¡«’þ\r!ÜÁTÅ%¹o‘CJ¥‰’\nÂ\"Ë”nr+7b¨¡{|ùR\n:¡«ãKðZîB…4…(¢ÒŠ7iòpö‹VÊ|Z%ûÀ3Î³½ŽJ²sfÈ´= ºsBd¿”½32fìgõõw×pÝ2vÏ™Upâ•“ÄªŒùá1\",½ò(@Â‚ƒ½Î×âzÁ<ÐÁ±qf_ø˜\r‰Š3ý]nX¢l`±!f_OÚ¢Ö’ávùÉO`.$5h®Û%ØÒˆ&ÀTLµ€PÀÂD5?\Z\\%ÌD, _0ÀabÁæaF	S5PÄwÙyQv9¸‚¸MŒhÉ4ä–¦œ\n	aœQqP×®\\·r€Ù=f×]w¼™,wfWîöF—¼Óùåõ·\0\0\0\0IEND®B`‚','IIST,Indore','Intern');

/*Table structure for table `user_complain` */

CREATE TABLE `user_complain` (
  `complain_id` varchar(20) default NULL,
  `police_id` varchar(20) default NULL,
  `user_id` varchar(20) default NULL,
  `date_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `title` varchar(100) default NULL,
  `category` varchar(30) default NULL,
  `description` varchar(250) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_complain` */

insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-17 14:07:51','title','Criminal','describe');
insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-17 14:10:04','title','Criminal','describe');
insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-17 14:17:16','title','Criminal','describe');
insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0',NULL,'user5','2022-04-17 14:25:15','title','Missing_Report','dfghjh');
insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0',NULL,'user5','2022-04-17 14:26:00','title','Criminal_Activity','gyhghghgh');
insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-17 14:27:52','title','Missing_Report','dfghjh');
insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-17 14:28:06','title','Criminal_Activity','htyytyty');
insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-17 14:28:32','title','Close_Complain','closed');
insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0',NULL,'user5','2022-04-17 14:28:52','titl2','Criminal','ghhggh');
insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-17 14:29:11','titl2','Close_Complain','kjjkj');
insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0',NULL,'user5','2022-04-17 15:23:58','title','Criminal','describe');
insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-17 15:24:18','title','Close_Complain','closed');
insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0',NULL,'user5','2022-04-17 15:37:23','toitle','Criminal','gfgfhgf');
insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-17 15:37:37','toitle','Close_Complain','rttyyy');
insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0',NULL,'user5','2022-04-17 15:38:14','tuyuyu','Suspect','jkjkjkjk');
insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-17 15:38:28','tuyuyu','Close_Complain','ghghghghh');
insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0',NULL,'user5','2022-04-17 15:46:41','title','Criminal','ghghghg');
insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0',NULL,'user5','2022-04-17 15:50:26','title','Criminal','yyyyyy');
insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-17 15:54:25','title','Criminal','yyyyyy');
insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-17 15:54:39','title','Suspect','dfgfgfgfgfgfgfg');
insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-17 15:56:08','title','Close_Complain','gytytytytytyyt');
insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0',NULL,'user5','2022-04-17 19:50:57','title','Suspect','ktjrktjkrt');
insert  into `user_complain`(`complain_id`,`police_id`,`user_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-17 19:51:10','title','Close_Complain','krrrlkelrkler');

/*Table structure for table `user_history` */

CREATE TABLE `user_history` (
  `police_id` varchar(20) default NULL,
  `user_id` varchar(20) default NULL,
  `date_checked` date default NULL,
  `time_checked` time default NULL,
  `location_checked` varchar(100) default NULL,
  `current_stat` varchar(25) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_history` */

insert  into `user_history`(`police_id`,`user_id`,`date_checked`,`time_checked`,`location_checked`,`current_stat`) values ('user5','user5','2022-04-17','11:41:38','location_api','registered');
insert  into `user_history`(`police_id`,`user_id`,`date_checked`,`time_checked`,`location_checked`,`current_stat`) values ('user5','user5','2022-04-17','11:41:55','location_api','registered');
insert  into `user_history`(`police_id`,`user_id`,`date_checked`,`time_checked`,`location_checked`,`current_stat`) values ('user5','user5','2022-04-17','12:48:13','location_api','registered');
insert  into `user_history`(`police_id`,`user_id`,`date_checked`,`time_checked`,`location_checked`,`current_stat`) values ('user5','user5','2022-04-17','12:49:19','location_api','registered');
insert  into `user_history`(`police_id`,`user_id`,`date_checked`,`time_checked`,`location_checked`,`current_stat`) values ('user5','user5','2022-04-17','17:14:34','location_api','registered');
insert  into `user_history`(`police_id`,`user_id`,`date_checked`,`time_checked`,`location_checked`,`current_stat`) values ('user5','user5','2022-04-17','17:15:01','location_api','registered');
insert  into `user_history`(`police_id`,`user_id`,`date_checked`,`time_checked`,`location_checked`,`current_stat`) values ('user5','123','2022-04-17','17:18:41','location_api','not_registered');
insert  into `user_history`(`police_id`,`user_id`,`date_checked`,`time_checked`,`location_checked`,`current_stat`) values ('user5','user5','2022-04-17','17:18:58','location_api','registered');
insert  into `user_history`(`police_id`,`user_id`,`date_checked`,`time_checked`,`location_checked`,`current_stat`) values ('user5','user5','2022-04-17','19:49:24','location_api','registered');
insert  into `user_history`(`police_id`,`user_id`,`date_checked`,`time_checked`,`location_checked`,`current_stat`) values ('user5','user5','2022-04-17','19:50:23','location_api','registered');
insert  into `user_history`(`police_id`,`user_id`,`date_checked`,`time_checked`,`location_checked`,`current_stat`) values ('user5','123','2022-04-17','19:51:29','location_api','not_registered');
insert  into `user_history`(`police_id`,`user_id`,`date_checked`,`time_checked`,`location_checked`,`current_stat`) values ('user5','gg59','2022-04-17','20:38:57','location_api','registered');
insert  into `user_history`(`police_id`,`user_id`,`date_checked`,`time_checked`,`location_checked`,`current_stat`) values ('user5','gg59','2022-04-17','20:42:59','location_api','registered');
insert  into `user_history`(`police_id`,`user_id`,`date_checked`,`time_checked`,`location_checked`,`current_stat`) values ('user5','user5','2022-04-17','20:43:19','location_api','registered');
insert  into `user_history`(`police_id`,`user_id`,`date_checked`,`time_checked`,`location_checked`,`current_stat`) values ('user5','user5','2022-04-17','21:10:57','location_api','registered');
insert  into `user_history`(`police_id`,`user_id`,`date_checked`,`time_checked`,`location_checked`,`current_stat`) values ('user5','user5','2022-04-17','21:11:45','location_api','registered');
insert  into `user_history`(`police_id`,`user_id`,`date_checked`,`time_checked`,`location_checked`,`current_stat`) values ('user5','user5','2022-04-17','21:13:22','location_api','registered');

/*Table structure for table `vehicle_complain` */

CREATE TABLE `vehicle_complain` (
  `complain_id` varchar(20) default NULL,
  `police_id` varchar(20) default NULL,
  `vehicle_id` varchar(20) default NULL,
  `date_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `title` varchar(100) default NULL,
  `category` varchar(30) default NULL,
  `description` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vehicle_complain` */

insert  into `vehicle_complain`(`complain_id`,`police_id`,`vehicle_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-16 16:54:56','criminal','Close_Complain','closed');
insert  into `vehicle_complain`(`complain_id`,`police_id`,`vehicle_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-16 17:01:14','criminal','Close_Complain','closed');
insert  into `vehicle_complain`(`complain_id`,`police_id`,`vehicle_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-16 17:01:32','missing','Missing_Report','report');
insert  into `vehicle_complain`(`complain_id`,`police_id`,`vehicle_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-16 17:01:46','missing','Close_Complain','closed');
insert  into `vehicle_complain`(`complain_id`,`police_id`,`vehicle_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-16 22:31:51','old','Missing_Report','one');
insert  into `vehicle_complain`(`complain_id`,`police_id`,`vehicle_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-16 22:32:10','old','Close_Complain','closed');
insert  into `vehicle_complain`(`complain_id`,`police_id`,`vehicle_id`,`date_time`,`title`,`category`,`description`) values ('0',NULL,NULL,'2022-04-17 13:26:20','Title',NULL,'Description');
insert  into `vehicle_complain`(`complain_id`,`police_id`,`vehicle_id`,`date_time`,`title`,`category`,`description`) values ('0',NULL,NULL,'2022-04-17 13:33:04','title',NULL,'describe');
insert  into `vehicle_complain`(`complain_id`,`police_id`,`vehicle_id`,`date_time`,`title`,`category`,`description`) values ('0',NULL,NULL,'2022-04-17 13:37:51','title',NULL,'describe');
insert  into `vehicle_complain`(`complain_id`,`police_id`,`vehicle_id`,`date_time`,`title`,`category`,`description`) values ('0',NULL,NULL,'2022-04-17 13:39:01','title',NULL,'describe');
insert  into `vehicle_complain`(`complain_id`,`police_id`,`vehicle_id`,`date_time`,`title`,`category`,`description`) values ('0',NULL,'user5','2022-04-17 13:48:16','title',NULL,'describe');
insert  into `vehicle_complain`(`complain_id`,`police_id`,`vehicle_id`,`date_time`,`title`,`category`,`description`) values ('0',NULL,'user5','2022-04-17 13:50:17','title',NULL,'describe');
insert  into `vehicle_complain`(`complain_id`,`police_id`,`vehicle_id`,`date_time`,`title`,`category`,`description`) values ('0',NULL,'user5','2022-04-17 13:50:26','title',NULL,'describe');
insert  into `vehicle_complain`(`complain_id`,`police_id`,`vehicle_id`,`date_time`,`title`,`category`,`description`) values ('0',NULL,'user5','2022-04-17 13:56:33','title',NULL,'describe');
insert  into `vehicle_complain`(`complain_id`,`police_id`,`vehicle_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-17 13:59:51','title',NULL,'describe');
insert  into `vehicle_complain`(`complain_id`,`police_id`,`vehicle_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-17 14:00:33','title',NULL,'describe');
insert  into `vehicle_complain`(`complain_id`,`police_id`,`vehicle_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-17 14:02:12','title',NULL,'describe');
insert  into `vehicle_complain`(`complain_id`,`police_id`,`vehicle_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-17 14:02:29','title',NULL,'describe');
insert  into `vehicle_complain`(`complain_id`,`police_id`,`vehicle_id`,`date_time`,`title`,`category`,`description`) values ('0','user5',NULL,'2022-04-17 14:22:56','title','Missing_Report','describe');
insert  into `vehicle_complain`(`complain_id`,`police_id`,`vehicle_id`,`date_time`,`title`,`category`,`description`) values ('0','user5','user5','2022-04-17 17:36:44','title','Missing_Report','describe');

/*Table structure for table `vehicle_history` */

CREATE TABLE `vehicle_history` (
  `police_id` varchar(20) default NULL,
  `vehicle_id` varchar(20) default NULL,
  `date_checked` date default NULL,
  `location_checked` varchar(100) default NULL,
  `time_checked` time default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vehicle_history` */

insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2021-02-03','abcd','12:10:10');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user6','user5','2021-02-02','abcd','11:12:13');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-16','location_api','21:21:11');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-16','location_api','21:57:00');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-16','location_api','22:26:10');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-16','location_api','22:26:54');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-16','location_api','22:31:28');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','09:02:29');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','09:12:36');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','09:13:13');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','09:14:31');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','09:14:58');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','10:06:46');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','10:08:01');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','10:21:10');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','10:22:41');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','10:31:12');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','10:35:40');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','10:36:43');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','10:42:41');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','10:43:21');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','10:43:57');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','10:56:16');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','10:57:46');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','10:58:05');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','11:10:19');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','11:21:08');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','11:40:08');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','14:15:18');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','','2022-04-17','location_api','14:15:32');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','15:38:55');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','17:19:48');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','17:26:54');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','17:27:40');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','17:36:52');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','17:37:04');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','','2022-04-17','location_api','17:37:17');
insert  into `vehicle_history`(`police_id`,`vehicle_id`,`date_checked`,`location_checked`,`time_checked`) values ('user5','user5','2022-04-17','location_api','17:37:29');

/*Table structure for table `vehicle_registration` */

CREATE TABLE `vehicle_registration` (
  `soldby` varchar(50) default NULL,
  `owner_name` varchar(50) default NULL,
  `father_name` varchar(50) default NULL,
  `dob` date default NULL,
  `address` varchar(100) default NULL,
  `state` varchar(30) default NULL,
  `city` varchar(30) default NULL,
  `pincode` int(6) default NULL,
  `phone1` varchar(13) default NULL,
  `phone2` varchar(13) default NULL,
  `email` varchar(30) default NULL,
  `aadhar_no` varchar(15) default NULL,
  `license_no` varchar(20) default NULL,
  `vehicle_no` varchar(20) default NULL,
  `engine_no` varchar(20) default NULL,
  `chassis_no` varchar(20) default NULL,
  `showroom_address` varchar(100) default NULL,
  `rc_no` varchar(20) default NULL,
  `engine_type` varchar(20) default NULL,
  `vehicle_company` varchar(30) default NULL,
  `model_no` varchar(30) default NULL,
  `rto_name` varchar(30) default NULL,
  `year_of_manufacture` varchar(5) default NULL,
  `vehicle_color` varchar(20) default NULL,
  `registration_validity` date default NULL,
  `vehicle_type` varchar(20) default NULL,
  `vehicle_image` mediumblob,
  `dealerid` varchar(20) default NULL,
  `date_of_registration` date default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vehicle_registration` */

insert  into `vehicle_registration`(`soldby`,`owner_name`,`father_name`,`dob`,`address`,`state`,`city`,`pincode`,`phone1`,`phone2`,`email`,`aadhar_no`,`license_no`,`vehicle_no`,`engine_no`,`chassis_no`,`showroom_address`,`rc_no`,`engine_type`,`vehicle_company`,`model_no`,`rto_name`,`year_of_manufacture`,`vehicle_color`,`registration_validity`,`vehicle_type`,`vehicle_image`,`dealerid`,`date_of_registration`) values ('other','Durva Kulkarni','durvakulkarni3@gmail.com','2022-03-30','101,Raghuparvati appt. , 19 ,Resham gali,  Nandlalpura\r\nindore','Madhya Pradesh','indore',452007,'09399-49270','09399-49270','durvakulkarni3@gmail.com','1234567890','lic12345','8765433','876554','user5',NULL,'8888888','diesel','Ask Innovation','456790','juhhuhuhu','2022','blue','2022-04-08','8','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0á\0\0\0á\0\0\0	m\"H\0\0\0ÌPLTEüüü÷÷÷ÿÿÿ5ó!J\0\03:úúú\0\00\0\0.\0\0,\0\0$\0\0\Z\0\0)û\"K\0\0*ô\0:\0\0!\0\0ððò††•=ÙÙÞÆÆÍŽŽœ\0\0&×G\0\0rr‚__tgg{¬¬·ÎÎÔ44SPPh??X@žž©>8z=œAºCë Iô\n@êÂÊæ0UîLgó\05ïÞãéÑØ~~µµ¾  EééìCC^\'\'JÜHLLdM\n9´Cj<©BËEç\06ê³½çˆ˜é˜¥ér†ùY61\0\0@IDATxœíkCÚJ†“Õœ„ ¨xA+Ò*`ï¥=µ­VýÿÿéD@ É&™™ÍBÈû¥6ìNÞ‡™lHv–(D–TÅìZot˜ôzÐ+mF´¥J‹ö€ªb7ÄG¼žCqŠÑW~q9ã‰¢I,ÞBèÔ\Zjåã`T OR©w1|Šˆ\nãSc$w-”O…‘Ø±p>:#­›@\"#¥“)>\Z\"¾A>#º‡a@<\"²ƒi¼©tšf›K¡i²¥ôš¦ŠH¡i¦˜ø	M%ÄMhšG&NBÓ,)â#4M’*.BÓâ!4M‘)BÓ9R\'4M+UBÓþR#4í$BÓÞ¢šv•Ð´o„h„¦]£D!4í©ŠpãÓÓ^0í— ¡i·$aM{%ª\"Üx@9¢l£iŸ\n‚šv©¢òÊpÊ(ALl1íPUå\'L•\r0¸u„¦Ý±(‹Ð´7•ŸÐJ\'4íŒMÛKhÚ£¶•Ð´+Vm\'¡iOÌÚFBÓŽ¸U~BkûMûÑ Špó%4íF‹¶‹Ð´=*?¡ÅO¨>jñŽ{Ü„Â:êœùÚVøN…É×ÎùYçÈbr´ ä	wq°¿çûV«ãÒ\"\n·Ój5|oÿà‚‘Pœ×™‚oJH1ùÌ#8õsSŒ„¢÷ê.Tm`BØƒÚ2D‹ñ•#ÔE}gE{=Â··ôöVCÔY\n•‘ðÀÙ‰ø;ÄF‡‘÷hÇ¬¡xµ·³×Evö¢!êo8Œ±vcö¼+4á•§ú&É¢N	ÕãXâ¬µç8hB\'Zç;³õ&ôÐ„žB‹0~y—hÂËx•vÖŠðh_Õžø{“öÖ‰Ðrk±³z ŒÇŽÃákJÈèm+rõ	gü~äXÞçùhÊFö+Eæy„ëÑöWŽÄcÂ{$ËFh_d±á¡?ÑLCz‹,¶¾ÛëF–C7|Ï«×{Ä+D1éÕžãùAÐå»\nf#|)³‹Þå~÷ìNˆÃ/—ƒ«Þ…ÂEt\"&#!Çÿ+áZjË®òVªT©R¥J•*UªT©R%˜\\Ó4Ëµl»ÌŒ®m‡„6eYÁfh\ngÛ¥eœ£Íþ)a©ºv”°ti\\r-þ*U\Z][FÈF†ò,·ô#P«ÿQMãËÜÌÕÁ?*:`˜—qítB%DawZï9jòü ÕUš<ŒÅ	*UL+‹÷”H‹¥€IBj\ZÅÄ¯å{ªæS+ÕMð$	‰ˆâ’0DD¯ÇI”’*5¶CY­·D)Œl#Q4œ|Û9>PÎ\"ÝŠFL,ŠRaIT\nŠ|31±üRYøÅ—i$)Û‘ˆâÜg&ô±½SAÒ^À\r©¢Ï9’¾¨†[%Ds	Qˆ\ZrˆZ^š˜EˆAo™	1§‹ÀLBb|¥½º0«ý³\0³	Ã0Ÿ1#d3d¾\nG]Þ2=Fœ,r²_#r—)¢Hór^‡#²ž/çŠ\\€¼PDqÄ™Ä:ø3[¾ÿÜ`Äøã\n‚?Ì\0°ŸßxÎàL\"8…™ç	0!8‰?³Äw×7Ãû“ÿNî‡7×ï2[Ö~ò¥DD‡§é¦¯‡£CíNþ1\Z^§7>…¤ óFPÄNÊ­¨»án¡pËðNÞ<€>pój=¿É›w\'qºä‰¬Z½|!˜\\§’ÁæW\nßòW²ôd„B/âˆ¿GY€!âèwú8Ô9°ñ,zËíO6ß”ñO¤Gz]6m=û«ŸÀïóCÄû•ô)p`\"ÁgÅïË{RiCLñdÑþ@Ü7¸%´NÅÏ\0¸‚ðò†ˆçÓ{§Î\n\"§×Ïûàûkà\ZEÂ/¤º§¡á8`ˆx¾%§ð«^ŒkD[ðmqä5î0€!â]ÃßåF¤Eˆ¸§a÷P€»ÿ>ôÓ¢(Ó˜ÆDñw4F\0ŽGó÷8Ï¨Ö˜;¨îcÊ8n>¢¾´G#!j6C´ÇÆñø7ã‹´ŒkŽ›Ìí§QN\"ÇÍÑS·À3Ìà	±SRBÜ>ï¦BŽ›»Ï·è4XÇÈöèI~!ÜÛÇ÷Íf¬`Çãfóýã­‹_„L!š4Ç/ÄäöéùÃèácóEFžŸn\'´åOhÃØÄ•\Z/ríö§ÏŸ?jÛ.ýml\nñ„j‹ßÔEÇûE÷0»„B¡Ù…¨»ø.&“ˆO!…Ðd)n+B‰Ì•)¡HI„æ’H2Kéd*‰”ÒM%‘æµ\"”ÊL™’Š”Hh&‰D«¡\\&Ê”V¤TBI¤:­ST|™‹´\"ÌèX´ÈF+Â4]¦Ô\"¥DºÏŠp‹	‹=É‡aE˜ÙµH)Ø,;¡«’þ\r!ÜÁTÅ%¹o‘CJ¥‰’\nÂ\"Ë”nr+7b¨¡{|ùR\n:¡«ãKðZîB…4…(¢ÒŠ7iòpö‹VÊ|Z%ûÀ3Î³½ŽJ²sfÈ´= ºsBd¿”½32fìgõõw×pÝ2vÏ™Upâ•“ÄªŒùá1\",½ò(@Â‚ƒ½Î×âzÁ<ÐÁ±qf_ø˜\r‰Š3ý]nX¢l`±!f_OÚ¢Ö’ávùÉO`.$5h®Û%ØÒˆ&ÀTLµ€PÀÂD5?\Z\\%ÌD, _0ÀabÁæaF	S5PÄwÙyQv9¸‚¸MŒhÉ4ä–¦œ\n	aœQqP×®\\·r€Ù=f×]w¼™,wfWîöF—¼Óùåõ·\0\0\0\0IEND®B`‚','user5','2022-03-05');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;