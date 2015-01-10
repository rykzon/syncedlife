-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server Version:               5.5.38 - MySQL Community Server (GPL)
-- Server Betriebssystem:        Win64
-- HeidiSQL Version:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Exportiere Datenbank Struktur für arma3test
DROP DATABASE IF EXISTS `arma3test`;
CREATE DATABASE IF NOT EXISTS `arma3test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `arma3test`;


-- Exportiere Struktur von Prozedur arma3test.deleteDeadVehicles
DROP PROCEDURE IF EXISTS `deleteDeadVehicles`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteDeadVehicles`()
BEGIN
	DELETE FROM `vehicles` WHERE `alive` = 0;
END//
DELIMITER ;


-- Exportiere Struktur von Prozedur arma3test.deleteOldGangs
DROP PROCEDURE IF EXISTS `deleteOldGangs`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOldGangs`()
BEGIN
  DELETE FROM `gangs` WHERE `active` = 0;
END//
DELIMITER ;


-- Exportiere Struktur von Prozedur arma3test.deleteOldHouses
DROP PROCEDURE IF EXISTS `deleteOldHouses`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOldHouses`()
BEGIN
  DELETE FROM `houses` WHERE `owned` = 0;
END//
DELIMITER ;


-- Exportiere Struktur von Tabelle arma3test.gangs
DROP TABLE IF EXISTS `gangs`;
CREATE TABLE IF NOT EXISTS `gangs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `members` text,
  `maxmembers` int(2) DEFAULT '8',
  `bank` int(100) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle arma3test.gangs: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `gangs` DISABLE KEYS */;
INSERT INTO `gangs` (`id`, `owner`, `name`, `members`, `maxmembers`, `bank`, `active`) VALUES
	(3, '76561198060096065', 'Der Dealer', '"[`76561198060096065`]"', 8, 0, 1);
/*!40000 ALTER TABLE `gangs` ENABLE KEYS */;


-- Exportiere Struktur von Tabelle arma3test.houses
DROP TABLE IF EXISTS `houses`;
CREATE TABLE IF NOT EXISTS `houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(32) NOT NULL,
  `pos` varchar(64) DEFAULT NULL,
  `inventory` text,
  `containers` text,
  `owned` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`,`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle arma3test.houses: ~3 rows (ungefähr)
/*!40000 ALTER TABLE `houses` DISABLE KEYS */;
INSERT INTO `houses` (`id`, `pid`, `pos`, `inventory`, `containers`, `owned`) VALUES
	(1, '76561198064881904', '[9073.78,12012,0.454174]', '"[[],0]"', '"[]"', 1),
	(2, '76561198019384267', '[3592.63,13081.3,0.128579]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(3, '76561197979859839', '[25625.7,21339.2,0.0114689]', '"[[],0]"', '"[]"', 1);
/*!40000 ALTER TABLE `houses` ENABLE KEYS */;


-- Exportiere Struktur von Tabelle arma3test.players
DROP TABLE IF EXISTS `players`;
CREATE TABLE IF NOT EXISTS `players` (
  `uid` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `playerid` varchar(50) NOT NULL,
  `cash` int(100) NOT NULL DEFAULT '0',
  `bankacc` int(100) NOT NULL DEFAULT '0',
  `coplevel` enum('0','1','2','3','4','5','6','7','8') NOT NULL DEFAULT '0',
  `mafialevel` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `karma` int(100) NOT NULL DEFAULT '0',
  `cop_licenses` text,
  `civ_licenses` text,
  `med_licenses` text,
  `cop_gear` text NOT NULL,
  `med_gear` text NOT NULL,
  `mediclevel` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `arrested` tinyint(1) NOT NULL DEFAULT '0',
  `aliases` text NOT NULL,
  `adminlevel` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `donatorlvl` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `civ_gear` text NOT NULL,
  `blacklist` tinyint(1) NOT NULL DEFAULT '0',
  `marksmanlevel` enum('0','1') NOT NULL DEFAULT '0',
  `cop_prof` text,
  `civ_prof` text,
  `med_prof` text,
  `jail_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `playerid` (`playerid`),
  KEY `name` (`name`),
  KEY `blacklist` (`blacklist`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle arma3test.players: ~14 rows (ungefähr)
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` (`uid`, `name`, `playerid`, `cash`, `bankacc`, `coplevel`, `mafialevel`, `karma`, `cop_licenses`, `civ_licenses`, `med_licenses`, `cop_gear`, `med_gear`, `mediclevel`, `arrested`, `aliases`, `adminlevel`, `donatorlvl`, `civ_gear`, `blacklist`, `marksmanlevel`, `cop_prof`, `civ_prof`, `med_prof`, `jail_time`) VALUES
	(12, 'J. Guevara', '76561197979859839', 0, 909015040, '7', '1', 0, '"[[`license_cop_air`,1],[`license_cop_swat`,0],[`license_cop_cg`,0]]"', '"[[`license_civ_driver`,1],[`license_civ_air`,1],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,1],[`license_civ_oil`,1],[`license_civ_dive`,1],[`license_civ_truck`,1],[`license_civ_gun`,0],[`license_civ_rebel`,1],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,1],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_home`,1],[`license_civ_steel`,0],[`license_civ_coal`,1],[`license_civ_plastic`,0]]"', '"[]"', '"[`U_Rangemaster`,`V_Rangemaster_belt`,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,`hgun_P07_snds_F`,[],[],[],[],[],[`Trixie_5x762_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`],[],[`muzzle_snds_L`,``,``],[]]"', '"[]"', '5', 0, '"[`J. Guevara`]"', '3', '0', '"[`U_B_Wetsuit`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`],`arifle_mas_ak_74m_sf`,``,[],[`30Rnd_mas_762x39_mag`,`30Rnd_mas_545x39_mag`,`30Rnd_mas_545x39_mag`,`30Rnd_mas_545x39_mag`,`30Rnd_mas_545x39_mag`,`30Rnd_mas_545x39_mag`,`30Rnd_mas_545x39_mag`],[],[],[],[],[``,``,`optic_mas_ACO_grn_camo`],[],[]]"', 0, '0', '"[]"', '"[[`Mafia_Prof`,5,0],[`Karma_Prof`,1,-10600],[`Oil_Prof`,1,200],[`Iron_Prof`,1,25],[`Copper_Prof`,1,25],[`Heroin_Prof`,1,25],[`Canabis_Prof`,1,0],[`Cocain_Prof`,1,0],[`Salt_Prof`,1,0],[`Fruit_Prof`,2,93],[`Diamond_Prof`,1,0],[`Rock_Prof`,1,50],[`Coal_Prof`,1,0],[`Sand_Prof`,1,0]]"', NULL, 0),
	(13, '[Lieutenant 2nd] Marius', '76561198064881904', 2658973, 90499760, '7', '0', 0, '"[[`license_cop_air`,1],[`license_cop_swat`,0],[`license_cop_cg`,0]]"', '"[[`license_civ_driver`,1],[`license_civ_air`,1],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,1],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,1],[`license_civ_gun`,0],[`license_civ_rebel`,1],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,1],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_home`,1],[`license_civ_steel`,0],[`license_civ_coal`,0],[`license_civ_plastic`,0]]"', '"[]"', '"[`U_B_CombatUniform_mcam_worn`,`V_Rangemaster_belt`,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],`arifle_MXC_F`,``,[],[`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`],[],[],[],[`30Rnd_65x39_caseless_mag`,`30Rnd_65x39_caseless_mag`,`30Rnd_65x39_caseless_mag`,`30Rnd_65x39_caseless_mag`],[``,``,``],[],[]]"', '"[]"', '5', 0, '"[`[Lieutenant 2nd] Marius`]"', '3', '0', '"[`U_C_Poloshirt_stripped`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`],``,``,[],[],[],[],[],[],[],[],[]]"', 0, '0', '"[]"', '"[[`Mafia_Prof`,1,0],[`Karma_Prof`,1,0],[`Oil_Prof`,1,0],[`Iron_Prof`,1,0],[`Copper_Prof`,1,0],[`Heroin_Prof`,1,0],[`Canabis_Prof`,1,0],[`Cocain_Prof`,1,0],[`Salt_Prof`,1,0],[`Fruit_Prof`,1,0],[`Diamond_Prof`,1,0],[`Rock_Prof`,1,0],[`Sand_Prof`,1,0]]"', NULL, 0),
	(14, '[Wrt. Officer] Charly', '76561198019384267', 1703400, 97757664, '7', '1', 0, '"[[`license_cop_air`,1],[`license_cop_swat`,0],[`license_cop_cg`,0]]"', '"[[`license_civ_driver`,1],[`license_civ_air`,1],[`license_civ_heroin`,1],[`license_civ_marijuana`,1],[`license_civ_gang`,0],[`license_civ_boat`,1],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,1],[`license_civ_gun`,0],[`license_civ_rebel`,1],[`license_civ_coke`,0],[`license_civ_diamond`,1],[`license_civ_copper`,1],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_home`,1],[`license_civ_steel`,0],[`license_civ_coal`,1],[`license_civ_plastic`,0]]"', '"[[`license_med_air`,1]]"', '"[`U_Rangemaster`,`V_Rangemaster_belt`,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],`arifle_mas_m4c`,`hgun_P07_snds_F`,[],[`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`30Rnd_mas_556x45_Stanag`],[],[],[],[`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`30Rnd_mas_556x45_Stanag`,`30Rnd_mas_556x45_Stanag`,`16Rnd_9x21_Mag`],[``,``,`optic_mas_aim`],[`muzzle_snds_L`,``,``],[]]"', '"[`U_Rangemaster`,``,`B_FieldPack_ocamo`,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`,`Binocular`],[],[],[],[],[`FirstAidKit`,`FirstAidKit`,`Medikit`,`ToolKit`],[],[],[],[],[],[]]"', '5', 0, '"[`Charls Draven`]"', '3', '0', '"[`U_BG_Guerrilla_6_1`,`kae_TK_ChestRig_T`,`B_Bergen_sgg`,``,`kio_skl_msk`,[`ItemMap`,`ItemCompass`,`ItemWatch`],`arifle_mas_ak74_a`,`RH_muzi`,[],[`Trixie_10x762_Mag`,`30Rnd_mas_762x39_mag`,`30Rnd_mas_545x39_mag`],[],[],[],[`Trixie_10x762_Mag`,`Trixie_10x762_Mag`,`Trixie_10x762_Mag`,`Trixie_10x762_Mag`,`30Rnd_mas_545x39_mag`,`30Rnd_mas_545x39_mag`,`30Rnd_mas_545x39_mag`,`30Rnd_mas_545x39_mag`,`RH_30Rnd_9x19_UZI`],[``,``,`optic_ACO_grn`],[``,``,``],[]]"', 0, '0', '"[]"', '"[[`Mafia_Prof`,1,1],[`Karma_Prof`,1,-10000],[`Oil_Prof`,1,0],[`Iron_Prof`,1,0],[`Copper_Prof`,1,0],[`Heroin_Prof`,1,0],[`Canabis_Prof`,1,0],[`Cocain_Prof`,1,0],[`Salt_Prof`,1,0],[`Fruit_Prof`,1,0],[`Diamond_Prof`,1,0],[`Rock_Prof`,1,0],[`Coal_Prof`,1,0],[`Sand_Prof`,1,0]]"', NULL, 0),
	(15, '[Sergeant 1nd] Joe', '76561197968313482', 0, 7000, '7', '1', 0, '"[[`license_cop_air`,0],[`license_cop_swat`,0],[`license_cop_cg`,0]]"', '"[[`license_civ_driver`,0],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_home`,0]]"', '"[]"', '"[`U_Rangemaster`,`V_Rangemaster_belt`,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,`hgun_P07_snds_F`,[],[`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`],[],[],[],[`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`],[],[`muzzle_snds_L`,``,``],[]]"', '"[]"', '0', 0, '"[`[Sergeant 1nd] Joe`]"', '0', '0', '"[`U_C_Poloshirt_redwhite`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`],``,``,[],[],[],[],[],[],[],[],[]]"', 0, '0', NULL, NULL, NULL, 0),
	(16, 'Costa Cordales', '76561197998333275', 582750, 14750, '7', '0', 0, '"[[`license_cop_air`,0],[`license_cop_swat`,0],[`license_cop_cg`,0]]"', '"[[`license_civ_driver`,1],[`license_civ_air`,1],[`license_civ_heroin`,0],[`license_civ_marijuana`,1],[`license_civ_gang`,0],[`license_civ_boat`,1],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,1],[`license_civ_gun`,1],[`license_civ_rebel`,1],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_home`,1],[`license_civ_steel`,0],[`license_civ_coal`,0],[`license_civ_plastic`,0]]"', '"[]"', '"[`U_B_CombatUniform_mcam_worn`,``,`B_Carryall_cbr`,`G_Aviator`,`H_Booniehat_mcamo`,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,`hgun_P07_snds_F`,[`muzzle_snds_H`],[`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`hlc_30Rnd_9x19_B_MP5`],[],[`hlc_30Rnd_9x19_B_MP5`,`hlc_30Rnd_9x19_B_MP5`,`hlc_30Rnd_9x19_B_MP5`,`hlc_30Rnd_9x19_B_MP5`],[],[],[],[`muzzle_snds_L`,``,``],[]]"', '"[]"', '0', 0, '"[`Costa Cordales`]"', '3', '0', '"[`U_C_Commoner1_1`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`],``,`RH_ttracker_g`,[],[`RH_6Rnd_45ACP_Mag`,`RH_6Rnd_45ACP_Mag`],[],[],[],[],[],[``,``,``],[]]"', 0, '0', '"[]"', '"[[`Mafia_Prof`,1,0],[`Karma_Prof`,1,10000],[`Oil_Prof`,1,0],[`Iron_Prof`,1,0],[`Copper_Prof`,1,0],[`Heroin_Prof`,1,0],[`Canabis_Prof`,1,0],[`Cocain_Prof`,1,0],[`Salt_Prof`,1,0],[`Fruit_Prof`,1,0],[`Diamond_Prof`,1,0],[`Rock_Prof`,1,0],[`Coal_Prof`,1,0],[`Sand_Prof`,1,0]]"', NULL, 0),
	(17, '[Commander] Moerti84', '76561198016726932', 1150000, 105103520, '7', '0', 0, '"[[`license_cop_air`,1],[`license_cop_swat`,0],[`license_cop_cg`,0]]"', '"[[`license_civ_driver`,1],[`license_civ_air`,1],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,1],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,1],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_home`,0],[`license_civ_steel`,0],[`license_civ_coal`,0],[`license_civ_plastic`,0]]"', '"[]"', '"[`U_B_CombatUniform_mcam_worn`,`V_Rangemaster_belt`,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`,`Binocular`],`srifle_mas_sr25_d`,`hgun_P07_snds_F`,[],[`20Rnd_mas_762x51_Stanag`,`20Rnd_mas_762x51_Stanag`],[],[],[],[`16Rnd_9x21_Mag`,`20Rnd_mas_762x51_Stanag`,`20Rnd_mas_762x51_Stanag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`],[``,``,`optic_mas_aim`],[`muzzle_snds_L`,``,``],[]]"', '"[]"', '5', 0, '"[`[Commander] Moerti84`]"', '3', '0', '"[`U_C_Commoner1_1`,``,``,``,`H_Hat_camo`,[`ItemMap`,`ItemCompass`,`ItemWatch`],``,``,[],[],[],[],[],[],[],[],[]]"', 0, '0', '"[]"', '"[[`Mafia_Prof`,1,0],[`Karma_Prof`,1,-10500],[`Oil_Prof`,1,0],[`Iron_Prof`,1,0],[`Copper_Prof`,1,75],[`Heroin_Prof`,1,0],[`Canabis_Prof`,1,0],[`Cocain_Prof`,1,0],[`Salt_Prof`,1,0],[`Fruit_Prof`,1,0],[`Diamond_Prof`,1,0],[`Rock_Prof`,1,0],[`Coal_Prof`,1,0],[`Sand_Prof`,1,0]]"', NULL, 0),
	(18, 'Lukas ', '76561198062607994', 0, 4344746, '7', '0', 0, '"[[`license_cop_air`,1],[`license_cop_swat`,0],[`license_cop_cg`,1]]"', '"[[`license_civ_driver`,1],[`license_civ_air`,1],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,1],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,1],[`license_civ_gun`,1],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,1],[`license_civ_cement`,0],[`license_civ_home`,1],[`license_civ_steel`,0],[`license_civ_coal`,0],[`license_civ_plastic`,0]]"', '"[]"', '"[`U_B_CombatUniform_mcam_worn`,`V_PlateCarrier2_rgr`,`B_Kitbag_cbr`,``,`H_MilCap_mcamo`,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],`hlc_rifle_m14dmr`,`hgun_P07_snds_F`,[],[`hlc_20Rnd_762x51_B_M14`],[],[],[],[`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`hlc_20Rnd_762x51_B_M14`],[``,``,`hlc_optic_LRT_m14`],[`muzzle_snds_L`,``,``],[]]"', '"[]"', '0', 0, '"[`Lukas `]"', '3', '0', '"[`U_C_Poloshirt_salmon`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`],``,``,[],[],[],[],[],[],[],[],[]]"', 0, '0', '"[]"', '"[[`Mafia_Prof`,1,0],[`Karma_Prof`,1,10000],[`Oil_Prof`,1,0],[`Iron_Prof`,1,0],[`Copper_Prof`,1,0],[`Heroin_Prof`,1,50],[`Canabis_Prof`,1,0],[`Cocain_Prof`,1,0],[`Salt_Prof`,1,0],[`Fruit_Prof`,2,18],[`Diamond_Prof`,1,0],[`Rock_Prof`,1,0],[`Coal_Prof`,1,0],[`Sand_Prof`,1,0]]"', NULL, 0),
	(19, '[Wrt. Officer] Joschi', '76561198060096065', 25000, 582305, '7', '0', 0, '"[[`license_cop_air`,1],[`license_cop_swat`,0],[`license_cop_cg`,0]]"', '"[[`license_civ_driver`,1],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,1],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_home`,1],[`license_civ_steel`,0],[`license_civ_coal`,0],[`license_civ_plastic`,0]]"', '"[]"', '"[`U_B_CombatUniform_mcam_tshirt`,`V_PlateCarrierSpec_rgr`,`B_AssaultPack_rgr_Medic`,``,`H_HelmetB_light_desert`,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemRadio`,`NVGoggles`],`arifle_MX_pointer_F`,`hgun_P07_F`,[`FirstAidKit`],[`30Rnd_65x39_caseless_mag`,`Chemlight_green`],[`Medikit`,`FirstAidKit`,`FirstAidKit`,`FirstAidKit`,`FirstAidKit`,`FirstAidKit`,`FirstAidKit`,`FirstAidKit`,`FirstAidKit`,`FirstAidKit`,`FirstAidKit`],[],[],[`30Rnd_65x39_caseless_mag`,`30Rnd_65x39_caseless_mag`,`30Rnd_65x39_caseless_mag`,`16Rnd_9x21_Mag`,`SmokeShell`,`SmokeShellGreen`,`SmokeShellBlue`,`SmokeShellOrange`,`Chemlight_green`,`30Rnd_65x39_caseless_mag`,`16Rnd_9x21_Mag`,`30Rnd_65x39_caseless_mag`,`16Rnd_9x21_Mag`],[``,`acc_pointer_IR`,``],[``,``,``],[]]"', '"[]"', '0', 0, '"[`[Wrt. Officer] Joschi`]"', '0', '0', '"[`rds_uniform_doctor`,``,``,`G_Squares`,`rds_worker_cap3`,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,``,[],[],[],[],[],[],[],[],[`life_inv_water`,`life_inv_water`,`life_inv_tbacon`,`life_inv_tbacon`]]"', 0, '0', '"[]"', '"[[`Mafia_Prof`,1,0],[`Karma_Prof`,1,-200],[`Oil_Prof`,1,0],[`Iron_Prof`,1,0],[`Copper_Prof`,1,0],[`Heroin_Prof`,1,0],[`Canabis_Prof`,1,0],[`Cocain_Prof`,1,0],[`Salt_Prof`,1,0],[`Fruit_Prof`,1,0],[`Diamond_Prof`,1,0],[`Rock_Prof`,1,0],[`Coal_Prof`,1,0],[`Sand_Prof`,1,0]]"', NULL, 0),
	(20, '[Recruit]Schrank', '76561198040075609', 0, 3000, '0', '0', 0, '"[]"', '"[[`license_civ_driver`,1],[`license_civ_air`,1],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,1],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,1],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_home`,1],[`license_civ_steel`,0],[`license_civ_coal`,0],[`license_civ_plastic`,0]]"', '"[]"', '"[]"', '"[]"', '0', 0, '"[`[Recruit]Schrank`]"', '0', '0', '"[`U_C_Poloshirt_stripped`,``,`B_Carryall_khk`,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`],``,`hgun_P07_snds_F`,[],[],[`ToolKit`],[],[],[],[],[`muzzle_snds_L`,``,``],[]]"', 0, '0', NULL, '"[[`Mafia_Prof`,1,0],[`Karma_Prof`,1,0],[`Oil_Prof`,1,0],[`Iron_Prof`,1,0],[`Copper_Prof`,1,0],[`Heroin_Prof`,1,0],[`Canabis_Prof`,1,0],[`Cocain_Prof`,1,0],[`Salt_Prof`,1,0],[`Fruit_Prof`,1,0],[`Diamond_Prof`,1,0],[`Rock_Prof`,1,0],[`Coal_Prof`,1,0],[`Sand_Prof`,1,0]]"', NULL, 0),
	(21, '[Recruit] Feldmann', '76561198063834807', 0, 3000, '0', '0', 0, '"[]"', '"[[`license_civ_driver`,0],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_home`,0],[`license_civ_steel`,0],[`license_civ_coal`,0],[`license_civ_plastic`,0]]"', '"[]"', '"[]"', '"[]"', '0', 0, '"[`[Recruit] Feldmann`]"', '0', '0', '"[`U_C_Commoner1_1`,``,`B_Carryall_khk`,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`,`NVGoggles`,`Binocular`],``,``,[`FirstAidKit`,`FirstAidKit`],[],[`ToolKit`,`ToolKit`],[],[],[],[],[],[`life_inv_rabbit`,`life_inv_water`,`life_inv_fuelF`,`life_inv_pickaxe`]]"', 0, '0', NULL, '"[[`Mafia_Prof`,1,0],[`Karma_Prof`,1,0],[`Oil_Prof`,1,0],[`Iron_Prof`,1,0],[`Copper_Prof`,1,0],[`Heroin_Prof`,1,0],[`Canabis_Prof`,1,0],[`Cocain_Prof`,1,0],[`Salt_Prof`,1,0],[`Fruit_Prof`,1,0],[`Diamond_Prof`,1,0],[`Rock_Prof`,1,0],[`Coal_Prof`,1,0],[`Sand_Prof`,1,0]]"', NULL, 0),
	(22, '[FE] Hr. Bommel', '76561197970079730', 5285, 20550, '0', '0', 0, '"[]"', '"[[`license_civ_driver`,1],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,1],[`license_civ_gun`,1],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_home`,0],[`license_civ_steel`,0],[`license_civ_coal`,0],[`license_civ_plastic`,0]]"', '"[]"', '"[]"', '"[]"', '0', 0, '"[`[FE] Hr. Bommel`]"', '0', '0', '"[`rds_uniform_citizen3`,``,`B_Carryall_khk`,`G_Aviator`,`H_StrawHat`,[`ItemMap`,`ItemCompass`,`ItemWatch`],``,`RH_muzi`,[],[`RH_30Rnd_9x19_UZI`,`RH_30Rnd_9x19_UZI`],[],[`RH_30Rnd_9x19_UZI`,`RH_30Rnd_9x19_UZI`],[],[],[],[``,``,``],[]]"', 0, '0', NULL, '"[[`Mafia_Prof`,1,0],[`Karma_Prof`,1,106],[`Oil_Prof`,1,0],[`Iron_Prof`,1,0],[`Copper_Prof`,1,0],[`Heroin_Prof`,1,0],[`Canabis_Prof`,1,0],[`Cocain_Prof`,1,0],[`Salt_Prof`,1,0],[`Fruit_Prof`,4,364],[`Diamond_Prof`,1,0],[`Rock_Prof`,1,0],[`Coal_Prof`,1,0],[`Sand_Prof`,1,0]]"', NULL, 0),
	(23, 'buchi', '76561198074689442', 0, 15889, '0', '0', 0, '"[]"', '"[[`license_civ_driver`,0],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_home`,0],[`license_civ_steel`,0],[`license_civ_coal`,0],[`license_civ_plastic`,0]]"', '"[]"', '"[]"', '"[]"', '0', 0, '"[`buchi`]"', '0', '0', '"[`rds_uniform_schoolteacher`,``,`B_Carryall_oli`,`G_Aviator`,`H_Cap_grn_BI`,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`,`Binocular`],``,``,[`FirstAidKit`,`FirstAidKit`],[],[`ToolKit`,`ToolKit`],[],[],[],[],[],[`life_inv_rabbit`,`life_inv_rabbit`,`life_inv_water`,`life_inv_water`,`life_inv_water`,`life_inv_pickaxe`]]"', 0, '0', NULL, '"[[`Mafia_Prof`,1,0],[`Karma_Prof`,1,85],[`Oil_Prof`,1,0],[`Iron_Prof`,1,0],[`Copper_Prof`,1,0],[`Heroin_Prof`,1,0],[`Canabis_Prof`,1,0],[`Cocain_Prof`,1,0],[`Salt_Prof`,1,0],[`Fruit_Prof`,6,119],[`Diamond_Prof`,1,0],[`Rock_Prof`,1,0],[`Coal_Prof`,1,0],[`Sand_Prof`,1,0]]"', NULL, 0),
	(24, 'Louis Martinez', '76561198007234517', 30, 11000, '0', '0', 0, '"[]"', '"[[`license_civ_driver`,1],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_home`,0],[`license_civ_steel`,0],[`license_civ_coal`,0],[`license_civ_plastic`,0]]"', '"[]"', '"[]"', '"[]"', '0', 0, '"[`Louis Martinez`]"', '0', '0', '"[`U_IG_Guerilla3_1`,``,`B_Carryall_khk`,``,`H_Booniehat_tan`,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`,`Binocular`],``,``,[`FirstAidKit`,`NVGoggles`],[],[`ToolKit`,`ToolKit`],[],[],[],[],[],[]]"', 0, '0', NULL, '"[[`Mafia_Prof`,1,0],[`Karma_Prof`,1,21],[`Oil_Prof`,1,0],[`Iron_Prof`,1,0],[`Copper_Prof`,1,0],[`Heroin_Prof`,1,0],[`Canabis_Prof`,1,0],[`Cocain_Prof`,1,0],[`Salt_Prof`,1,0],[`Fruit_Prof`,1,105],[`Diamond_Prof`,1,0],[`Rock_Prof`,1,0],[`Coal_Prof`,1,0],[`Sand_Prof`,1,0]]"', NULL, 0),
	(25, '[ReCon] SCAR ', '76561198026354936', 10265, 1250, '0', '0', 0, '"[]"', '"[[`license_civ_driver`,1],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_home`,0],[`license_civ_steel`,0],[`license_civ_coal`,0],[`license_civ_plastic`,0]]"', '"[]"', '"[]"', '"[]"', '0', 0, '"[`[ReCon] SCAR `]"', '0', '0', '"[`U_C_Commoner1_1`,``,`B_Carryall_khk`,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`],``,``,[],[],[],[],[],[],[],[],[`life_inv_rabbit`,`life_inv_water`]]"', 0, '0', NULL, '"[[`Mafia_Prof`,1,0],[`Karma_Prof`,1,60],[`Oil_Prof`,1,0],[`Iron_Prof`,1,0],[`Copper_Prof`,1,0],[`Heroin_Prof`,1,0],[`Canabis_Prof`,1,0],[`Cocain_Prof`,1,0],[`Salt_Prof`,1,0],[`Fruit_Prof`,5,156],[`Diamond_Prof`,1,0],[`Rock_Prof`,1,0],[`Coal_Prof`,1,0],[`Sand_Prof`,1,0]]"', NULL, 0),
	(26, 'Largo', '76561198105347265', 61750, 3195544, '7', '0', 0, '"[[`license_cop_air`,1],[`license_cop_swat`,0],[`license_cop_cg`,0]]"', '"[[`license_civ_driver`,1],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,1],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,1],[`license_civ_gun`,1],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_home`,0],[`license_civ_steel`,0],[`license_civ_coal`,0],[`license_civ_plastic`,0]]"', '"[[`license_med_air`,0]]"', '"[`U_B_CombatUniform_mcam_worn`,`V_PlateCarrier2_rgr`,`B_Bergen_sgg`,``,`H_Booniehat_mcamo`,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`,`NVGoggles_mas_h`],`srifle_mas_m24_d`,`hgun_P07_snds_F`,[],[`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`],[`ToolKit`,`Medikit`],[`5Rnd_mas_762x51_Stanag`,`5Rnd_mas_762x51_Stanag`,`5Rnd_mas_762x51_Stanag`,`5Rnd_mas_762x51_Stanag`,`16Rnd_9x21_Mag`],[],[`5Rnd_mas_762x51_Stanag`,`5Rnd_mas_762x51_Stanag`,`5Rnd_mas_762x51_Stanag`,`5Rnd_mas_762x51_Stanag`,`5Rnd_mas_762x51_Stanag`,`5Rnd_mas_762x51_Stanag`,`5Rnd_mas_762x51_Stanag`,`5Rnd_mas_762x51_Stanag`,`5Rnd_mas_762x51_Stanag`,`5Rnd_mas_762x51_Stanag`,`5Rnd_mas_762x51_Stanag`,`5Rnd_mas_762x51_Stanag`,`5Rnd_mas_762x51_Stanag`,`16Rnd_9x21_Mag`],[``,``,``],[`muzzle_snds_L`,``,``],[]]"', '"[`U_Rangemaster`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`],[],[],[`FirstAidKit`,`FirstAidKit`],[],[],[],[],[],[],[],[]]"', '0', 0, '"[`Largo`]"', '0', '0', '"[`U_C_Poloshirt_salmon`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`],``,``,[],[],[],[],[],[],[],[],[]]"', 0, '0', '"[]"', '"[[`Mafia_Prof`,1,0],[`Karma_Prof`,1,0],[`Oil_Prof`,1,0],[`Iron_Prof`,1,0],[`Copper_Prof`,1,0],[`Heroin_Prof`,1,0],[`Canabis_Prof`,1,0],[`Cocain_Prof`,1,0],[`Salt_Prof`,1,0],[`Fruit_Prof`,1,0],[`Diamond_Prof`,1,0],[`Rock_Prof`,1,0],[`Coal_Prof`,1,0],[`Sand_Prof`,1,0]]"', '"[]"', 0),
	(27, 'Blacky', '76561197983960337', 0, 8500, '0', '0', 0, '"[]"', '"[[`license_civ_driver`,1],[`license_civ_air`,1],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,1],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_home`,0],[`license_civ_steel`,0],[`license_civ_coal`,0],[`license_civ_plastic`,0]]"', '"[]"', '"[]"', '"[]"', '0', 0, '"[`Blacky`]"', '0', '0', '"[`U_C_Poloshirt_stripped`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`],``,``,[],[],[],[],[],[],[],[],[]]"', 0, '0', NULL, '"[[`Mafia_Prof`,1,0],[`Karma_Prof`,1,22],[`Oil_Prof`,1,0],[`Iron_Prof`,1,0],[`Copper_Prof`,1,0],[`Heroin_Prof`,1,0],[`Canabis_Prof`,1,0],[`Cocain_Prof`,1,0],[`Salt_Prof`,1,0],[`Fruit_Prof`,3,30],[`Diamond_Prof`,1,0],[`Rock_Prof`,1,0],[`Coal_Prof`,1,0],[`Sand_Prof`,1,0]]"', NULL, 0),
	(28, '[FE] dip. Psych. E.Moore', '76561198110449775', 2970, 350, '0', '0', 0, '"[]"', '"[[`license_civ_driver`,1],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,1],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_home`,0],[`license_civ_steel`,0],[`license_civ_coal`,0],[`license_civ_plastic`,0]]"', '"[]"', '"[]"', '"[]"', '0', 0, '"[`[FE] dip. Psych. E.Moore`]"', '0', '0', '"[`U_C_Poloshirt_salmon`,``,`B_Carryall_khk`,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`],``,``,[],[],[],[],[],[],[],[],[`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`]]"', 0, '0', NULL, '"[[`Mafia_Prof`,1,0],[`Karma_Prof`,1,52],[`Oil_Prof`,1,0],[`Iron_Prof`,1,0],[`Copper_Prof`,1,0],[`Heroin_Prof`,1,0],[`Canabis_Prof`,1,0],[`Cocain_Prof`,1,0],[`Salt_Prof`,1,0],[`Fruit_Prof`,2,38],[`Diamond_Prof`,1,0],[`Rock_Prof`,1,0],[`Coal_Prof`,1,0],[`Sand_Prof`,1,0]]"', NULL, 0),
	(29, 'Chris', '76561197971718227', 2775, 28200, '0', '0', 0, '"[]"', '"[[`license_civ_driver`,1],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_home`,0],[`license_civ_steel`,0],[`license_civ_coal`,0],[`license_civ_plastic`,0]]"', '"[]"', '"[]"', '"[]"', '0', 0, '"[`Chris`]"', '0', '0', '"[`U_C_Poloshirt_tricolour`,``,`B_Carryall_oli`,`G_Aviator`,`rds_Woodlander_cap4`,[`ItemMap`,`ItemCompass`,`ItemWatch`],``,``,[],[],[],[],[],[],[],[],[`life_inv_rabbit`,`life_inv_rabbit`,`life_inv_rabbit`,`life_inv_rabbit`,`life_inv_rabbit`,`life_inv_water`,`life_inv_water`,`life_inv_water`,`life_inv_water`,`life_inv_water`]]"', 0, '0', NULL, '"[[`Mafia_Prof`,1,0],[`Karma_Prof`,1,0],[`Oil_Prof`,1,0],[`Iron_Prof`,1,0],[`Copper_Prof`,1,0],[`Heroin_Prof`,1,0],[`Canabis_Prof`,1,0],[`Cocain_Prof`,1,0],[`Salt_Prof`,1,0],[`Fruit_Prof`,1,0],[`Diamond_Prof`,1,0],[`Rock_Prof`,1,0],[`Coal_Prof`,1,0],[`Sand_Prof`,1,0]]"', NULL, 0),
	(30, 'Nyiro', '76561198051671966', 835, 11521, '0', '0', 0, '"[[`license_cop_air`,0],[`license_cop_swat`,0],[`license_cop_cg`,0]]"', '"[[`license_civ_driver`,1],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,1],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_home`,0],[`license_civ_steel`,0],[`license_civ_coal`,0],[`license_civ_plastic`,0]]"', '"[]"', '"[`U_Rangemaster`,`V_Rangemaster_belt`,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,`hgun_P07_snds_F`,[],[`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`],[],[],[],[`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`],[],[`muzzle_snds_L`,``,``],[]]"', '"[]"', '0', 0, '"[`Nyiro`]"', '0', '0', '"[`rds_uniform_schoolteacher`,``,`B_Carryall_khk`,`G_Aviator`,`rds_Woodlander_cap3`,[`ItemMap`,`ItemCompass`,`ItemWatch`,`NVGoggles`],`arifle_mas_aks74u_c`,``,[],[`30Rnd_mas_545x39_mag`],[],[`30Rnd_mas_545x39_mag`,`30Rnd_mas_545x39_mag`],[],[],[``,``,``],[],[`life_inv_rabbit`,`life_inv_rabbit`,`life_inv_water`,`life_inv_water`,`life_inv_donuts`,`life_inv_donuts`,`life_inv_donuts`,`life_inv_donuts`,`life_inv_coffee`,`life_inv_coffee`,`life_inv_coffee`,`life_inv_coffee`,`life_inv_pickaxe`,`life_inv_redgull`,`life_inv_redgull`,`life_inv_redgull`]]"', 0, '0', '"[]"', '"[[`Mafia_Prof`,1,0],[`Karma_Prof`,1,-100],[`Oil_Prof`,1,0],[`Iron_Prof`,1,0],[`Copper_Prof`,1,0],[`Heroin_Prof`,1,0],[`Canabis_Prof`,1,0],[`Cocain_Prof`,1,0],[`Salt_Prof`,1,0],[`Fruit_Prof`,1,0],[`Diamond_Prof`,1,0],[`Rock_Prof`,1,0],[`Coal_Prof`,1,0],[`Sand_Prof`,1,0]]"', NULL, 0),
	(31, '[Wrt.Officer] McAllistar', '76561198022988870', 485, 94450, '8', '0', 0, '"[[`license_cop_air`,0],[`license_cop_swat`,0],[`license_cop_cg`,0]]"', '"[[`license_civ_driver`,1],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_home`,0],[`license_civ_steel`,0],[`license_civ_coal`,0],[`license_civ_plastic`,0]]"', '"[]"', '"[`U_B_CombatUniform_mcam`,`V_PlateCarrier1_blk`,`B_AssaultPack_blk`,`G_Aviator`,`H_Booniehat_indp`,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],`arifle_mas_m4_d`,`hgun_P07_snds_F`,[],[`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`],[`Medikit`],[],[`optic_mas_Arco_blk`],[`30Rnd_mas_556x45_Stanag`,`30Rnd_mas_556x45_Stanag`,`16Rnd_9x21_Mag`,`30Rnd_mas_556x45_Stanag`,`16Rnd_9x21_Mag`],[``,``,`optic_mas_aim_c`],[`muzzle_snds_L`,``,``],[]]"', '"[]"', '0', 0, '"[`[Wrt.Officer] McAllistar`]"', '0', '0', '"[`U_C_Commoner1_1`,`V_PlateCarrier1_blk`,``,``,`H_Watchcap_camo`,[`ItemMap`,`ItemCompass`,`ItemWatch`],``,``,[],[],[],[],[],[],[],[],[]]"', 0, '0', '"[]"', '"[[`Mafia_Prof`,1,0],[`Karma_Prof`,1,0],[`Oil_Prof`,1,0],[`Iron_Prof`,1,0],[`Copper_Prof`,1,0],[`Heroin_Prof`,1,0],[`Canabis_Prof`,1,0],[`Cocain_Prof`,1,0],[`Salt_Prof`,1,0],[`Fruit_Prof`,1,0],[`Diamond_Prof`,1,0],[`Rock_Prof`,1,0],[`Coal_Prof`,1,0],[`Sand_Prof`,1,0]]"', NULL, 0);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;


-- Exportiere Struktur von Prozedur arma3test.resetLifeVehicles
DROP PROCEDURE IF EXISTS `resetLifeVehicles`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `resetLifeVehicles`()
BEGIN
    UPDATE vehicles SET `active`= 0;
END//
DELIMITER ;


-- Exportiere Struktur von Tabelle arma3test.vehicles
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `side` varchar(15) NOT NULL,
  `classname` varchar(32) NOT NULL,
  `type` varchar(12) NOT NULL,
  `pid` varchar(32) NOT NULL,
  `alive` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `plate` int(20) NOT NULL,
  `color` int(20) NOT NULL,
  `inventory` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `side` (`side`),
  KEY `pid` (`pid`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle arma3test.vehicles: ~160 rows (ungefähr)
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` (`id`, `side`, `classname`, `type`, `pid`, `alive`, `active`, `plate`, `color`, `inventory`) VALUES
	(2, 'cop', 'B_MRAP_01_F', 'Car', '76561197979859839', 1, 0, 422364, 0, '"[]"'),
	(3, 'cop', 'B_MRAP_01_F', 'Car', '76561198064881904', 1, 0, 802315, 0, '"[]"'),
	(4, 'cop', 'B_MRAP_01_F', 'Car', '76561198064881904', 1, 0, 246317, 0, '"[]"'),
	(5, 'civ', 'C_SUV_01_F', 'Car', '76561198064881904', 1, 0, 582082, 0, '"[]"'),
	(7, 'cop', 'B_MRAP_01_F', 'Car', '76561198064881904', 1, 0, 477980, 0, '"[]"'),
	(8, 'civ', 'C_Offroad_01_F', 'Car', '76561198019384267', 1, 0, 328930, 8, '"[]"'),
	(9, 'civ', 'C_Offroad_01_F', 'Car', '76561198019384267', 1, 0, 811385, 5, '"[]"'),
	(10, 'civ', 'B_Quadbike_01_F', 'Car', '76561198019384267', 1, 0, 72411, 2, '"[]"'),
	(11, 'med', 'O_Truck_03_medical_F', 'Car', '76561198019384267', 1, 0, 842429, 0, '"[]"'),
	(12, 'med', 'O_Heli_Light_02_unarmed_F', 'Air', '76561198019384267', 1, 0, 91696, 4, '"[]"'),
	(13, 'med', 'B_Truck_01_medical_F', 'Car', '76561198019384267', 1, 0, 695543, 0, '"[]"'),
	(14, 'cop', 'B_Heli_Transport_01_F', 'Air', '76561198064881904', 1, 0, 803857, 0, '"[]"'),
	(15, 'med', 'I_Truck_02_medical_F', 'Car', '76561198019384267', 1, 0, 571282, 0, '"[]"'),
	(18, 'cop', 'B_MRAP_01_F', 'Car', '76561198019384267', 1, 0, 624043, 0, '"[]"'),
	(20, 'civ', 'C_SUV_01_F', 'Car', '76561198064881904', 1, 0, 930304, 0, '"[]"'),
	(21, 'civ', 'C_Offroad_01_F', 'Car', '76561198064881904', 1, 0, 8013, 5, '"[]"'),
	(22, 'cop', 'C_Offroad_01_F', 'Car', '76561197979859839', 1, 0, 232798, 7, '"[]"'),
	(23, 'cop', 'C_Offroad_01_F', 'Car', '76561197979859839', 1, 0, 793097, 7, '"[]"'),
	(24, 'civ', 'O_MRAP_02_F', 'Car', '76561198019384267', 1, 0, 74269, 0, '"[]"'),
	(25, 'cop', 'B_Heli_Transport_01_F', 'Air', '76561198019384267', 1, 0, 860790, 0, '"[]"'),
	(26, 'cop', 'B_Boat_Transport_01_F', 'Ship', '76561198019384267', 1, 0, 829721, 0, '"[]"'),
	(27, 'cop', 'B_Boat_Armed_01_minigun_F', 'Ship', '76561198019384267', 1, 0, 594856, 0, '"[]"'),
	(28, 'civ', 'O_Truck_03_covered_F', 'Car', '76561198019384267', 1, 0, 364142, 0, '"[]"'),
	(29, 'civ', 'O_Heli_Light_02_unarmed_F', 'Air', '76561198019384267', 1, 0, 616543, 1, '"[]"'),
	(30, 'civ', 'C_Boat_Civil_01_F', 'Ship', '76561198019384267', 1, 0, 427216, 0, '"[]"'),
	(31, 'civ', 'C_Kart_01_Red_F', 'Car', '76561198064881904', 1, 0, 763960, 0, '"[]"'),
	(32, 'civ', 'O_MRAP_02_F', 'Car', '76561198019384267', 1, 0, 268095, 0, '"[]"'),
	(33, 'civ', 'O_Truck_03_device_F', 'Car', '76561198019384267', 1, 0, 90895, 0, '"[]"'),
	(34, 'civ', 'O_Truck_03_device_F', 'Car', '76561198019384267', 1, 0, 408451, 0, '"[]"'),
	(35, 'civ', 'O_Heli_Light_02_unarmed_F', 'Air', '76561198019384267', 1, 0, 804930, 1, '"[]"'),
	(36, 'civ', 'O_Heli_Light_02_unarmed_F', 'Air', '76561198019384267', 1, 0, 130440, 1, '"[]"'),
	(39, 'civ', 'B_Heli_Light_01_F', 'Air', '76561198016726932', 1, 0, 231785, 2, '"[]"'),
	(40, 'cop', 'B_MRAP_01_F', 'Car', '76561198062607994', 1, 0, 236749, 0, '"[]"'),
	(41, 'cop', 'C_SUV_01_F', 'Car', '76561198062607994', 1, 0, 831357, 1, '"[]"'),
	(42, 'cop', 'C_SUV_01_F', 'Car', '76561198062607994', 1, 0, 42249, 4, '"[]"'),
	(44, 'civ', 'LandRover_TK_CIV_EP1', 'Car', '76561197979859839', 1, 0, 513425, 0, '"[]"'),
	(45, 'civ', 'LandRover_TK_CIV_EP1', 'Car', '76561197998333275', 1, 0, 130556, 0, '"[]"'),
	(46, 'civ', 'O_MRAP_02_F', 'Car', '76561197998333275', 1, 0, 240308, 0, '"[]"'),
	(47, 'civ', 'O_MRAP_02_F', 'Car', '76561197998333275', 1, 0, 703985, 0, '"[]"'),
	(48, 'civ', 'LandRover_TK_CIV_EP1', 'Car', '76561197979859839', 1, 0, 79337, 0, '"[]"'),
	(49, 'civ', 'LandRover_TK_CIV_EP1', 'Car', '76561197979859839', 1, 0, 945662, 0, '"[]"'),
	(50, 'civ', 'LandRover_TK_CIV_EP1', 'Car', '76561197998333275', 1, 0, 495607, 0, '"[]"'),
	(51, 'civ', 'LandRover_TK_CIV_EP1', 'Car', '76561198062607994', 1, 0, 186668, 0, '"[]"'),
	(52, 'civ', 'LandRover_TK_CIV_EP1', 'Car', '76561198019384267', 1, 0, 806404, 0, '"[]"'),
	(53, 'civ', 'LandRover_TK_CIV_EP1', 'Car', '76561198062607994', 1, 0, 651529, 0, '"[]"'),
	(61, 'cop', 'B_Heli_Transport_01_F', 'Air', '76561198062607994', 1, 0, 453107, 0, '"[]"'),
	(62, 'cop', 'B_Heli_Transport_01_F', 'Air', '76561198062607994', 1, 0, 585763, 0, '"[]"'),
	(63, 'civ', 'O_Heli_Light_02_unarmed_F', 'Air', '76561197998333275', 1, 0, 238152, 1, '"[]"'),
	(64, 'civ', 'C_Kart_01_Blu_F', 'Car', '76561198062607994', 1, 0, 633793, 0, '"[]"'),
	(67, 'cop', 'B_MRAP_01_F', 'Car', '76561197979859839', 1, 0, 394990, 0, '"[]"'),
	(68, 'civ', 'C_Van_01_transport_F', 'Car', '76561198062607994', 1, 0, 491431, 0, '"[]"'),
	(69, 'civ', 'C_Hatchback_01_F', 'Car', '76561197979859839', 1, 0, 802404, 0, '"[]"'),
	(70, 'civ', 'LandRover_TK_CIV_EP1', 'Car', '76561197979859839', 1, 0, 961322, 0, '"[]"'),
	(71, 'cop', 'B_MRAP_01_F', 'Car', '76561198062607994', 1, 0, 487062, 0, '"[]"'),
	(72, 'cop', 'B_MRAP_01_F', 'Car', '76561198062607994', 1, 0, 118404, 0, '"[]"'),
	(73, 'civ', 'LandRover_TK_CIV_EP1', 'Car', '76561197979859839', 1, 0, 418642, 0, '"[]"'),
	(74, 'civ', 'LandRover_TK_CIV_EP1', 'Car', '76561197979859839', 1, 0, 726168, 0, '"[]"'),
	(75, 'civ', 'LandRover_TK_CIV_EP1', 'Car', '76561197998333275', 1, 0, 281904, 0, '"[]"'),
	(76, 'civ', 'C_Hatchback_01_F', 'Car', '76561197979859839', 1, 0, 450638, 0, '"[]"'),
	(77, 'civ', 'LandRover_TK_CIV_EP1', 'Car', '76561197979859839', 1, 0, 771095, 0, '"[]"'),
	(80, 'civ', 'O_Truck_03_device_F', 'Car', '76561197979859839', 1, 0, 88708, 0, '"[]"'),
	(81, 'civ', 'O_Truck_03_device_F', 'Car', '76561198060096065', 1, 0, 652349, 0, '"[]"'),
	(82, 'civ', 'O_Truck_03_device_F', 'Car', '76561198040075609', 1, 0, 492767, 0, '"[]"'),
	(83, 'civ', 'O_Truck_03_device_F', 'Car', '76561197979859839', 1, 0, 516744, 0, '"[]"'),
	(84, 'civ', 'O_Truck_03_device_F', 'Car', '76561197998333275', 1, 0, 935316, 0, '"[]"'),
	(85, 'cop', 'B_Heli_Transport_01_F', 'Air', '76561197979859839', 1, 0, 867609, 0, '"[]"'),
	(87, 'civ', 'LandRover_TK_CIV_EP1', 'Car', '76561197998333275', 1, 0, 82249, 0, '"[]"'),
	(88, 'civ', 'C_Van_01_transport_F', 'Car', '76561197979859839', 1, 0, 286373, 0, '"[]"'),
	(89, 'civ', 'C_Offroad_01_F', 'Car', '76561197979859839', 1, 0, 449659, 3, '"[]"'),
	(90, 'civ', 'B_G_Offroad_01_F', 'Car', '76561197979859839', 1, 0, 817007, 0, '"[]"'),
	(91, 'civ', 'C_Offroad_01_F', 'Car', '76561197979859839', 1, 0, 609707, 0, '"[]"'),
	(92, 'civ', 'C_Hatchback_01_F', 'Car', '76561198060096065', 1, 0, 172833, 7, '"[]"'),
	(93, 'civ', 'C_SUV_01_F', 'Car', '76561198060096065', 1, 0, 584195, 2, '"[]"'),
	(94, 'civ', 'C_Offroad_01_F', 'Car', '76561197979859839', 1, 0, 706696, 0, '"[]"'),
	(95, 'civ', 'C_Offroad_01_F', 'Car', '76561197979859839', 1, 0, 496829, 0, '"[]"'),
	(96, 'cop', 'C_SUV_01_F', 'Car', '76561197979859839', 1, 0, 700246, 1, '"[]"'),
	(97, 'cop', 'C_Offroad_01_F', 'Car', '76561197979859839', 1, 0, 810462, 7, '"[]"'),
	(98, 'civ', 'I_Truck_02_transport_F', 'Car', '76561197979859839', 1, 0, 733083, 0, '"[]"'),
	(99, 'civ', 'O_Truck_03_transport_F', 'Car', '76561197979859839', 1, 0, 777929, 0, '"[]"'),
	(100, 'civ', 'B_Truck_01_transport_F', 'Car', '76561197979859839', 1, 0, 873543, 0, '"[]"'),
	(101, 'cop', 'B_Heli_Light_01_F', 'Air', '76561197979859839', 1, 0, 1130, 0, '"[]"'),
	(102, 'cop', 'B_Heli_Light_01_F', 'Air', '76561197979859839', 1, 0, 823032, 0, '"[]"'),
	(103, 'cop', 'C_Offroad_01_F', 'Car', '76561197979859839', 1, 0, 302014, 7, '"[]"'),
	(104, 'cop', 'B_Heli_Light_01_F', 'Air', '76561197979859839', 1, 0, 775103, 0, '"[]"'),
	(105, 'cop', 'B_Heli_Light_01_F', 'Air', '76561197979859839', 1, 0, 483249, 0, '"[]"'),
	(106, 'cop', 'B_Heli_Light_01_F', 'Air', '76561197979859839', 1, 0, 762748, 0, '"[]"'),
	(107, 'cop', 'B_Heli_Light_01_F', 'Air', '76561198016726932', 1, 0, 777599, 0, '"[]"'),
	(108, 'cop', 'B_Heli_Light_01_F', 'Air', '76561197979859839', 1, 0, 237419, 0, '"[]"'),
	(109, 'cop', 'B_Heli_Light_01_F', 'Air', '76561197979859839', 1, 0, 380578, 0, '"[]"'),
	(110, 'cop', 'B_Heli_Light_01_F', 'Air', '76561197979859839', 1, 0, 2538, 0, '"[]"'),
	(111, 'cop', 'B_Heli_Light_01_F', 'Air', '76561198016726932', 1, 0, 419805, 0, '"[]"'),
	(112, 'cop', 'A3L_TaurusFPBPDGM', 'Car', '76561197979859839', 1, 0, 135309, 0, '"[]"'),
	(114, 'cop', 'A3L_TaurusFPBPDGM', 'Car', '76561197979859839', 1, 0, 255976, 0, '"[]"'),
	(115, 'cop', 'A3L_TaurusFPBPDGM', 'Car', '76561198016726932', 1, 0, 20646, 0, '"[]"'),
	(116, 'cop', 'DAR_TahoePoliceSlick', 'Car', '76561197979859839', 1, 0, 636066, 0, '"[]"'),
	(117, 'cop', 'DAR_TahoePoliceSlick', 'Car', '76561197979859839', 1, 0, 986456, 0, '"[]"'),
	(118, 'cop', 'B_Heli_Light_01_F', 'Air', '76561197979859839', 1, 0, 859607, 0, '"[]"'),
	(119, 'cop', 'B_Heli_Light_01_F', 'Air', '76561197979859839', 1, 0, 247453, 0, '"[]"'),
	(120, 'cop', 'B_Heli_Light_01_F', 'Air', '76561197979859839', 1, 0, 163711, 0, '"[]"'),
	(121, 'cop', 'A3L_TaurusFPBPDGM', 'Car', '76561197979859839', 1, 0, 981162, 0, '"[]"'),
	(123, 'civ', 'RDS_Lada_Civ_01', 'Car', '76561198074689442', 1, 0, 598748, 0, '"[]"'),
	(124, 'civ', 'RDS_Lada_Civ_01', 'Car', '76561197970079730', 1, 0, 469653, 0, '"[]"'),
	(125, 'civ', 'B_G_Offroad_01_F', 'Car', '76561197979859839', 1, 0, 689805, 0, '"[]"'),
	(126, 'cop', 'A3L_TaurusFPBPDGM', 'Car', '76561198016726932', 1, 0, 623466, 0, '"[]"'),
	(128, 'civ', 'RDS_Lada_Civ_04', 'Car', '76561198105347265', 1, 0, 630229, 0, '"[]"'),
	(129, 'civ', 'RDS_Lada_Civ_04', 'Car', '76561198060096065', 1, 0, 865594, 0, '"[]"'),
	(130, 'cop', 'A3L_TaurusFPBPDGM', 'Car', '76561198016726932', 1, 0, 51230, 0, '"[]"'),
	(131, 'civ', 'RDS_Lada_Civ_01', 'Car', '76561197970079730', 1, 0, 828822, 0, '"[]"'),
	(132, 'civ', 'RDS_Lada_Civ_01', 'Car', '76561197979859839', 1, 0, 199241, 0, '"[]"'),
	(133, 'civ', 'RDS_S1203_Civ_02', 'Car', '76561198026354936', 1, 0, 352946, 0, '"[]"'),
	(135, 'civ', 'RDS_Lada_Civ_01', 'Car', '76561197979859839', 1, 0, 912579, 0, '"[]"'),
	(136, 'civ', 'RDS_Lada_Civ_04', 'Car', '76561197971718227', 1, 0, 418063, 0, '"[]"'),
	(137, 'civ', 'RDS_Lada_Civ_04', 'Car', '76561197979859839', 1, 0, 451683, 0, '"[]"'),
	(138, 'civ', 'RDS_Lada_Civ_02', 'Car', '76561197979859839', 1, 0, 590925, 0, '"[]"'),
	(139, 'cop', 'A3L_TaurusFPBPDGM', 'Car', '76561198019384267', 1, 0, 291517, 0, '"[]"'),
	(140, 'civ', 'RDS_Lada_Civ_01', 'Car', '76561198110449775', 1, 0, 272986, 0, '"[]"'),
	(141, 'civ', 'RDS_S1203_Civ_01', 'Car', '76561198105347265', 1, 0, 219703, 0, '"[]"'),
	(142, 'civ', 'RDS_Lada_Civ_04', 'Car', '76561198051671966', 1, 0, 695529, 0, '"[]"'),
	(143, 'civ', 'B_Heli_Light_01_F', 'Air', '76561197979859839', 1, 0, 494614, 2, '"[]"'),
	(144, 'civ', 'LandRover_ACR', 'Car', '76561197979859839', 1, 0, 55179, 0, '"[]"'),
	(145, 'cop', 'A3L_TaurusFPBPDGM', 'Car', '76561198060096065', 1, 0, 830275, 0, '"[]"'),
	(146, 'civ', 'LandRover_ACR', 'Car', '76561197979859839', 1, 0, 18100, 0, '"[]"'),
	(147, 'cop', 'C_Offroad_01_F', 'Car', '76561198105347265', 1, 0, 827473, 7, '"[]"'),
	(148, 'cop', 'A3L_TaurusFPBPDGM', 'Car', '76561198105347265', 1, 0, 384773, 0, '"[]"'),
	(149, 'cop', 'C_SUV_01_F', 'Car', '76561198105347265', 1, 0, 900938, 4, '"[]"'),
	(150, 'cop', 'B_MRAP_01_F', 'Car', '76561198105347265', 1, 0, 554030, 0, '"[]"'),
	(151, 'cop', 'B_MRAP_01_F', 'Car', '76561198105347265', 1, 0, 548129, 0, '"[]"'),
	(152, 'cop', 'B_MRAP_01_F', 'Car', '76561198105347265', 1, 0, 384693, 0, '"[]"'),
	(153, 'cop', 'B_MRAP_01_F', 'Car', '76561198105347265', 1, 0, 922896, 0, '"[]"'),
	(154, 'cop', 'B_MRAP_01_F', 'Car', '76561198105347265', 1, 0, 235136, 0, '"[]"'),
	(155, 'cop', 'B_MRAP_01_F', 'Car', '76561198105347265', 1, 0, 223402, 0, '"[]"'),
	(156, 'cop', 'B_MRAP_01_F', 'Car', '76561198105347265', 1, 0, 44605, 0, '"[]"'),
	(157, 'cop', 'C_Offroad_01_F', 'Car', '76561198060096065', 1, 0, 849393, 7, '"[]"'),
	(158, 'cop', 'B_Heli_Transport_01_F', 'Air', '76561198016726932', 1, 0, 902156, 0, '"[]"'),
	(159, 'cop', 'B_Heli_Transport_01_F', 'Air', '76561198105347265', 1, 0, 262042, 0, '"[]"'),
	(160, 'cop', 'B_Heli_Light_01_F', 'Air', '76561198105347265', 1, 0, 267972, 0, '"[]"'),
	(161, 'cop', 'A3L_TaurusFPBPDGM', 'Car', '76561197979859839', 1, 0, 280458, 0, '"[]"'),
	(162, 'cop', 'C_SUV_01_F', 'Car', '76561197979859839', 1, 0, 523761, 1, '"[]"'),
	(163, 'cop', 'DAR_TaurusPolice', 'Car', '76561197979859839', 1, 0, 809950, 0, '"[]"'),
	(164, 'cop', 'DAR_TaurusPolice', 'Car', '76561197979859839', 1, 0, 486776, 0, '"[]"'),
	(165, 'cop', 'C_Offroad_01_F', 'Car', '76561197979859839', 1, 0, 156269, 7, '"[]"'),
	(166, 'civ', 'bwi_a3_t6a_3', 'Air', '76561197979859839', 1, 0, 497228, 0, '"[]"'),
	(167, 'civ', 'globemaster_c17_701', 'Air', '76561198016726932', 1, 0, 495821, 0, '"[]"'),
	(168, 'civ', 'DAR_MK27', 'Car', '76561197979859839', 1, 0, 848032, 0, '"[]"'),
	(169, 'civ', 'DAR_MK27T', 'Car', '76561198016726932', 1, 0, 695837, 0, '"[]"'),
	(171, 'civ', 'DAR_MK27T', 'Car', '76561197979859839', 1, 0, 790074, 0, '"[]"'),
	(172, 'civ', 'globemaster_c17_701', 'Air', '76561198016726932', 1, 0, 976185, 0, '"[]"'),
	(173, 'civ', 'LandRover_ACR', 'Car', '76561197979859839', 1, 0, 305638, 0, '"[]"'),
	(175, 'civ', 'globemaster_c17_dover', 'Air', '76561197979859839', 1, 0, 638138, 0, '"[]"'),
	(176, 'civ', 'DAR_MK27T', 'Car', '76561197979859839', 1, 0, 616380, 0, '"[]"'),
	(179, 'civ', 'bwi_a3_t6a_9', 'Air', '76561197979859839', 1, 0, 165600, 0, '"[]"'),
	(180, 'civ', 'bwi_a3_at6b', 'Air', '76561197979859839', 1, 0, 33122, 0, '"[]"'),
	(182, 'civ', 'bwi_a3_at6b', 'Air', '76561198016726932', 1, 0, 294104, 0, '"[]"'),
	(188, 'civ', 'B_CBS_WaterShadow730_F', 'Ship', '76561197979859839', 1, 0, 426253, 0, '"[]"'),
	(189, 'civ', 'bwi_a3_t6a_6', 'Air', '76561198016726932', 1, 0, 260244, 0, '"[]"'),
	(190, 'civ', 'Lifeman_FordFusion_Sport_black', 'Car', '76561197979859839', 1, 0, 497541, 0, '"[]"'),
	(191, 'cop', 'B_Heli_Light_01_F', 'Air', '76561197979859839', 1, 0, 641038, 0, '"[]"'),
	(192, 'cop', 'B_Heli_Light_01_F', 'Air', '76561197979859839', 1, 0, 688711, 0, '"[]"'),
	(193, 'cop', 'B_Heli_Transport_01_F', 'Air', '76561198019384267', 1, 0, 46067, 0, '"[]"'),
	(194, 'cop', 'B_Heli_Transport_01_F', 'Air', '76561198060096065', 1, 0, 840544, 0, '"[]"'),
	(195, 'cop', 'B_MRAP_01_F', 'Car', '76561198019384267', 1, 0, 868047, 0, '"[]"'),
	(196, 'civ', 'RDS_Lada_Civ_01', 'Car', '76561198022988870', 1, 0, 238824, 0, '"[]"'),
	(197, 'cop', 'B_Heli_Transport_01_F', 'Air', '76561198019384267', 1, 0, 820787, 0, '"[]"'),
	(198, 'cop', 'C_Offroad_01_F', 'Car', '76561198019384267', 1, 0, 61652, 7, '"[]"'),
	(199, 'civ', 'DAR_MK27T', 'Car', '76561198019384267', 1, 0, 803717, 0, '"[]"'),
	(200, 'civ', 'DAR_4X4', 'Car', '76561198019384267', 1, 0, 246059, 0, '"[]"'),
	(201, 'cop', 'B_Heli_Light_01_F', 'Air', '76561197979859839', 1, 0, 923136, 0, '"[]"'),
	(202, 'cop', 'B_Heli_Transport_01_F', 'Air', '76561197979859839', 1, 0, 212712, 0, '"[]"');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;


-- Exportiere Struktur von Tabelle arma3test.wanted
DROP TABLE IF EXISTS `wanted`;
CREATE TABLE IF NOT EXISTS `wanted` (
  `list` text,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportiere Daten aus Tabelle arma3test.wanted: ~1 rows (ungefähr)
/*!40000 ALTER TABLE `wanted` DISABLE KEYS */;
INSERT INTO `wanted` (`list`, `id`) VALUES
	('"[[`Lukas `,`76561198062607994`,[`Raub/Diebstahl`,`Ãœberfahren mit Todesfolge`],7500],[`Costa Cordales`,`76561197998333275`,[`Fahren ohne Licht`,`Fahren ohne Licht`,`Fahren ohne Licht`,`Fahren ohne Licht`,`Fahren ohne Licht`,`Fahren ohne Licht`,`Fahren ohne Licht`,`Fahren ohne Licht`,`Ãœberfahren mit Todesfolge`],9300]]"', 1);
/*!40000 ALTER TABLE `wanted` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
