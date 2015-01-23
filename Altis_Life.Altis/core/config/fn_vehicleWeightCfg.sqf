/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "C_Offroad_01_F": {50};

	case "RDS_Lada_Civ_01": {40};
	case "RDS_Lada_Civ_02": {40};
	case "RDS_Lada_Civ_03": {40};
	case "RDS_Lada_Civ_04": {40};
	
	case "RDS_S1203_Civ_01": {70};
	case "RDS_S1203_Civ_02": {70};
	case "RDS_S1203_Civ_03": {70};
	case "RDS_S1203_Civ_04": {70};
	
	case "RDS_Golf4_Civ_01": {50};
	case "RDS_Octavia_Civ_01": {50};
	
	case "B_G_Offroad_01_F": {50};
	case "C_Hatchback_01_F": {50};
	case "C_SUV_01_F": {50};
	case "dbo_CIV_new_bike" : {0};
	case "DAR_M3CivGrey" : {50};
	case "DAR_M3CivWhite" : {50};
	case "DAR_M3CivBlack" : {50};
	
	case "DAR_TahoeCivBlue" : {50};
	case "DAR_TahoeCivRed" : {50};
	case "DAR_TahoeCivSilver" : {50};
	case "DAR_TahoeCivBlack" : {50};
	
	case "SAL_AudiCivRed" : {50};
	case "SAL_AudiCivSilver" : {50};
	case "SAL_AudiCivBlack" : {50};
	
	case "SAL_77TRANSAMCiv" : {20};
	
	case "Jonzie_Viper" : {20};
	
	
	case "DAR_4x4": {150};
	case "DAR_MK27T": {330};
	case "DAR_MK27": {270};
	
	case "I_Heli_Transport_02_F": {60};
	case "B_Heli_Transport_03_unarmed_F": {50};
	case "O_Heli_Transport_04_covered_F": {50};
	
	case "sab_cz_An2": {300};
	
	case "LandRover_TK_CIV_EP1": {60};
	case "LandRover_ACR": {60};
	
	case "I_Truck_02_covered_F": {160};
	case "I_Truck_02_transport_F": {130};
	
	case "C_Hatchback_01_sport_F": {45};
	case "C_SUV_01_F": {40};
	
	case "C_Van_01_transport_F": {90};
	case "C_Van_01_box_F": {150};
	case "C_Boat_Civil_01_F": {330};
	case "C_Boat_Civil_01_police_F": {85};
	case "C_Boat_Civil_01_rescue_F": {85};
	case "B_Truck_01_box_F": {450};
	case "B_Truck_01_transport_F": {330};
	case "B_MRAP_01_F": {65};
	case "O_MRAP_02_F": {60};
	case "I_MRAP_03_F": {58};
	case "dbo_CIV_ol_bike": {0};
	case "B_Heli_Light_01_F": {20};
	case "O_Heli_Light_02_unarmed_F": {60};
	case "C_Rubberboat": {150};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {330};
	case "O_Truck_03_transport_F": {200};
	case "O_Truck_03_covered_F": {230};
	case "O_Truck_03_device_F": {350};
	case "Land_CargoBox_V1_F": {5000};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
	default {-1};
};