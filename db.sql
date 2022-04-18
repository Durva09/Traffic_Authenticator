﻿/*
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

insert  into `medical_report`(`userid`,`title1`,`doc1`,`title2`,`doc2`,`title3`,`doc3`,`title4`,`doc4`,`title5`,`doc5`,`title6`,`doc6`,`title7`,`doc7`,`title8`,`doc8`,`title9`,`doc9`,`title10`,`doc10`) values ('user5','abcd','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0	m\"H\0\0\0�PLTE���������5�!J\0\03:���\0\00\0\0.\0\0,\0\0$\0\0\Z\0\0)�\"K\0\0*�\0:\0\0!\0\0��򆆕=�����͎��\0\0&�G\0\0rr�__tgg{������44SPPh??X@���>8z=�A�C� I�\n@����0U�Lg�\05������~~����  E���CC^\'\'J�HLLdM\n9�Cj<�B�E�\06곽爘阥�r��Y61\0\0@IDATx��kC�J��՜� �xA+�*`�=��V����D@ �&����B���6�Nއ�lHv�(D�T��Zot��z�+mF��J����b7��G��Cq��W~q9㉢I,�B��\Zj��`T��OR�w1|��\n��Sc$w-�O��رp>:#��@\"#��)>\Z\"��A>#��a@<\"��i��t�f�K�i������H�i���	M%�Mh�G&NB�,)�#4M�*.B��!4M�)B�9R\'4M�+UB��R#4�$B�ށ��v�дo�h��]�D!4���p���^0� �i�$aM{%�\"�x@9�l�i�\n��v����p�(ALl1�PU�\'L�\r0��u��ݱ(�д7���J\'4�M�Kh����д+Vm\'�iO��FBӎ�U~Bk�M�Ѡ�p�%4�F���д=*?��O�>j�{܄�:ꜝ��V�N�����Y��br� �	wq�����V���\"\n��j5|o�����P�ם���oJH1��#8�sS�����.Tm`B؃�2D��#�E}gE{=·���VC�Y\n����ى�;�F���h���x����Ev��!�o8��vc��+4ᕧ�&ɢN	��X���8hB\'Z�;���&�Є�B��0~y�h��x�v֊�h_՞�{���։�rk��z �ǎ��kJ��m+r�	g�~�X���h�F�+E�y����W��c�{$�Fh_d��?�LCz�,����F�C7|ϫ�{�+D1�����A��\nf#|)����~���N��/���ޅ�Et\"&#!��+�Zjˮ�V�T�R�J�*U�T�R%�\\�4˵l�̌�m��6eY�fh\ngۥe����)a��v��ti\\r-�*U\Z][FȐF��,��#P��QM������?*:`��q�tB%DawZ��9j����U�<��	*UL+���H���IBj\Z�į�{��S+�M�$	���0DD��I��*5�CY��D)�l#Q4�|�9>�P�\"݊FL,�RaIT\n�|31��RY�ŗi$)ۑ���g&���SA�^�\r���9����[%Ds	Q�\Zr�Z^��E�Ao��	�1���LBb|���0���\0�	Í0�1#d3d�\nG]�2=F�,r�_#r�)�H�r^�#��/�\\��PDqę�:�3[���`���\n�?�\0���x��L\"8���	0!8�?���w�7����N�7��2[�~�DD��馯��C�N�1\Z^�7>�� �FP�Nʭ���n�p��N�<�>p�j=���w\'q�䉬Z�|!�\\����W\n��W��d�B/∿GY�!��w�8�9��,z��O6ߔ�O�Gz]6m=������C����)p`�\"�g���{RiCL�d��@�7�%�N��\0��������{��\n\"������k�\ZE�/�����8`�x�%��^�kD[�mq�5�0�!�]Á��F�E���a�P���>�Ӣ(Ә�D�w4F\0�G��8Ϩ֘;��c�8n>���G#!j6C�����7㋴�k����QN\"���S��3��	�SRB�>�B���Ϸ�4X����I~!�����f�`��f��㭋_�L!��4�/��������c�EF��n\'��Oh��ĕ\Z/r���ϟ?j�.��ml\n�j���E��E�0���B�م���.&��O!��d)n+B�̕)�HI��H2K�d*���M%��\"��L����Hh&�D��\\&ʔV�TBI�:�ST|���\"��X��F+�4]��\"��D�ϊp�	�=ɇaE�ٵH)�,;����\r!ܐ�T�%�o�C�J���\n�\"˔nr+7b��{|��R\n:���K�Z�B��4�(�Ҋ7i�p��V�|Z%��3����J�sfȴ= ��sBd���32f�g��w�p�2v��Up�������1\",��(@�����z�<���qf_��\r��3�]nX��l`��!f_O�����v��O`.$5h��%�҈&�TL��P��D5?\Z\\%�D, _0�ab��aF	S5Pďw�yQv9���M�h�4䖦�\n	a�QqP׮\\�r��=f�]w��,wfW��F�������\0\0\0\0IEND�B`�','abcd','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0	m\"H\0\0\0�PLTE���������5�!J\0\03:���\0\00\0\0.\0\0,\0\0$\0\0\Z\0\0)�\"K\0\0*�\0:\0\0!\0\0��򆆕=�����͎��\0\0&�G\0\0rr�__tgg{������44SPPh??X@���>8z=�A�C� I�\n@����0U�Lg�\05������~~����  E���CC^\'\'J�HLLdM\n9�Cj<�B�E�\06곽爘阥�r��Y61\0\0@IDATx��kC�J��՜� �xA+�*`�=��V����D@ �&����B���6�Nއ�lHv�(D�T��Zot��z�+mF��J����b7��G��Cq��W~q9㉢I,�B��\Zj��`T��OR�w1|��\n��Sc$w-�O��رp>:#��@\"#��)>\Z\"��A>#��a@<\"��i��t�f�K�i������H�i���	M%�Mh�G&NB�,)�#4M�*.B��!4M�)B�9R\'4M�+UB��R#4�$B�ށ��v�дo�h��]�D!4���p���^0� �i�$aM{%�\"�x@9�l�i�\n��v����p�(ALl1�PU�\'L�\r0��u��ݱ(�д7���J\'4�M�Kh����д+Vm\'�iO��FBӎ�U~Bk�M�Ѡ�p�%4�F���д=*?��O�>j�{܄�:ꜝ��V�N�����Y��br� �	wq�����V���\"\n��j5|o�����P�ם���oJH1��#8�sS�����.Tm`B؃�2D��#�E}gE{=·���VC�Y\n����ى�;�F���h���x����Ev��!�o8��vc��+4ᕧ�&ɢN	��X���8hB\'Z�;���&�Є�B��0~y�h��x�v֊�h_՞�{���։�rk��z �ǎ��kJ��m+r�	g�~�X���h�F�+E�y����W��c�{$�Fh_d��?�LCz�,����F�C7|ϫ�{�+D1�����A��\nf#|)����~���N��/���ޅ�Et\"&#!��+�Zjˮ�V�T�R�J�*U�T�R%�\\�4˵l�̌�m��6eY�fh\ngۥe����)a��v��ti\\r-�*U\Z][FȐF��,��#P��QM������?*:`��q�tB%DawZ��9j����U�<��	*UL+���H���IBj\Z�į�{��S+�M�$	���0DD��I��*5�CY��D)�l#Q4�|�9>�P�\"݊FL,�RaIT\n�|31��RY�ŗi$)ۑ���g&���SA�^�\r���9����[%Ds	Q�\Zr�Z^��E�Ao��	�1���LBb|���0���\0�	Í0�1#d3d�\nG]�2=F�,r�_#r�)�H�r^�#��/�\\��PDqę�:�3[���`���\n�?�\0���x��L\"8���	0!8�?���w�7����N�7��2[�~�DD��馯��C�N�1\Z^�7>�� �FP�Nʭ���n�p��N�<�>p�j=���w\'q�䉬Z�|!�\\����W\n��W��d�B/∿GY�!��w�8�9��,z��O6ߔ�O�Gz]6m=������C����)p`�\"�g���{RiCL�d��@�7�%�N��\0��������{��\n\"������k�\ZE�/�����8`�x�%��^�kD[�mq�5�0�!�]Á��F�E���a�P���>�Ӣ(Ә�D�w4F\0�G��8Ϩ֘;��c�8n>���G#!j6C�����7㋴�k����QN\"���S��3��	�SRB�>�B���Ϸ�4X����I~!�����f�`��f��㭋_�L!��4�/��������c�EF��n\'��Oh��ĕ\Z/r���ϟ?j�.��ml\n�j���E��E�0���B�م���.&��O!��d)n+B�̕)�HI��H2K�d*���M%��\"��L����Hh&�D��\\&ʔV�TBI�:�ST|���\"��X��F+�4]��\"��D�ϊp�	�=ɇaE�ٵH)�,;����\r!ܐ�T�%�o�C�J���\n�\"˔nr+7b��{|��R\n:���K�Z�B��4�(�Ҋ7i�p��V�|Z%��3����J�sfȴ= ��sBd���32f�g��w�p�2v��Up�������1\",��(@�����z�<���qf_��\r��3�]nX��l`��!f_O�����v��O`.$5h��%�҈&�TL��P��D5?\Z\\%�D, _0�ab��aF	S5Pďw�yQv9���M�h�4䖦�\n	a�QqP׮\\�r��=f�]w��,wfW��F�������\0\0\0\0IEND�B`�','logo','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0��j\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0GIDATx^�wTT纇��w�{ֺ��{��QcW�b�n�]�Ŋb�1��Kb��[��؍,��\rT�\"�(*(JP`���q� nȞO�߳����+{��������\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'�p\'�\'�Ua�	��\'��VW)k�������\"<>U�^<���@uc�墯�lW�����Z�{��Ճ=֌�z˅ɈU�+Uԯ��@GIAz�%wҽ������Tt^qI��+N<i8k7Bc_jՍ�IU�gXN���7qex��9h\\��-*�اus��qIĝt��AG��cU�V�W�r�p�n�Ŧh��#3��W���7iz_��c�O��2��u7�bt�Ͱ��fP��q�Ϛ��uH�]u7�����]?>Q��\'�����fa�=��%�S�1�B]���I�]u7���19��e9��r��-�)8��7d��\Z\"���m�O}ʠ���*9� G�P�ӭ��ּ,[�]4r3�����xuw��d+C#��l7�Ll�Rw�A��¨��yA=q^/�0��c;q��UYl�06R#�iQvC�Zdl�P�{�\r勉�;�줷�V2��fa���y�C�\"��^�)^=���+6��z�Q1[�WU(ԓSz9�Pw�0��)�������V��^�qT�U���+�m2^U�P����C��¨{�3;���U�g��K��������S�/[SnX��Y�[_��%�0*��ۅ���Qwe�\\j�ȉ8�m9��r��%��ra�\n�§aiMU�.�����zq�6$>�n�nF��N�>�F���`�ޟ3Pw�Pw�(���M��]�\"2�<ԝ�Φ���.�{�5a�Fו���.�M%[N�������s:u��;��%�����PG�l���u��6Rn\"����E�ra��)w�nw�=-+71-ǩH����Xw`ɳ�Ӓ��������Fuk��2�6�v�-I�\Z�s6��z_�A���N���݄�lۻ+�q֗*)H=<�b���*b�\n����Y.�ٞ���2i�W=����ŝt��&>9��G��3l������cM��t�r���˂P�&����ŝt���\r:�T�[wE���-y���YE�2~�G^�9��^o� \n�v�nwҽ�Z�ߙ����ޙ����-��*|�^�IԳ��\n���w��o��:��л8���D�� �76�gPw�C�� ���ep��U�5=ƚ�P wO<k���v���r��Yu��`p���}S)�����A��1W��1��]��YuO8fp蓆�\\�w���.��,�#���f�C=9�����.��,�����\Z}��4�j�?v�n�nEu�f?���7�����k�N�{t�n�n���s���Ϡ~�S1�ęζ\'Ü��5l���Z�P����C�͢x�5�bf�z|B�]���T��-��ٞ+�%k����Huk�z�_��C:�J\nV7�����֔�z9�Pw�0���0~�ڑ���Ou7�ѝ|�Pw���%�nԽ�!Hw���ҽ���u��Fw0P8�ᇿOB>C�����g��z�h����� �Nuw���8��C������4qؐ��?[,999cG������~q�y�f�߮��G\\�޹�QQQA���{�n�t!��݋b��)�w�P�^�{�z�J?$A��Ϛ�Z3k�8�x�y��U׸z�J�}�233_�~\r���\'[0�B�p�F��?����ޏ����b�������`Ў?z��V�-h�̗_�3����R0��<yr/:\Z��f;6�n���s�l���*{x�|ZZZ^^^nnnzz:ĭY���I��#ϟ?ך��GFF&\'\'c�L` �\\�r%Jjg� H�r?�0�������NX�����nڬj����xB�۷�+U�Q��eK�z�\0�5t�T�c��5	����lX��w}�-�7���UjT��y�&�A8Z�b�ys���di��u�6n\\�L�cG��ܱ�v�\Z(��~����_|��Ο߲y�i��x�-W��R��/_�t�豶-[�,zGk�Ǐ4��)F��Qvvv�n��5.���v��B�v������#u����t�ѵ+2��!籋��͚O�:m��]ؽv�n��۷m��5�VӦ|X����+F��R\"EA�����Λ5c�At��Ç7k�yˡ����Ί����(��y@��\r<�޺y�!����`�M�I�Fh������/wh�n��+G���k�f҄	�AA��kS�����,�J��]�`rE\\�t�c�=kւ������o�;w��V*_��#�<!!�+6\Z�o�«ikoo-�(�{��_�FQ�FM�-031&o��A�K/�D�ޑJ���ը1�$Bl�B���|������z�{��3�m�+�-�=6&���O/�۷nᎁ��r��fa2�CP���aN�<	��ۏ��av\"�Ga�ʧO�B��{����.�\rE2;�`a�1Cc@w?�a�.^�<y�DT		Ad;���{��U�t�.Z���a�=H͛7�Z�vzD����q+Ю|���Ho��7l��pg��N��K��,�kK�;�o#O������pcG�Fނ<��ב��oӶ]�փ��U����Ԏ��C������s��1m:Z�X\\�T��C0�P�``t�q����Q�0���زi3�}�+�>�?X¢��={PC�\r�ZGX���3|�/b����@Xfhg�@�� ��g�6oܘ�2R�ߘ���˗/�̚��){FFƳ���ӧ��Ch�AT�={�L�\'Z����HW0`�\Z�\"�ٵc\'�sT\\�p��<����3��aV�\Z\0�<�t��]�\Z�\n�bcc����m-���:�T�`l\'%&�p��)9Pw�0�N��nԽ�A�͢��X�\"{F��\\\\?�\'			����w>%Hӑ� ��v?~� i��aV����#Y�����My�}�A�� ;$kҰQú����;k�~�O�F0@���`�P��	��۳[�J�+x�-��Æ���[*�)k������C�n���;%�n�7�__�__����_��Y�&8���V���vHp0V���ܿ|�/\',��/\\���������(�c9��w�����a�a+~Y���ׯ�ؾ��ׯ_cq��m[��/]ǵ��X�����k7�d�_]�� ��bKa���-��z�Ƌ/p#:w�,��8���1~P��6-[~Ӯ=6��+�K�vvV.��^\\9.��Ç���κ��,�Ck��ر��ó^e=y�ĳf�1#GaZ��3�M�ѵ��7kT��|�2L��{�.uk��6��B#lߦ-��ڣ⒅�*U�8zD���G�K-�Ͻ{��>w��ߏ�nйs��̭U���A�K�����Zp`�~��� �>}�Բ�l�\0�#�͚6nܮu�uk֢���˕*=�o�����;��k����ӣ��|���ѣq�=�Яwo�b��e�%c���~�=��,����~�	�l���}b�����gS\'M�ߧ�u�T����/�7`��srr�V�T�ؑ���a���K�~U\nJ�$!�}�.�,�Z�M\0^v��#�~�����j�\r�1U�0m��س{7.)\"\"�w���k@M�����O4�8s����.�.��@���T��[{{�:*_�9.�O/?�auk��M	W���a�#X*�L��ƌ������n�\\����n�ï]��H�L�}gϜ��])�����5tG\Z��	��:i�d�H?��`ʇͰ\n�F�	u�oK��b�S�o`?�r\'�صSg���TȠ0+#�Ałdh�_�z�����;r�	kq���q��11kV��.�4ث{莗�T����˷��T�j�P�cvЯ?�*8ѱ,i�Y�Q�p���Sgq1W����>��_�.+�M\n�?���H�N|��e66o��{p[�>u\Zٹc�������������<reԅ�5׬Z��	0	و�R#$�����k0�vl��C�CBJ�E��3�gw�\"8r#�����ЮU�U+W� r苌H�Ps���v1J7h��שQ322�l����@��Dߍ�X����x+EXHT��\n�C/��\"��ǝt�ㆳ_6��u�.tw����wU�m۲�:��1��z�\n~#oT�>d��@�����\'�� fĆu�!wߴafS��$T�жJbbֺ@���,zپm$C~�uB�&^��1~0N����W���7(�̲�<��ը1�t��\'�g�r�(�IJ�}�{??�%4�k��sg����q�H����?�2h�`��2���j�����������,ˍ>�u\'�_�Y���)�蕝��*��wU��򑺤���\0�̳g��=�1�!m�r���OG��,$�8�t�a�HA����!ji�M���T�Fw8X���Ў �A���N{fA+��P���6m-gg�\n\n`�V�m#�Flh�i��Rɕ������W���r�Iw���s?�-Ȏ0P�H�ZŽ�\"��Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��j��q��^[(�\0\0\0\0IEND�B`�','pdf','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0	m\"H\0\0\0�PLTE���������5�!J\0\03:���\0\00\0\0.\0\0,\0\0$\0\0\Z\0\0)�\"K\0\0*�\0:\0\0!\0\0��򆆕=�����͎��\0\0&�G\0\0rr�__tgg{������44SPPh??X@���>8z=�A�C� I�\n@����0U�Lg�\05������~~����  E���CC^\'\'J�HLLdM\n9�Cj<�B�E�\06곽爘阥�r��Y61\0\0@IDATx��kC�J��՜� �xA+�*`�=��V����D@ �&����B���6�Nއ�lHv�(D�T��Zot��z�+mF��J����b7��G��Cq��W~q9㉢I,�B��\Zj��`T��OR�w1|��\n��Sc$w-�O��رp>:#��@\"#��)>\Z\"��A>#��a@<\"��i��t�f�K�i������H�i���	M%�Mh�G&NB�,)�#4M�*.B��!4M�)B�9R\'4M�+UB��R#4�$B�ށ��v�дo�h��]�D!4���p���^0� �i�$aM{%�\"�x@9�l�i�\n��v����p�(ALl1�PU�\'L�\r0��u��ݱ(�д7���J\'4�M�Kh����д+Vm\'�iO��FBӎ�U~Bk�M�Ѡ�p�%4�F���д=*?��O�>j�{܄�:ꜝ��V�N�����Y��br� �	wq�����V���\"\n��j5|o�����P�ם���oJH1��#8�sS�����.Tm`B؃�2D��#�E}gE{=·���VC�Y\n����ى�;�F���h���x����Ev��!�o8��vc��+4ᕧ�&ɢN	��X���8hB\'Z�;���&�Є�B��0~y�h��x�v֊�h_՞�{���։�rk��z �ǎ��kJ��m+r�	g�~�X���h�F�+E�y����W��c�{$�Fh_d��?�LCz�,����F�C7|ϫ�{�+D1�����A��\nf#|)����~���N��/���ޅ�Et\"&#!��+�Zjˮ�V�T�R�J�*U�T�R%�\\�4˵l�̌�m��6eY�fh\ngۥe����)a��v��ti\\r-�*U\Z][FȐF��,��#P��QM������?*:`��q�tB%DawZ��9j����U�<��	*UL+���H���IBj\Z�į�{��S+�M�$	���0DD��I��*5�CY��D)�l#Q4�|�9>�P�\"݊FL,�RaIT\n�|31��RY�ŗi$)ۑ���g&���SA�^�\r���9����[%Ds	Q�\Zr�Z^��E�Ao��	�1���LBb|���0���\0�	Í0�1#d3d�\nG]�2=F�,r�_#r�)�H�r^�#��/�\\��PDqę�:�3[���`���\n�?�\0���x��L\"8���	0!8�?���w�7����N�7��2[�~�DD��馯��C�N�1\Z^�7>�� �FP�Nʭ���n�p��N�<�>p�j=���w\'q�䉬Z�|!�\\����W\n��W��d�B/∿GY�!��w�8�9��,z��O6ߔ�O�Gz]6m=������C����)p`�\"�g���{RiCL�d��@�7�%�N��\0��������{��\n\"������k�\ZE�/�����8`�x�%��^�kD[�mq�5�0�!�]Á��F�E���a�P���>�Ӣ(Ә�D�w4F\0�G��8Ϩ֘;��c�8n>���G#!j6C�����7㋴�k����QN\"���S��3��	�SRB�>�B���Ϸ�4X����I~!�����f�`��f��㭋_�L!��4�/��������c�EF��n\'��Oh��ĕ\Z/r���ϟ?j�.��ml\n�j���E��E�0���B�م���.&��O!��d)n+B�̕)�HI��H2K�d*���M%��\"��L����Hh&�D��\\&ʔV�TBI�:�ST|���\"��X��F+�4]��\"��D�ϊp�	�=ɇaE�ٵH)�,;����\r!ܐ�T�%�o�C�J���\n�\"˔nr+7b��{|��R\n:���K�Z�B��4�(�Ҋ7i�p��V�|Z%��3����J�sfȴ= ��sBd���32f�g��w�p�2v��Up�������1\",��(@�����z�<���qf_��\r��3�]nX��l`��!f_O�����v��O`.$5h��%�҈&�TL��P��D5?\Z\\%�D, _0�ab��aF	S5Pďw�yQv9���M�h�4䖦�\n	a�QqP׮\\�r��=f�]w��,wfW��F�������\0\0\0\0IEND�B`�','abcd','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0	m\"H\0\0\0�PLTE���������5�!J\0\03:���\0\00\0\0.\0\0,\0\0$\0\0\Z\0\0)�\"K\0\0*�\0:\0\0!\0\0��򆆕=�����͎��\0\0&�G\0\0rr�__tgg{������44SPPh??X@���>8z=�A�C� I�\n@����0U�Lg�\05������~~����  E���CC^\'\'J�HLLdM\n9�Cj<�B�E�\06곽爘阥�r��Y61\0\0@IDATx��kC�J��՜� �xA+�*`�=��V����D@ �&����B���6�Nއ�lHv�(D�T��Zot��z�+mF��J����b7��G��Cq��W~q9㉢I,�B��\Zj��`T��OR�w1|��\n��Sc$w-�O��رp>:#��@\"#��)>\Z\"��A>#��a@<\"��i��t�f�K�i������H�i���	M%�Mh�G&NB�,)�#4M�*.B��!4M�)B�9R\'4M�+UB��R#4�$B�ށ��v�дo�h��]�D!4���p���^0� �i�$aM{%�\"�x@9�l�i�\n��v����p�(ALl1�PU�\'L�\r0��u��ݱ(�д7���J\'4�M�Kh����д+Vm\'�iO��FBӎ�U~Bk�M�Ѡ�p�%4�F���д=*?��O�>j�{܄�:ꜝ��V�N�����Y��br� �	wq�����V���\"\n��j5|o�����P�ם���oJH1��#8�sS�����.Tm`B؃�2D��#�E}gE{=·���VC�Y\n����ى�;�F���h���x����Ev��!�o8��vc��+4ᕧ�&ɢN	��X���8hB\'Z�;���&�Є�B��0~y�h��x�v֊�h_՞�{���։�rk��z �ǎ��kJ��m+r�	g�~�X���h�F�+E�y����W��c�{$�Fh_d��?�LCz�,����F�C7|ϫ�{�+D1�����A��\nf#|)����~���N��/���ޅ�Et\"&#!��+�Zjˮ�V�T�R�J�*U�T�R%�\\�4˵l�̌�m��6eY�fh\ngۥe����)a��v��ti\\r-�*U\Z][FȐF��,��#P��QM������?*:`��q�tB%DawZ��9j����U�<��	*UL+���H���IBj\Z�į�{��S+�M�$	���0DD��I��*5�CY��D)�l#Q4�|�9>�P�\"݊FL,�RaIT\n�|31��RY�ŗi$)ۑ���g&���SA�^�\r���9����[%Ds	Q�\Zr�Z^��E�Ao��	�1���LBb|���0���\0�	Í0�1#d3d�\nG]�2=F�,r�_#r�)�H�r^�#��/�\\��PDqę�:�3[���`���\n�?�\0���x��L\"8���	0!8�?���w�7����N�7��2[�~�DD��馯��C�N�1\Z^�7>�� �FP�Nʭ���n�p��N�<�>p�j=���w\'q�䉬Z�|!�\\����W\n��W��d�B/∿GY�!��w�8�9��,z��O6ߔ�O�Gz]6m=������C����)p`�\"�g���{RiCL�d��@�7�%�N��\0��������{��\n\"������k�\ZE�/�����8`�x�%��^�kD[�mq�5�0�!�]Á��F�E���a�P���>�Ӣ(Ә�D�w4F\0�G��8Ϩ֘;��c�8n>���G#!j6C�����7㋴�k����QN\"���S��3��	�SRB�>�B���Ϸ�4X����I~!�����f�`��f��㭋_�L!��4�/��������c�EF��n\'��Oh��ĕ\Z/r���ϟ?j�.��ml\n�j���E��E�0���B�م���.&��O!��d)n+B�̕)�HI��H2K�d*���M%��\"��L����Hh&�D��\\&ʔV�TBI�:�ST|���\"��X��F+�4]��\"��D�ϊp�	�=ɇaE�ٵH)�,;����\r!ܐ�T�%�o�C�J���\n�\"˔nr+7b��{|��R\n:���K�Z�B��4�(�Ҋ7i�p��V�|Z%��3����J�sfȴ= ��sBd���32f�g��w�p�2v��Up�������1\",��(@�����z�<���qf_��\r��3�]nX��l`��!f_O�����v��O`.$5h��%�҈&�TL��P��D5?\Z\\%�D, _0�ab��aF	S5Pďw�yQv9���M�h�4䖦�\n	a�QqP׮\\�r��=f�]w��,wfW��F�������\0\0\0\0IEND�B`�',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

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

insert  into `personal_drive`(`userid`,`title1`,`doc1`,`title2`,`doc2`,`title3`,`doc3`,`title4`,`doc4`,`title5`,`doc5`,`title6`,`doc6`,`title7`,`doc7`,`title8`,`doc8`,`title9`,`doc9`,`title10`,`doc10`) values ('user5','abcd','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0	m\"H\0\0\0�PLTE���������5�!J\0\03:���\0\00\0\0.\0\0,\0\0$\0\0\Z\0\0)�\"K\0\0*�\0:\0\0!\0\0��򆆕=�����͎��\0\0&�G\0\0rr�__tgg{������44SPPh??X@���>8z=�A�C� I�\n@����0U�Lg�\05������~~����  E���CC^\'\'J�HLLdM\n9�Cj<�B�E�\06곽爘阥�r��Y61\0\0@IDATx��kC�J��՜� �xA+�*`�=��V����D@ �&����B���6�Nއ�lHv�(D�T��Zot��z�+mF��J����b7��G��Cq��W~q9㉢I,�B��\Zj��`T��OR�w1|��\n��Sc$w-�O��رp>:#��@\"#��)>\Z\"��A>#��a@<\"��i��t�f�K�i������H�i���	M%�Mh�G&NB�,)�#4M�*.B��!4M�)B�9R\'4M�+UB��R#4�$B�ށ��v�дo�h��]�D!4���p���^0� �i�$aM{%�\"�x@9�l�i�\n��v����p�(ALl1�PU�\'L�\r0��u��ݱ(�д7���J\'4�M�Kh����д+Vm\'�iO��FBӎ�U~Bk�M�Ѡ�p�%4�F���д=*?��O�>j�{܄�:ꜝ��V�N�����Y��br� �	wq�����V���\"\n��j5|o�����P�ם���oJH1��#8�sS�����.Tm`B؃�2D��#�E}gE{=·���VC�Y\n����ى�;�F���h���x����Ev��!�o8��vc��+4ᕧ�&ɢN	��X���8hB\'Z�;���&�Є�B��0~y�h��x�v֊�h_՞�{���։�rk��z �ǎ��kJ��m+r�	g�~�X���h�F�+E�y����W��c�{$�Fh_d��?�LCz�,����F�C7|ϫ�{�+D1�����A��\nf#|)����~���N��/���ޅ�Et\"&#!��+�Zjˮ�V�T�R�J�*U�T�R%�\\�4˵l�̌�m��6eY�fh\ngۥe����)a��v��ti\\r-�*U\Z][FȐF��,��#P��QM������?*:`��q�tB%DawZ��9j����U�<��	*UL+���H���IBj\Z�į�{��S+�M�$	���0DD��I��*5�CY��D)�l#Q4�|�9>�P�\"݊FL,�RaIT\n�|31��RY�ŗi$)ۑ���g&���SA�^�\r���9����[%Ds	Q�\Zr�Z^��E�Ao��	�1���LBb|���0���\0�	Í0�1#d3d�\nG]�2=F�,r�_#r�)�H�r^�#��/�\\��PDqę�:�3[���`���\n�?�\0���x��L\"8���	0!8�?���w�7����N�7��2[�~�DD��馯��C�N�1\Z^�7>�� �FP�Nʭ���n�p��N�<�>p�j=���w\'q�䉬Z�|!�\\����W\n��W��d�B/∿GY�!��w�8�9��,z��O6ߔ�O�Gz]6m=������C����)p`�\"�g���{RiCL�d��@�7�%�N��\0��������{��\n\"������k�\ZE�/�����8`�x�%��^�kD[�mq�5�0�!�]Á��F�E���a�P���>�Ӣ(Ә�D�w4F\0�G��8Ϩ֘;��c�8n>���G#!j6C�����7㋴�k����QN\"���S��3��	�SRB�>�B���Ϸ�4X����I~!�����f�`��f��㭋_�L!��4�/��������c�EF��n\'��Oh��ĕ\Z/r���ϟ?j�.��ml\n�j���E��E�0���B�م���.&��O!��d)n+B�̕)�HI��H2K�d*���M%��\"��L����Hh&�D��\\&ʔV�TBI�:�ST|���\"��X��F+�4]��\"��D�ϊp�	�=ɇaE�ٵH)�,;����\r!ܐ�T�%�o�C�J���\n�\"˔nr+7b��{|��R\n:���K�Z�B��4�(�Ҋ7i�p��V�|Z%��3����J�sfȴ= ��sBd���32f�g��w�p�2v��Up�������1\",��(@�����z�<���qf_��\r��3�]nX��l`��!f_O�����v��O`.$5h��%�҈&�TL��P��D5?\Z\\%�D, _0�ab��aF	S5Pďw�yQv9���M�h�4䖦�\n	a�QqP׮\\�r��=f�]w��,wfW��F�������\0\0\0\0IEND�B`�','profile','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0	m\"H\0\0\0�PLTE���������5�!J\0\03:���\0\00\0\0.\0\0,\0\0$\0\0\Z\0\0)�\"K\0\0*�\0:\0\0!\0\0��򆆕=�����͎��\0\0&�G\0\0rr�__tgg{������44SPPh??X@���>8z=�A�C� I�\n@����0U�Lg�\05������~~����  E���CC^\'\'J�HLLdM\n9�Cj<�B�E�\06곽爘阥�r��Y61\0\0@IDATx��kC�J��՜� �xA+�*`�=��V����D@ �&����B���6�Nއ�lHv�(D�T��Zot��z�+mF��J����b7��G��Cq��W~q9㉢I,�B��\Zj��`T��OR�w1|��\n��Sc$w-�O��رp>:#��@\"#��)>\Z\"��A>#��a@<\"��i��t�f�K�i������H�i���	M%�Mh�G&NB�,)�#4M�*.B��!4M�)B�9R\'4M�+UB��R#4�$B�ށ��v�дo�h��]�D!4���p���^0� �i�$aM{%�\"�x@9�l�i�\n��v����p�(ALl1�PU�\'L�\r0��u��ݱ(�д7���J\'4�M�Kh����д+Vm\'�iO��FBӎ�U~Bk�M�Ѡ�p�%4�F���д=*?��O�>j�{܄�:ꜝ��V�N�����Y��br� �	wq�����V���\"\n��j5|o�����P�ם���oJH1��#8�sS�����.Tm`B؃�2D��#�E}gE{=·���VC�Y\n����ى�;�F���h���x����Ev��!�o8��vc��+4ᕧ�&ɢN	��X���8hB\'Z�;���&�Є�B��0~y�h��x�v֊�h_՞�{���։�rk��z �ǎ��kJ��m+r�	g�~�X���h�F�+E�y����W��c�{$�Fh_d��?�LCz�,����F�C7|ϫ�{�+D1�����A��\nf#|)����~���N��/���ޅ�Et\"&#!��+�Zjˮ�V�T�R�J�*U�T�R%�\\�4˵l�̌�m��6eY�fh\ngۥe����)a��v��ti\\r-�*U\Z][FȐF��,��#P��QM������?*:`��q�tB%DawZ��9j����U�<��	*UL+���H���IBj\Z�į�{��S+�M�$	���0DD��I��*5�CY��D)�l#Q4�|�9>�P�\"݊FL,�RaIT\n�|31��RY�ŗi$)ۑ���g&���SA�^�\r���9����[%Ds	Q�\Zr�Z^��E�Ao��	�1���LBb|���0���\0�	Í0�1#d3d�\nG]�2=F�,r�_#r�)�H�r^�#��/�\\��PDqę�:�3[���`���\n�?�\0���x��L\"8���	0!8�?���w�7����N�7��2[�~�DD��馯��C�N�1\Z^�7>�� �FP�Nʭ���n�p��N�<�>p�j=���w\'q�䉬Z�|!�\\����W\n��W��d�B/∿GY�!��w�8�9��,z��O6ߔ�O�Gz]6m=������C����)p`�\"�g���{RiCL�d��@�7�%�N��\0��������{��\n\"������k�\ZE�/�����8`�x�%��^�kD[�mq�5�0�!�]Á��F�E���a�P���>�Ӣ(Ә�D�w4F\0�G��8Ϩ֘;��c�8n>���G#!j6C�����7㋴�k����QN\"���S��3��	�SRB�>�B���Ϸ�4X����I~!�����f�`��f��㭋_�L!��4�/��������c�EF��n\'��Oh��ĕ\Z/r���ϟ?j�.��ml\n�j���E��E�0���B�م���.&��O!��d)n+B�̕)�HI��H2K�d*���M%��\"��L����Hh&�D��\\&ʔV�TBI�:�ST|���\"��X��F+�4]��\"��D�ϊp�	�=ɇaE�ٵH)�,;����\r!ܐ�T�%�o�C�J���\n�\"˔nr+7b��{|��R\n:���K�Z�B��4�(�Ҋ7i�p��V�|Z%��3����J�sfȴ= ��sBd���32f�g��w�p�2v��Up�������1\",��(@�����z�<���qf_��\r��3�]nX��l`��!f_O�����v��O`.$5h��%�҈&�TL��P��D5?\Z\\%�D, _0�ab��aF	S5Pďw�yQv9���M�h�4䖦�\n	a�QqP׮\\�r��=f�]w��,wfW��F�������\0\0\0\0IEND�B`�',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

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

insert  into `user`(`userid`,`aadhar_no`,`password`,`name`,`dob`,`gender`,`contact`,`email`,`uno`,`profile`,`address`,`profession`) values ('abcd','123456789012','12345','Durva','2002-05-09','female','9399492709','arraghuvanshi12@gmail.com',1,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0��j\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0GIDATx^�wTT纇��w�{ֺ��{��QcW�b�n�]�Ŋb�1��Kb��[��؍,��\rT�\"�(*(JP`���q� nȞO�߳����+{��������\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'�p\'�\'�Ua�	��\'��VW)k�������\"<>U�^<���@uc�墯�lW�����Z�{��Ճ=֌�z˅ɈU�+Uԯ��@GIAz�%wҽ������Tt^qI��+N<i8k7Bc_jՍ�IU�gXN���7qex��9h\\��-*�اus��qIĝt��AG��cU�V�W�r�p�n�Ŧh��#3��W���7iz_��c�O��2��u7�bt�Ͱ��fP��q�Ϛ��uH�]u7�����]?>Q��\'�����fa�=��%�S�1�B]���I�]u7���19��e9��r��-�)8��7d��\Z\"���m�O}ʠ���*9� G�P�ӭ��ּ,[�]4r3�����xuw��d+C#��l7�Ll�Rw�A��¨��yA=q^/�0��c;q��UYl�06R#�iQvC�Zdl�P�{�\r勉�;�줷�V2��fa���y�C�\"��^�)^=���+6��z�Q1[�WU(ԓSz9�Pw�0��)�������V��^�qT�U���+�m2^U�P����C��¨{�3;���U�g��K��������S�/[SnX��Y�[_��%�0*��ۅ���Qwe�\\j�ȉ8�m9��r��%��ra�\n�§aiMU�.�����zq�6$>�n�nF��N�>�F���`�ޟ3Pw�Pw�(���M��]�\"2�<ԝ�Φ���.�{�5a�Fו���.�M%[N�������s:u��;��%�����PG�l���u��6Rn\"����E�ra��)w�nw�=-+71-ǩH����Xw`ɳ�Ӓ��������Fuk��2�6�v�-I�\Z�s6��z_�A���N���݄�lۻ+�q֗*)H=<�b���*b�\n����Y.�ٞ���2i�W=����ŝt��&>9��G��3l������cM��t�r���˂P�&����ŝt���\r:�T�[wE���-y���YE�2~�G^�9��^o� \n�v�nwҽ�Z�ߙ����ޙ����-��*|�^�IԳ��\n���w��o��:��л8���D�� �76�gPw�C�� ���ep��U�5=ƚ�P wO<k���v���r��Yu��`p���}S)�����A��1W��1��]��YuO8fp蓆�\\�w���.��,�#���f�C=9�����.��,�����\Z}��4�j�?v�n�nEu�f?���7�����k�N�{t�n�n���s���Ϡ~�S1�ęζ\'Ü��5l���Z�P����C�͢x�5�bf�z|B�]���T��-��ٞ+�%k����Huk�z�_��C:�J\nV7�����֔�z9�Pw�0���0~�ڑ���Ou7�ѝ|�Pw���%�nԽ�!Hw���ҽ���u��Fw0P8�ᇿOB>C�����g��z�h����� �Nuw���8��C������4qؐ��?[,999cG������~q�y�f�߮��G\\�޹�QQQA���{�n�t!��݋b��)�w�P�^�{�z�J?$A��Ϛ�Z3k�8�x�y��U׸z�J�}�233_�~\r���\'[0�B�p�F��?����ޏ����b�������`Ў?z��V�-h�̗_�3����R0��<yr/:\Z��f;6�n���s�l���*{x�|ZZZ^^^nnnzz:ĭY���I��#ϟ?ך��GFF&\'\'c�L` �\\�r%Jjg� H�r?�0�������NX�����nڬj����xB�۷�+U�Q��eK�z�\0�5t�T�c��5	����lX��w}�-�7���UjT��y�&�A8Z�b�ys���di��u�6n\\�L�cG��ܱ�v�\Z(��~����_|��Ο߲y�i��x�-W��R��/_�t�豶-[�,zGk�Ǐ4��)F��Qvvv�n��5.���v��B�v������#u����t�ѵ+2��!籋��͚O�:m��]ؽv�n��۷m��5�VӦ|X����+F��R\"EA�����Λ5c�At��Ç7k�yˡ����Ί����(��y@��\r<�޺y�!����`�M�I�Fh������/wh�n��+G���k�f҄	�AA��kS�����,�J��]�`rE\\�t�c�=kւ������o�;w��V*_��#�<!!�+6\Z�o�«ikoo-�(�{��_�FQ�FM�-031&o��A�K/�D�ޑJ���ը1�$Bl�B���|������z�{��3�m�+�-�=6&���O/�۷nᎁ��r��fa2�CP���aN�<	��ۏ��av\"�Ga�ʧO�B��{����.�\rE2;�`a�1Cc@w?�a�.^�<y�DT		Ad;���{��U�t�.Z���a�=H͛7�Z�vzD����q+Ю|���Ho��7l��pg��N��K��,�kK�;�o#O������pcG�Fނ<��ב��oӶ]�փ��U����Ԏ��C������s��1m:Z�X\\�T��C0�P�``t�q����Q�0���زi3�}�+�>�?X¢��={PC�\r�ZGX���3|�/b����@Xfhg�@�� ��g�6oܘ�2R�ߘ���˗/�̚��){FFƳ���ӧ��Ch�AT�={�L�\'Z����HW0`�\Z�\"�ٵc\'�sT\\�p��<����3��aV�\Z\0�<�t��]�\Z�\n�bcc����m-���:�T�`l\'%&�p��)9Pw�0�N��nԽ�A�͢��X�\"{F��\\\\?�\'			����w>%Hӑ� ��v?~� i��aV����#Y�����My�}�A�� ;$kҰQú����;k�~�O�F0@���`�P��	��۳[�J�+x�-��Æ���[*�)k������C�n���;%�n�7�__�__����_��Y�&8���V���vHp0V���ܿ|�/\',��/\\���������(�c9��w�����a�a+~Y���ׯ�ؾ��ׯ_cq��m[��/]ǵ��X�����k7�d�_]�� ��bKa���-��z�Ƌ/p#:w�,��8���1~P��6-[~Ӯ=6��+�K�vvV.��^\\9.��Ç���κ��,�Ck��ر��ó^e=y�ĳf�1#GaZ��3�M�ѵ��7kT��|�2L��{�.uk��6��B#lߦ-��ڣ⒅�*U�8zD���G�K-�Ͻ{��>w��ߏ�nйs��̭U���A�K�����Zp`�~��� �>}�Բ�l�\0�#�͚6nܮu�uk֢���˕*=�o�����;��k����ӣ��|���ѣq�=�Яwo�b��e�%c���~�=��,����~�	�l���}b�����gS\'M�ߧ�u�T����/�7`��srr�V�T�ؑ���a���K�~U\nJ�$!�}�.�,�Z�M\0^v��#�~�����j�\r�1U�0m��س{7.)\"\"�w���k@M�����O4�8s����.�.��@���T��[{{�:*_�9.�O/?�auk��M	W���a�#X*�L��ƌ������n�\\����n�ï]��H�L�}gϜ��])�����5tG\Z��	��:i�d�H?��`ʇͰ\n�F�	u�oK��b�S�o`?�r\'�صSg���TȠ0+#�Ałdh�_�z�����;r�	kq���q��11kV��.�4ث{莗�T����˷��T�j�P�cvЯ?�*8ѱ,i�Y�Q�p���Sgq1W����>��_�.+�M\n�?���H�N|��e66o��{p[�>u\Zٹc�������������<reԅ�5׬Z��	0	و�R#$�����k0�vl��C�CBJ�E��3�gw�\"8r#�����ЮU�U+W� r苌H�Ps���v1J7h��שQ322�l����@��Dߍ�X����x+EXHT��\n�C/��\"��ǝt�ㆳ_6��u�.tw����wU�m۲�:��1��z�\n~#oT�>d��@�����\'�� fĆu�!wߴafS��$T�жJbbֺ@���,zپm$C~�uB�&^��1~0N����W���7(�̲�<��ը1�t��\'�g�r�(�IJ�}�{??�%4�k��sg����q�H����?�2h�`��2���j�����������,ˍ>�u\'�_�Y���)�蕝��*��wU��򑺤���\0�̳g��=�1�!m�r���OG��,$�8�t�a�HA����!ji�M���T�Fw8X���Ў �A���N{fA+��P���6m-gg�\n\n`�V�m#�Flh�i��Rɕ������W���r�Iw���s?�-Ȏ0P�H�ZŽ�\"��Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��APw\"�NA݉ �;u\'���Dԝ��j��q��^[(�\0\0\0\0IEND�B`�','IIST,India','Intern..');
insert  into `user`(`userid`,`aadhar_no`,`password`,`name`,`dob`,`gender`,`contact`,`email`,`uno`,`profile`,`address`,`profession`) values ('gg59','123456789013','12345','Ikka','2001-03-03','Male','7974652538','ikkaballu69@gmail.com',3,NULL,'IIST,Indore','Singer');
insert  into `user`(`userid`,`aadhar_no`,`password`,`name`,`dob`,`gender`,`contact`,`email`,`uno`,`profile`,`address`,`profession`) values ('user5','123456789018','12345','opppp','2022-03-18','Other','1234567890','durvakulkarni3@gmail.com',36,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0	m\"H\0\0\0�PLTE���������5�!J\0\03:���\0\00\0\0.\0\0,\0\0$\0\0\Z\0\0)�\"K\0\0*�\0:\0\0!\0\0��򆆕=�����͎��\0\0&�G\0\0rr�__tgg{������44SPPh??X@���>8z=�A�C� I�\n@����0U�Lg�\05������~~����  E���CC^\'\'J�HLLdM\n9�Cj<�B�E�\06곽爘阥�r��Y61\0\0@IDATx��kC�J��՜� �xA+�*`�=��V����D@ �&����B���6�Nއ�lHv�(D�T��Zot��z�+mF��J����b7��G��Cq��W~q9㉢I,�B��\Zj��`T��OR�w1|��\n��Sc$w-�O��رp>:#��@\"#��)>\Z\"��A>#��a@<\"��i��t�f�K�i������H�i���	M%�Mh�G&NB�,)�#4M�*.B��!4M�)B�9R\'4M�+UB��R#4�$B�ށ��v�дo�h��]�D!4���p���^0� �i�$aM{%�\"�x@9�l�i�\n��v����p�(ALl1�PU�\'L�\r0��u��ݱ(�д7���J\'4�M�Kh����д+Vm\'�iO��FBӎ�U~Bk�M�Ѡ�p�%4�F���д=*?��O�>j�{܄�:ꜝ��V�N�����Y��br� �	wq�����V���\"\n��j5|o�����P�ם���oJH1��#8�sS�����.Tm`B؃�2D��#�E}gE{=·���VC�Y\n����ى�;�F���h���x����Ev��!�o8��vc��+4ᕧ�&ɢN	��X���8hB\'Z�;���&�Є�B��0~y�h��x�v֊�h_՞�{���։�rk��z �ǎ��kJ��m+r�	g�~�X���h�F�+E�y����W��c�{$�Fh_d��?�LCz�,����F�C7|ϫ�{�+D1�����A��\nf#|)����~���N��/���ޅ�Et\"&#!��+�Zjˮ�V�T�R�J�*U�T�R%�\\�4˵l�̌�m��6eY�fh\ngۥe����)a��v��ti\\r-�*U\Z][FȐF��,��#P��QM������?*:`��q�tB%DawZ��9j����U�<��	*UL+���H���IBj\Z�į�{��S+�M�$	���0DD��I��*5�CY��D)�l#Q4�|�9>�P�\"݊FL,�RaIT\n�|31��RY�ŗi$)ۑ���g&���SA�^�\r���9����[%Ds	Q�\Zr�Z^��E�Ao��	�1���LBb|���0���\0�	Í0�1#d3d�\nG]�2=F�,r�_#r�)�H�r^�#��/�\\��PDqę�:�3[���`���\n�?�\0���x��L\"8���	0!8�?���w�7����N�7��2[�~�DD��馯��C�N�1\Z^�7>�� �FP�Nʭ���n�p��N�<�>p�j=���w\'q�䉬Z�|!�\\����W\n��W��d�B/∿GY�!��w�8�9��,z��O6ߔ�O�Gz]6m=������C����)p`�\"�g���{RiCL�d��@�7�%�N��\0��������{��\n\"������k�\ZE�/�����8`�x�%��^�kD[�mq�5�0�!�]Á��F�E���a�P���>�Ӣ(Ә�D�w4F\0�G��8Ϩ֘;��c�8n>���G#!j6C�����7㋴�k����QN\"���S��3��	�SRB�>�B���Ϸ�4X����I~!�����f�`��f��㭋_�L!��4�/��������c�EF��n\'��Oh��ĕ\Z/r���ϟ?j�.��ml\n�j���E��E�0���B�م���.&��O!��d)n+B�̕)�HI��H2K�d*���M%��\"��L����Hh&�D��\\&ʔV�TBI�:�ST|���\"��X��F+�4]��\"��D�ϊp�	�=ɇaE�ٵH)�,;����\r!ܐ�T�%�o�C�J���\n�\"˔nr+7b��{|��R\n:���K�Z�B��4�(�Ҋ7i�p��V�|Z%��3����J�sfȴ= ��sBd���32f�g��w�p�2v��Up�������1\",��(@�����z�<���qf_��\r��3�]nX��l`��!f_O�����v��O`.$5h��%�҈&�TL��P��D5?\Z\\%�D, _0�ab��aF	S5Pďw�yQv9���M�h�4䖦�\n	a�QqP׮\\�r��=f�]w��,wfW��F�������\0\0\0\0IEND�B`�','IIST,Indore','Intern');

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

insert  into `vehicle_registration`(`soldby`,`owner_name`,`father_name`,`dob`,`address`,`state`,`city`,`pincode`,`phone1`,`phone2`,`email`,`aadhar_no`,`license_no`,`vehicle_no`,`engine_no`,`chassis_no`,`showroom_address`,`rc_no`,`engine_type`,`vehicle_company`,`model_no`,`rto_name`,`year_of_manufacture`,`vehicle_color`,`registration_validity`,`vehicle_type`,`vehicle_image`,`dealerid`,`date_of_registration`) values ('other','Durva Kulkarni','durvakulkarni3@gmail.com','2022-03-30','101,Raghuparvati appt. , 19 ,Resham gali,  Nandlalpura\r\nindore','Madhya Pradesh','indore',452007,'09399-49270','09399-49270','durvakulkarni3@gmail.com','1234567890','lic12345','8765433','876554','user5',NULL,'8888888','diesel','Ask Innovation','456790','juhhuhuhu','2022','blue','2022-04-08','8','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0	m\"H\0\0\0�PLTE���������5�!J\0\03:���\0\00\0\0.\0\0,\0\0$\0\0\Z\0\0)�\"K\0\0*�\0:\0\0!\0\0��򆆕=�����͎��\0\0&�G\0\0rr�__tgg{������44SPPh??X@���>8z=�A�C� I�\n@����0U�Lg�\05������~~����  E���CC^\'\'J�HLLdM\n9�Cj<�B�E�\06곽爘阥�r��Y61\0\0@IDATx��kC�J��՜� �xA+�*`�=��V����D@ �&����B���6�Nއ�lHv�(D�T��Zot��z�+mF��J����b7��G��Cq��W~q9㉢I,�B��\Zj��`T��OR�w1|��\n��Sc$w-�O��رp>:#��@\"#��)>\Z\"��A>#��a@<\"��i��t�f�K�i������H�i���	M%�Mh�G&NB�,)�#4M�*.B��!4M�)B�9R\'4M�+UB��R#4�$B�ށ��v�дo�h��]�D!4���p���^0� �i�$aM{%�\"�x@9�l�i�\n��v����p�(ALl1�PU�\'L�\r0��u��ݱ(�д7���J\'4�M�Kh����д+Vm\'�iO��FBӎ�U~Bk�M�Ѡ�p�%4�F���д=*?��O�>j�{܄�:ꜝ��V�N�����Y��br� �	wq�����V���\"\n��j5|o�����P�ם���oJH1��#8�sS�����.Tm`B؃�2D��#�E}gE{=·���VC�Y\n����ى�;�F���h���x����Ev��!�o8��vc��+4ᕧ�&ɢN	��X���8hB\'Z�;���&�Є�B��0~y�h��x�v֊�h_՞�{���։�rk��z �ǎ��kJ��m+r�	g�~�X���h�F�+E�y����W��c�{$�Fh_d��?�LCz�,����F�C7|ϫ�{�+D1�����A��\nf#|)����~���N��/���ޅ�Et\"&#!��+�Zjˮ�V�T�R�J�*U�T�R%�\\�4˵l�̌�m��6eY�fh\ngۥe����)a��v��ti\\r-�*U\Z][FȐF��,��#P��QM������?*:`��q�tB%DawZ��9j����U�<��	*UL+���H���IBj\Z�į�{��S+�M�$	���0DD��I��*5�CY��D)�l#Q4�|�9>�P�\"݊FL,�RaIT\n�|31��RY�ŗi$)ۑ���g&���SA�^�\r���9����[%Ds	Q�\Zr�Z^��E�Ao��	�1���LBb|���0���\0�	Í0�1#d3d�\nG]�2=F�,r�_#r�)�H�r^�#��/�\\��PDqę�:�3[���`���\n�?�\0���x��L\"8���	0!8�?���w�7����N�7��2[�~�DD��馯��C�N�1\Z^�7>�� �FP�Nʭ���n�p��N�<�>p�j=���w\'q�䉬Z�|!�\\����W\n��W��d�B/∿GY�!��w�8�9��,z��O6ߔ�O�Gz]6m=������C����)p`�\"�g���{RiCL�d��@�7�%�N��\0��������{��\n\"������k�\ZE�/�����8`�x�%��^�kD[�mq�5�0�!�]Á��F�E���a�P���>�Ӣ(Ә�D�w4F\0�G��8Ϩ֘;��c�8n>���G#!j6C�����7㋴�k����QN\"���S��3��	�SRB�>�B���Ϸ�4X����I~!�����f�`��f��㭋_�L!��4�/��������c�EF��n\'��Oh��ĕ\Z/r���ϟ?j�.��ml\n�j���E��E�0���B�م���.&��O!��d)n+B�̕)�HI��H2K�d*���M%��\"��L����Hh&�D��\\&ʔV�TBI�:�ST|���\"��X��F+�4]��\"��D�ϊp�	�=ɇaE�ٵH)�,;����\r!ܐ�T�%�o�C�J���\n�\"˔nr+7b��{|��R\n:���K�Z�B��4�(�Ҋ7i�p��V�|Z%��3����J�sfȴ= ��sBd���32f�g��w�p�2v��Up�������1\",��(@�����z�<���qf_��\r��3�]nX��l`��!f_O�����v��O`.$5h��%�҈&�TL��P��D5?\Z\\%�D, _0�ab��aF	S5Pďw�yQv9���M�h�4䖦�\n	a�QqP׮\\�r��=f�]w��,wfW��F�������\0\0\0\0IEND�B`�','user5','2022-03-05');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;