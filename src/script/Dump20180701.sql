-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` varchar(40) NOT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_to` datetime DEFAULT NULL,
  `iso_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('fffed11a-9c6a-409a-8918-1fd88e0540d8',NULL,NULL,'AX','AALAND ISLANDS'),('2409e11a-bc31-4b54-a802-05388d6dd228',NULL,NULL,'AF','AFGHANISTAN'),('f631f0f1-4a4d-4671-b2c6-8a08573e0b06',NULL,NULL,'AL','ALBANIA'),('b33b6088-8ea9-4535-809c-be9d4009542b',NULL,NULL,'DZ','ALGERIA'),('5165841b-90bb-4b0a-a460-52c6bb734314',NULL,NULL,'AS','AMERICAN SAMOA'),('200ad49c-0a32-4a98-9d93-b70fdc79a0cc',NULL,NULL,'AD','ANDORRA'),('c1083dae-e7e8-409f-aaa8-f81645f8fa81',NULL,NULL,'AO','ANGOLA'),('93df431e-d2af-4ccc-9843-7ac474719c4d',NULL,NULL,'AI','ANGUILLA'),('4155d970-ad90-497a-a780-8cf996f20f5f',NULL,NULL,'AQ','ANTARCTICA'),('fe639117-5be6-4a8d-b9a1-7b2135857b06',NULL,NULL,'AG','ANTIGUA AND BARBUDA'),('e951da4b-2b60-4d75-a6e9-7f757d3e8bb0',NULL,NULL,'AR','ARGENTINA'),('73d7f84f-29ba-486c-80ea-f6673f4f4b92',NULL,NULL,'AM','ARMENIA'),('29208174-95b3-43b4-98b5-b3135283d954',NULL,NULL,'AW','ARUBA'),('3aa9822f-5be4-4710-9dc2-e2c668ddb388',NULL,NULL,'AU','AUSTRALIA'),('c2b37076-5435-4334-aa32-5f62b92c0f90',NULL,NULL,'AT','AUSTRIA'),('a6522e79-4efa-420a-b125-af7421cc836e',NULL,NULL,'AZ','AZERBAIJAN'),('b6a76d8f-dacd-4a76-9f79-fbb5b7d62aa0',NULL,NULL,'BS','BAHAMAS'),('f57cf49b-0117-4091-92e4-0d13618e8033',NULL,NULL,'BH','BAHRAIN'),('5903a1d8-314c-4e2e-abce-8b6dff50f661',NULL,NULL,'BD','BANGLADESH'),('224b8f4f-407e-447b-b304-9292b1e8f553',NULL,NULL,'BB','BARBADOS'),('025f392d-e3f0-43c4-aa47-5d3c58f5dee5',NULL,NULL,'BY','BELARUS'),('d888b82d-89a3-42dd-8665-0529387d8cc7',NULL,NULL,'BE','BELGIUM'),('4a64c4a0-0630-47b1-9b7f-f859c2b4e8f8',NULL,NULL,'BZ','BELIZE'),('1b67eb5e-a633-418f-b1be-f04153ccab99',NULL,NULL,'BJ','BENIN'),('c0eae51d-fe03-4c29-9f80-a7db4b421aeb',NULL,NULL,'BM','BERMUDA'),('4c601c6d-fd92-4494-9167-91b8f0a66743',NULL,NULL,'BT','BHUTAN'),('1e7fc5c4-5f02-4cc5-8277-d7cf586d3b9d',NULL,NULL,'BO','BOLIVIA'),('9bb2da46-936f-4d69-86f7-8fb1b05de4dd',NULL,NULL,'BA','BOSNIA AND HERZEGOWINA'),('04ef8197-6e87-4d88-97de-e89176e317e3',NULL,NULL,'BW','BOTSWANA'),('7456f5b8-fa22-4453-9b15-03c12abca9ce',NULL,NULL,'BV','BOUVET ISLAND'),('6baa76e1-fb9d-49fe-a35f-5553b6960988',NULL,NULL,'BR','BRAZIL'),('f6e26210-7450-411d-9f39-82ae1d03e317',NULL,NULL,'IO','BRITISH INDIAN OCEAN TERRITORY'),('bb21a01f-13e1-4647-9a51-05042b6508e8',NULL,NULL,'BN','BRUNEI DARUSSALAM'),('2f51ba1e-5a90-45ce-a2a3-e1a7f4ca919c',NULL,NULL,'BG','BULGARIA'),('00e23e71-bcc9-4fb5-b0a7-7fd0c281545d',NULL,NULL,'BF','BURKINA FASO'),('0a9c2ad0-f163-46c4-a962-2621b82982c8',NULL,NULL,'BI','BURUNDI'),('085652c9-e346-4499-b40a-d0c77f060ec2',NULL,NULL,'KH','CAMBODIA'),('3a541b12-e3e0-4d38-9a9d-cefd763b618e',NULL,NULL,'CM','CAMEROON'),('c71b5809-fe6b-4a4e-bed5-30a4e4132105',NULL,NULL,'CA','CANADA'),('ad06c066-cbac-4591-bfa8-eead3a484e42',NULL,NULL,'CV','CAPE VERDE'),('59e0a28d-e067-4dab-8a61-35077ddbee4e',NULL,NULL,'KY','CAYMAN ISLANDS'),('ea50d5f1-bf4c-46da-b5ed-bcda28f639a5',NULL,NULL,'CF','CENTRAL AFRICAN REPUBLIC'),('6f99847a-a77b-403a-a85e-0969a95c909a',NULL,NULL,'TD','CHAD'),('6309fa6f-2980-4c35-a828-78df4ae58899',NULL,NULL,'CL','CHILE'),('7b802f61-2f16-45d5-8cde-5c2cb5adad26',NULL,NULL,'CN','CHINA'),('0405b3d3-18e4-42d3-a3b0-4c13746d4c73',NULL,NULL,'CX','CHRISTMAS ISLAND'),('e29a70cc-6fbe-4ee7-b366-884d6acaa48f',NULL,NULL,'CC','COCOS (KEELING) ISLANDS'),('eb82f3de-8665-4ed7-90f2-2fb2ee105fdd',NULL,NULL,'CO','COLOMBIA'),('4cbfd50a-725f-4df2-bcd1-8a111c293a92',NULL,NULL,'KM','COMOROS'),('729b1fe9-b310-49b7-94e9-a05f38af15a0',NULL,NULL,'CD','CONGO, Democratic Republic of (was Zaire)'),('6de9983b-7056-4c43-9a29-6b08b19c4d16',NULL,NULL,'CG','CONGO, Republic of'),('8c7dd1ed-9f3f-4ebd-9df6-6da32463b649',NULL,NULL,'CK','COOK ISLANDS'),('36bb8e6c-0cf8-49af-b42b-52d04c661773',NULL,NULL,'CR','COSTA RICA'),('a74aa85b-21ab-4129-8dbe-0943f34a9c4b',NULL,NULL,'CI','COTE D\'IVOIRE'),('6504e835-abe8-4b79-8d25-0dcf67ad8296',NULL,NULL,'HR','CROATIA (local name: Hrvatska)'),('7075eb59-792f-4882-9b58-b0946c5fcd64',NULL,NULL,'CU','CUBA'),('51b9b187-bb75-4c64-9e7d-9096b7820231',NULL,NULL,'CY','CYPRUS'),('36cd6d7a-04f5-4b3d-8a36-0694611abdbf',NULL,NULL,'CZ','CZECH REPUBLIC'),('1bdc6381-1cc6-44ac-ab88-e9855dc18d81',NULL,NULL,'DK','DENMARK'),('df12efbc-faf6-48ac-b538-b213115e2efa',NULL,NULL,'DJ','DJIBOUTI'),('92f55e68-d6dd-46a3-aafc-a0dcea54b4ec',NULL,NULL,'DM','DOMINICA'),('689e1fc3-5e32-4b83-8f97-0b0c2aa2f8a8',NULL,NULL,'DO','DOMINICAN REPUBLIC'),('906322d2-ce32-44da-b4ae-af6ff09c657b',NULL,NULL,'EC','ECUADOR'),('85267b8d-19b1-4646-b912-1856e133d9ab',NULL,NULL,'EG','EGYPT'),('4be681f8-9d09-432b-8d65-f612e6fdcb36',NULL,NULL,'SV','EL SALVADOR'),('9c60f83a-2690-4795-8508-519c6cea9da5',NULL,NULL,'GQ','EQUATORIAL GUINEA'),('aadc174d-0d3d-4453-b6b7-b5cd22362d36',NULL,NULL,'ER','ERITREA'),('a1101d4e-8eec-4635-a1af-cad1af6fc411',NULL,NULL,'EE','ESTONIA'),('8a0e7e7c-f6a4-4274-b9ca-ec43abfee65d',NULL,NULL,'ET','ETHIOPIA'),('447439d6-2c16-47de-acd7-567b3f1f4f50',NULL,NULL,'FK','FALKLAND ISLANDS (MALVINAS)'),('23bc9d16-d8a5-4a7f-bb85-c293f4b85f55',NULL,NULL,'FO','FAROE ISLANDS'),('3e7ec958-0825-4480-a0aa-cf40a15677b2',NULL,NULL,'FJ','FIJI'),('9eca8969-4c83-47f4-9af6-3ca3404eea5b',NULL,NULL,'FI','FINLAND'),('d4075b92-d1dc-4b09-ae41-dbf993e9fd84',NULL,NULL,'FR','FRANCE'),('b48b6b88-ee91-4a8b-bd66-c35c535668e3',NULL,NULL,'GF','FRENCH GUIANA'),('a02c540c-5d1b-44b8-be7c-f330e5838fdb',NULL,NULL,'PF','FRENCH POLYNESIA'),('5a9aebe6-1602-491d-850b-75edd968c17a',NULL,NULL,'TF','FRENCH SOUTHERN TERRITORIES'),('ecb9f35b-0115-4037-9bcd-59203571bbc5',NULL,NULL,'GA','GABON'),('55b7ca36-f44f-4d8d-b672-201be8eb8c5b',NULL,NULL,'GM','GAMBIA'),('50562a86-d796-4a73-bd29-437ef6a3a15a',NULL,NULL,'GE','GEORGIA'),('7985996c-8a2d-4514-b282-59dd7599998a',NULL,NULL,'DE','GERMANY'),('42e4cde1-e0b0-41af-9e94-880b7d1a3f02',NULL,NULL,'GH','GHANA'),('1b99a913-e057-46f1-ab8d-fdb394c8c644',NULL,NULL,'GI','GIBRALTAR'),('a31ba4a7-40e4-4fc7-b991-991325c29340',NULL,NULL,'GR','GREECE'),('973190cb-e81e-481b-ae0b-75d064ec1669',NULL,NULL,'GL','GREENLAND'),('57c5771e-6b73-430d-9fa2-a223f7925e15',NULL,NULL,'GD','GRENADA'),('d6d08a86-cec6-4350-9afa-112cb801d0b2',NULL,NULL,'GP','GUADELOUPE'),('8d188ded-1a7e-4324-bc23-1425630e6a01',NULL,NULL,'GU','GUAM'),('430a2db6-e9cf-4d79-80d9-82ac412b7df3',NULL,NULL,'GT','GUATEMALA'),('90b94bfd-98b7-4141-9bd9-c21e96c8971a',NULL,NULL,'GN','GUINEA'),('dc9529ea-916f-4437-9233-3059ae1e7afd',NULL,NULL,'GW','GUINEA-BISSAU'),('ee187a36-bb23-4160-9e01-622a747c0495',NULL,NULL,'GY','GUYANA'),('54078c6b-08bb-489f-b808-073350c38302',NULL,NULL,'HT','HAITI'),('60837b05-3fe9-412f-a6eb-4c15faef8de2',NULL,NULL,'HM','HEARD AND MC DONALD ISLANDS'),('738c1192-b2d9-4c80-8ce7-0eb90e5a9ef5',NULL,NULL,'HN','HONDURAS'),('966b76a7-7e89-4740-8f3c-f249aded2325',NULL,NULL,'HK','HONG KONG'),('e62c7da4-a2ae-45dd-aa03-c7006920ea62',NULL,NULL,'HU','HUNGARY'),('36e33af5-625f-493a-b4f7-3eb577ea8466',NULL,NULL,'IS','ICELAND'),('573eba28-b0dd-47b4-851b-b58339ba2be0',NULL,NULL,'IN','INDIA'),('3be59fca-6fd5-4d65-9656-07f9336550eb',NULL,NULL,'ID','INDONESIA'),('5d1a2f39-8dca-492d-91de-8c9f8ff19aca',NULL,NULL,'IR','IRAN (ISLAMIC REPUBLIC OF)'),('1f91405c-f805-40ca-b343-c29a529d3ef9',NULL,NULL,'IQ','IRAQ'),('2ff472aa-67f9-46c6-b6d8-9502338336f8',NULL,NULL,'IE','IRELAND'),('a80767d0-578b-4879-8620-44c04ebb50be',NULL,NULL,'IL','ISRAEL'),('b09d2be1-7575-4fd3-881c-51e9e473c094',NULL,NULL,'IT','ITALY'),('d21ed6fa-53ac-4e81-b8f5-83614e26dcb0',NULL,NULL,'JM','JAMAICA'),('b8ae99c8-9883-40b7-9b73-8548b640f7e5',NULL,NULL,'JP','JAPAN'),('259a6377-2123-4e32-a9aa-ca06bd89d116',NULL,NULL,'JO','JORDAN'),('7d962cab-0b66-4c63-8653-d31d38fd3144',NULL,NULL,'KZ','KAZAKHSTAN'),('34309213-802b-4f2c-901d-fe03335906b1',NULL,NULL,'KE','KENYA'),('faa3f43a-7387-40fa-bd2a-4ba88ca36d11',NULL,NULL,'KI','KIRIBATI'),('e926ef7d-2926-4d87-a2a9-f65aa34f559e',NULL,NULL,'KP','KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF'),('12dc37ea-8c94-4ea0-bb6e-a4ab0aecb2f1',NULL,NULL,'KR','KOREA, REPUBLIC OF'),('090a2a16-c441-40ea-a429-4657df8fc89a',NULL,NULL,'KW','KUWAIT'),('b9953d37-9602-47ac-ba70-c72859b52d3f',NULL,NULL,'KG','KYRGYZSTAN'),('208d0b08-b70f-4c60-82e4-15cc9984b098',NULL,NULL,'LA','LAO PEOPLE\'S DEMOCRATIC REPUBLIC'),('4ce340a6-2f53-4383-83db-8d5c4850f0a0',NULL,NULL,'LV','LATVIA'),('77639af3-46fe-4c26-803e-24b81532201f',NULL,NULL,'LB','LEBANON'),('cf7e56d8-a303-4058-8341-500eaf36dc61',NULL,NULL,'LS','LESOTHO'),('2892594a-4a7d-4d95-84e3-e545b78916f6',NULL,NULL,'LR','LIBERIA'),('fd620d9b-a37f-43fb-83c8-57415ee0c0f8',NULL,NULL,'LY','LIBYAN ARAB JAMAHIRIYA'),('2d8927c5-df21-432c-9740-1a91dcfea39e',NULL,NULL,'LI','LIECHTENSTEIN'),('14682a04-c2c3-48dc-a431-0359470464ec',NULL,NULL,'LT','LITHUANIA'),('73f29fe0-e37e-4382-bc17-1bebc70f00ee',NULL,NULL,'LU','LUXEMBOURG'),('2ea41cd0-0c0d-481f-af27-f270390a40c3',NULL,NULL,'MO','MACAU'),('ce15ea23-f51c-4be0-90a7-dfa4c2410975',NULL,NULL,'MK','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF'),('3d9b9ecd-fd92-4d52-8e0a-f9fe48eacf88',NULL,NULL,'MG','MADAGASCAR'),('14df36a8-2790-437d-9a04-7e42ab3c52e1',NULL,NULL,'MW','MALAWI'),('873198be-03eb-47c2-892e-3cad4fc8a8e6',NULL,NULL,'MY','MALAYSIA'),('694f4802-09cb-444c-8af3-cf2482bcdcb9',NULL,NULL,'MV','MALDIVES'),('ae1ee386-1ee9-4995-85de-a2c1d54b3baa',NULL,NULL,'ML','MALI'),('ed797ede-c149-4ff8-b752-87d3a0cf9842',NULL,NULL,'MT','MALTA'),('2224eebf-ded7-4177-a545-b1e79fe8456c',NULL,NULL,'MH','MARSHALL ISLANDS'),('734f909a-ed95-41a1-b61e-3d8c0b4ce21e',NULL,NULL,'MQ','MARTINIQUE'),('5e880795-c5a0-40fc-a010-f2f325ce264d',NULL,NULL,'MR','MAURITANIA'),('0d6e3077-b0a6-479e-820a-b99d9494c803',NULL,NULL,'MU','MAURITIUS'),('9bcc820f-b7b3-4d40-bb34-c4b4d102ac91',NULL,NULL,'YT','MAYOTTE'),('564a1540-3c90-4f73-91aa-8052a5848fb6',NULL,NULL,'MX','MEXICO'),('6b82a1c8-f3dd-414d-a574-e173d04335ba',NULL,NULL,'FM','MICRONESIA, FEDERATED STATES OF'),('f308bc00-7276-455a-ac77-377e79687d60',NULL,NULL,'MD','MOLDOVA, REPUBLIC OF'),('f9962f71-9f9e-4ca3-8963-2f936b7ff57c',NULL,NULL,'MC','MONACO'),('c1ad1ff8-e45f-4c04-803f-a7b5d4ab5a05',NULL,NULL,'MN','MONGOLIA'),('945a0d39-0102-47a0-82e1-3f30a9fceac7',NULL,NULL,'MS','MONTSERRAT'),('317510b9-f9eb-47da-8f8f-a67fbd390401',NULL,NULL,'MA','MOROCCO'),('ebf5e793-f2f9-4aae-bc80-d54df14ccd85',NULL,NULL,'MZ','MOZAMBIQUE'),('9f73c394-1333-4afe-afcc-07fa38218406',NULL,NULL,'MM','MYANMAR'),('46d2e59a-375c-40e6-9013-7490e89d49d0',NULL,NULL,'NA','NAMIBIA'),('f8a11b47-7ca6-49fc-a9a7-b50202dd49f8',NULL,NULL,'NR','NAURU'),('94bc26c9-54a2-489c-a3a0-03a79af0fb81',NULL,NULL,'NP','NEPAL'),('990c85f7-687e-4b3d-966a-9fe594b41fbe',NULL,NULL,'NL','NETHERLANDS'),('55f78483-25ea-418e-bf5c-30ecb06e71f1',NULL,NULL,'AN','NETHERLANDS ANTILLES'),('513f7f1d-46e7-4c97-8bda-c4e615fa0dd1',NULL,NULL,'NC','NEW CALEDONIA'),('7aa30145-f2d7-406d-86e8-3531428caf4e',NULL,NULL,'NZ','NEW ZEALAND'),('0f672532-200b-487e-bc6c-3f8bd7cbe944',NULL,NULL,'NI','NICARAGUA'),('41e1a295-a9e0-4de0-b63a-e80ebcb286bb',NULL,NULL,'NE','NIGER'),('04b57398-a32d-44f3-b65e-f90574614483',NULL,NULL,'NG','NIGERIA'),('fb7b324f-f2ed-4c4a-9f5c-e85346c40d13',NULL,NULL,'NU','NIUE'),('3d52afe3-5407-4f87-ae83-106dce80ba14',NULL,NULL,'NF','NORFOLK ISLAND'),('0ef5b903-40b0-4e7f-baad-714bfef7c167',NULL,NULL,'MP','NORTHERN MARIANA ISLANDS'),('59878557-302c-4519-a54f-1c1db280e578',NULL,NULL,'NO','NORWAY'),('276e8ee7-2e4d-4901-9910-8495f612a21d',NULL,NULL,'OM','OMAN'),('50649c22-7591-4d1c-a1fe-b8a25660e6a3',NULL,NULL,'PK','PAKISTAN'),('6d8dc696-2de7-40fa-bc4d-050e9af168e1',NULL,NULL,'PW','PALAU'),('2ec48383-8ed2-468b-8c81-abd506d85dc4',NULL,NULL,'PS','PALESTINIAN TERRITORY, Occupied'),('c28c3262-6011-4578-9a63-a05ceaa4fa45',NULL,NULL,'PA','PANAMA'),('8841cf70-86ef-4484-ba49-bda96db61e57',NULL,NULL,'PG','PAPUA NEW GUINEA'),('e5de0ba8-6ff7-4da2-8cc4-cea67b5f207f',NULL,NULL,'PY','PARAGUAY'),('1bf17e8b-2443-4c4a-a7e7-f3603b013f97',NULL,NULL,'PE','PERU'),('37f02fbd-20a8-4c78-992d-20043c9e4846',NULL,NULL,'PH','PHILIPPINES'),('4606fd77-f5a7-416b-b161-5d40904344b2',NULL,NULL,'PN','PITCAIRN'),('087914ce-4fe1-49a0-9072-0a5341e6c85f',NULL,NULL,'PL','POLAND'),('cd6420ef-56b4-482c-9683-43b10111a85e',NULL,NULL,'PT','PORTUGAL'),('d1bf90ce-c9a1-40dd-88c3-ca3f1d500ed1',NULL,NULL,'PR','PUERTO RICO'),('2ff9ce20-aeef-47ef-8de8-fcd8d87baae5',NULL,NULL,'QA','QATAR'),('f0f743ce-5884-46d4-b9a0-97eacd417f1a',NULL,NULL,'RE','REUNION'),('ea345089-e0cc-46bf-b7f3-2d1c6f586a05',NULL,NULL,'RO','ROMANIA'),('0c883dea-2ff1-408b-89f4-801ce8f11a7c',NULL,NULL,'RU','RUSSIAN FEDERATION'),('d9a84c19-0b14-4ed8-95f0-767cc9de25ac',NULL,NULL,'RW','RWANDA'),('b6af3c74-13f5-4798-93f4-89fdd24d0b76',NULL,NULL,'SH','SAINT HELENA'),('88e36dd3-499d-4aa0-86aa-8ad0132926d8',NULL,NULL,'KN','SAINT KITTS AND NEVIS'),('04d3fe33-0c84-40a8-8f7d-659ef358c0f0',NULL,NULL,'LC','SAINT LUCIA'),('60268fd8-0998-4c45-bd19-45b31c6a0d6b',NULL,NULL,'PM','SAINT PIERRE AND MIQUELON'),('09b1e3c9-e8c1-49cf-81b5-67c11b48c5c0',NULL,NULL,'VC','SAINT VINCENT AND THE GRENADINES'),('e6d944d9-5395-4998-831b-f56356085df1',NULL,NULL,'WS','SAMOA'),('3fa8ea15-650d-429d-a1a0-9a744d6b631d',NULL,NULL,'SM','SAN MARINO'),('cf537480-e0f0-46e2-b4da-9fc859c8268b',NULL,NULL,'ST','SAO TOME AND PRINCIPE'),('0badc5af-5040-44ba-9b47-43209e9bd596',NULL,NULL,'SA','SAUDI ARABIA'),('906fc607-d2b0-4832-8855-6b17c48f90b4',NULL,NULL,'SN','SENEGAL'),('70f2b711-30a0-4c35-99b0-d70e2bcc2190',NULL,NULL,'CS','SERBIA AND MONTENEGRO'),('287aca9b-a0b0-4999-9792-c4c6211ee816',NULL,NULL,'SC','SEYCHELLES'),('17574b36-f10e-487b-b0e7-4eccca4db8e7',NULL,NULL,'SL','SIERRA LEONE'),('026ac1ae-79df-467e-b7a6-6166db632850',NULL,NULL,'SG','SINGAPORE'),('5f903970-0957-4619-9225-640336b74ea8',NULL,NULL,'SK','SLOVAKIA'),('806f367a-f5fa-4a0a-9c06-dcadea846050',NULL,NULL,'SI','SLOVENIA'),('8ed0c553-3f07-438e-bee2-0ae549affd3f',NULL,NULL,'SB','SOLOMON ISLANDS'),('6eab88d5-2d92-4e56-9e83-a6e3a2150252',NULL,NULL,'SO','SOMALIA'),('7f026d0c-cd17-44e5-ae9d-cdfe9594dc96',NULL,NULL,'ZA','SOUTH AFRICA'),('528d1c00-ecd4-4b40-b833-8b39531f3693',NULL,NULL,'GS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS'),('d315ad43-1f15-498b-9d89-c09d33152956',NULL,NULL,'ES','SPAIN'),('e3a5104a-5bb4-4979-ba75-8ff85863156d',NULL,NULL,'LK','SRI LANKA'),('d241f809-0b87-4900-afa5-f0907138f561',NULL,NULL,'SD','SUDAN'),('445ef5e7-5463-41bb-936c-302bf6a9782b',NULL,NULL,'SR','SURINAME'),('1f054b31-b17b-4fdd-8c8c-d2174917aaba',NULL,NULL,'SJ','SVALBARD AND JAN MAYEN ISLANDS'),('6a532781-198b-40fd-9838-54af33b42222',NULL,NULL,'SZ','SWAZILAND'),('e095fe79-c74d-4a58-8893-6d5256a1af30',NULL,NULL,'SE','SWEDEN'),('84f89d6d-580d-409c-8398-5e73ac51e314',NULL,NULL,'CH','SWITZERLAND'),('5ff1b746-7566-48cc-9f2d-aebe10c0d1e0',NULL,NULL,'SY','SYRIAN ARAB REPUBLIC'),('9a745ff6-c550-42b9-8d35-59f5b39ed89a',NULL,NULL,'TW','TAIWAN'),('a1c04410-31ef-4f30-85bc-aa15f71f8a09',NULL,NULL,'TJ','TAJIKISTAN'),('124374a9-20eb-449c-8b7c-ef52370bbe02',NULL,NULL,'TZ','TANZANIA, UNITED REPUBLIC OF'),('fb47ad8b-2bf2-4ce0-ae54-1e6a92336869',NULL,NULL,'TH','THAILAND'),('3c3ed5c9-d35e-4845-bf81-bb679cb7af00',NULL,NULL,'TL','TIMOR-LESTE'),('27f98473-5d74-4f72-ad6c-d4280b515a26',NULL,NULL,'TG','TOGO'),('e3dc95c9-8c04-42ed-9740-14b04bf7973b',NULL,NULL,'TK','TOKELAU'),('e88ecfa0-aac2-4b84-a138-79c8cfab1ef3',NULL,NULL,'TO','TONGA'),('2e1fe310-b913-44ef-be5c-1bf6115a71c2',NULL,NULL,'TT','TRINIDAD AND TOBAGO'),('15c606bd-4c03-4753-8753-369b453cd11d',NULL,NULL,'TN','TUNISIA'),('1113ca63-f0d2-4e53-a6d9-dddb0828a513',NULL,NULL,'TR','TURKEY'),('812bc69d-fc1f-478a-8f95-0365e0511f48',NULL,NULL,'TM','TURKMENISTAN'),('a2ea88d2-96b9-409c-a7b9-924c8b8aafad',NULL,NULL,'TC','TURKS AND CAICOS ISLANDS'),('94368a16-ff7b-41e4-8f02-2a2686dd8097',NULL,NULL,'TV','TUVALU'),('5e0687d1-7832-469f-9110-a2a34b227238',NULL,NULL,'UG','UGANDA'),('d39117f8-b5d8-403c-a348-0f0d22c4eedf',NULL,NULL,'UA','UKRAINE'),('94ae5488-0355-49eb-8dc5-aa949a5c5040',NULL,NULL,'AE','UNITED ARAB EMIRATES'),('9f5b32f9-6f37-479d-b26c-b7cd8ba696da',NULL,NULL,'GB','UNITED KINGDOM'),('20472167-d74b-4c72-a7a4-6f78172cac36',NULL,NULL,'US','UNITED STATES'),('841d0764-97e0-46f1-940c-2fbb40720e72',NULL,NULL,'UM','UNITED STATES MINOR OUTLYING ISLANDS'),('1b71d3d4-5e76-4713-bf91-6106943bd48c',NULL,NULL,'UY','URUGUAY'),('7f34edf3-b1d1-40f0-a9bc-479ad04b1663',NULL,NULL,'UZ','UZBEKISTAN'),('a80d31bb-1ec8-4326-8e19-e016af4d64f3',NULL,NULL,'VU','VANUATU'),('5d4f927b-0d2c-4770-aab0-546ef3963dc9',NULL,NULL,'VA','VATICAN CITY STATE (HOLY SEE)'),('40a6db98-8625-4771-b380-8124b458577a',NULL,NULL,'VE','VENEZUELA'),('df920ba7-3480-4bfc-88a3-6ebe354f97eb',NULL,NULL,'VN','VIET NAM'),('c28815e4-0838-4680-b926-ae0329ee14ef',NULL,NULL,'VG','VIRGIN ISLANDS (BRITISH)'),('82a035e0-ee52-4f00-9cc9-10f95d277af7',NULL,NULL,'VI','VIRGIN ISLANDS (U.S.)'),('ed4bf4c8-78f0-4760-8396-74a9612ff1f4',NULL,NULL,'WF','WALLIS AND FUTUNA ISLANDS'),('0b5db341-0c05-4704-ade2-391b8352ab4c',NULL,NULL,'EH','WESTERN SAHARA'),('9e0d41f8-4692-4783-a0f3-2df5c72aa532',NULL,NULL,'YE','YEMEN'),('deb7c1fa-c1b2-44d7-9f6e-67ed6f8264d4',NULL,NULL,'ZM','ZAMBIA'),('e4de06bb-4856-4fee-818e-f435518b6413',NULL,NULL,'ZW','ZIMBABWE');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` varchar(40) NOT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_to` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmgsnnmudxrwqidn4f64q8rp4o` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('8a80cb816454eb2c0164555cd7950000',NULL,NULL,'0100','Solution Delivery',NULL),('8a80cb816454eb2c0164555cd7d10001',NULL,NULL,'0103','Java C','8a80cb816454eb2c0164555cd7950000'),('8a80cb816454eb2c0164555cd7d10003',NULL,NULL,'0102','Java B','8a80cb816454eb2c0164555cd7950000'),('8a80cb816454eb2c0164555cd7d10002',NULL,NULL,'0101','Java A','8a80cb816454eb2c0164555cd7950000');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `description`
--

DROP TABLE IF EXISTS `description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `description` (
  `id` varchar(40) NOT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_to` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `description`
--

LOCK TABLES `description` WRITE;
/*!40000 ALTER TABLE `description` DISABLE KEYS */;
INSERT INTO `description` VALUES ('8a80cb8163171b910163171f3c1e000a',NULL,NULL,'This privilege can delete any users.'),('8a80cb8163171b910163171f3c1f000c',NULL,NULL,'This privilege can modify any users.'),('8a80cb8163171b910163171f3c20000e',NULL,NULL,'This privilege can add any users.'),('8a80cb8163171b910163171f3c200011',NULL,NULL,'This privilege can delete any roles.'),('8a80cb8163171b910163171f3c210013',NULL,NULL,'This privilege can add any roles.'),('8a80cb8163171b910163171f3c210015',NULL,NULL,'This privilege can modify any roles.');
/*!40000 ALTER TABLE `description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilege`
--

DROP TABLE IF EXISTS `privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privilege` (
  `id` varchar(40) NOT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_to` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9up40vmqh2a9lrtotumja97tb` (`description_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilege`
--

LOCK TABLES `privilege` WRITE;
/*!40000 ALTER TABLE `privilege` DISABLE KEYS */;
INSERT INTO `privilege` VALUES ('8a80cb8163171b910163171f3c1d0009',NULL,NULL,'delete_user','8a80cb8163171b910163171f3c1e000a'),('8a80cb8163171b910163171f3c1f000b',NULL,NULL,'modify_user','8a80cb8163171b910163171f3c1f000c'),('8a80cb8163171b910163171f3c20000d',NULL,NULL,'add_user','8a80cb8163171b910163171f3c20000e'),('8a80cb8163171b910163171f3c200010',NULL,NULL,'delete_role','8a80cb8163171b910163171f3c200011'),('8a80cb8163171b910163171f3c210012',NULL,NULL,'add_role','8a80cb8163171b910163171f3c210013'),('8a80cb8163171b910163171f3c210014',NULL,NULL,'modify_role','8a80cb8163171b910163171f3c210015');
/*!40000 ALTER TABLE `privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` varchar(40) NOT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_to` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES ('8a80cb8163171b910163171f3c1c0008',NULL,NULL,'user_admin'),('8a80cb8163171b910163171f3c20000f',NULL,NULL,'role_admin');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_privileges`
--

DROP TABLE IF EXISTS `role_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_privileges` (
  `role_id` varchar(40) NOT NULL,
  `privileges_id` varchar(40) NOT NULL,
  PRIMARY KEY (`role_id`,`privileges_id`),
  KEY `FKas5s9i1itvr8tgocse4xmtwox` (`privileges_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_privileges`
--

LOCK TABLES `role_privileges` WRITE;
/*!40000 ALTER TABLE `role_privileges` DISABLE KEYS */;
INSERT INTO `role_privileges` VALUES ('8a80cb8163171b910163171f3c1c0008','8a80cb8163171b910163171f3c1d0009'),('8a80cb8163171b910163171f3c1c0008','8a80cb8163171b910163171f3c1f000b'),('8a80cb8163171b910163171f3c1c0008','8a80cb8163171b910163171f3c20000d'),('8a80cb8163171b910163171f3c20000f','8a80cb8163171b910163171f3c200010'),('8a80cb8163171b910163171f3c20000f','8a80cb8163171b910163171f3c210012'),('8a80cb8163171b910163171f3c20000f','8a80cb8163171b910163171f3c210014');
/*!40000 ALTER TABLE `role_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` varchar(40) NOT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_to` datetime DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `employee_no` varchar(255) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `native_name` varchar(255) DEFAULT NULL,
  `country_id` varchar(40) DEFAULT NULL,
  `department_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKge8lxibk9q3wf206s600otk61` (`country_id`),
  KEY `FKgkh2fko1e4ydv1y6vtrwdc6my` (`department_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('8a80cb8163151d8d0163152d0dae0000',NULL,NULL,NULL,'ethlete@163.com','0001',0,'Nuwanda','Jiang',NULL,'蒋亚晖','7b802f61-2f16-45d5-8cde-5c2cb5adad26','8a80cb816454eb2c0164555cd7d10001'),('8a80cb8163151d8d01631565d66a0001',NULL,NULL,NULL,'ethlete@163.com','99999',0,'Sakuragi','Hanamichi',NULL,'さくらぎはなみち','b8ae99c8-9883-40b7-9b73-8548b640f7e5','8a80cb816454eb2c0164555cd7950000');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` varchar(40) NOT NULL,
  `roles_id` varchar(40) NOT NULL,
  PRIMARY KEY (`user_id`,`roles_id`),
  KEY `FKj9553ass9uctjrmh0gkqsmv0d` (`roles_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES ('8a80cb8163151d8d0163152d0dae0000','8a80cb8163171b910163171f3c1c0008'),('8a80cb8163151d8d0163152d0dae0000','8a80cb8163171b910163171f3c20000f'),('8a80cb8163151d8d01631565d66a0001','8a80cb8163171b910163171f3c1c0008'),('8a80cb8163151d8d01631565d66a0001','8a80cb8163171b910163171f3c20000f');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-01 20:12:32
