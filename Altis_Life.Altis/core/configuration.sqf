#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_HC_Timer = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
Life_request_timer = false;
life_spikestrip = ObjNull;
life_respawn_timer = 2; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_i = false;
life_space = false;
D41_IsBuying = 0;
life_removeWanted = false;
life_action_gathering = false;
life_smartphoneTarget = ObjNull;
life_channel_send = true;
//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,5000); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,5); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

__CONST__(life_enableFatigue,true); //Enable / Disable the ARMA 3 Fatigue System

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
D41_Tankt = false;	
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,350);
__CONST__(life_impound_boat,250);
__CONST__(life_impound_air,850);
life_istazed = false;
life_my_gang = ObjNull;
life_muted = false;

life_bekanntschaften = [];


life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 40000; //Starting Bank Money
		
		life_paycheck = 1500; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 25000; //Starting Bank Money
		life_paycheck = 350; //Paycheck Amount
	};
	
	case independent: {
		life_atmcash = 40000;
		life_paycheck = 2500;
	};
};

/*
	Master Array of items?
*/
life_masked = [
"H_Shemag_olive",
"kio_vfv_mask",
"kio_skl_msk_grn",
"kio_skl_msk_red",
"kio_skl_msk",
"H_RacingHelmet_1_black_F",
"H_RacingHelmet_1_blue_F",
"H_RacingHelmet_1_red_F",
"H_RacingHelmet_1_orange_F",
"H_RacingHelmet_1_green_F",
"H_RacingHelmet_1_white_F",
"H_RacingHelmet_1_yellow_F",
"U_C_Driver_2",
"U_C_Driver_1",
"U_C_Driver_3",
"U_C_Driver_4"
];

life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F","C_Van_01_transport_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_steel",
	"life_inv_plastic",
	"life_inv_coalu",
	"life_inv_coalp",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_barrier",
	"life_inv_barricade",
	"life_inv_strahler",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_bluesyn",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_hopfen",
	"life_inv_malz",
	"life_inv_bier",
	"life_inv_schnaps",
	"life_inv_pilze",
	"life_inv_magicmushrooms",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagemedium",
	"life_inv_storagebig",
	"life_inv_storagebig1",
	"life_inv_zipties"
];


//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_air1","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_bluesyn","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_civ_steel","civ"],
	["license_civ_coal","civ"],
	["license_civ_plastic","civ"],
	["license_civ_bier","civ"],
	["license_civ_schnaps","civ"],
	["license_civ_pilze","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_prof =
[

["Mafia_Prof","civ"],
["Karma_Prof","civ"],
["Oil_Prof","civ"],
["Iron_Prof","civ"],
["Copper_Prof","civ"],
["Heroin_Prof","civ"],
["Canabis_Prof","civ"],
["Cocain_Prof","civ"],
["Salt_Prof","civ"],
["Fruit_Prof","civ"],
["Diamond_Prof","civ"],
["Rock_Prof","civ"],
["Coal_Prof","civ"],
["Sand_Prof","civ"],
["Malz_Prof","civ"],
["Hopfen_Prof","civ"],
["Pilze_Prof","civ"]

];
 
 
//Setup License Variables
{missionNamespace setVariable[(_x select 0),[1,0]];} foreach life_prof;


life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["cannabis",1500],["marijuana",2000],["turtle",3000],["blastingcharge",10000],["boltcutter",500],["bluesyn",6000],["pilze",1200],["magicmushrooms",1200],["goldbar",25000]];


/*
	Sell / buy arrays
*/
sell_array = 
{[
	["apple",life_VPreisApple],
	["heroinu",1850],
	["heroinp",life_VPreisAHeroinp],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["oilp",life_VPreisOilp],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["marijuana",life_VPreisMarijuana],
	["tbacon",25],
	["lockpick",75],
	["pickaxe",750],
	["redgull",200],
	["peach",life_VPreisPeach],
	["cocaine",3000],
	["cocainep",life_VPreisCocainep],
	["turtle",life_VPreisTurtle],
	["diamond",750],
	["diamondc",life_VPreisDiamondc],
	["iron_r",life_VPreisIron_r],
	["coalp",life_VPreisCoal],
	["steel",life_VPreisSteel],
	["bluesyn",life_VPreisBluesyn],
	["plastic",life_VPreisPlastic],
	["copper_r",life_VPreisCopper_r],
	["salt_r",life_VPreisSalt_r],
	["glass",life_VPreisGlass],
	["fuelF",500],
	["spikeStrip",1200],
	["barrier",1200],
	["barricade",1200],
	["strahler",1200],
	["cement",life_VPreisCement],
	["goldbar",50000],
	["zipties",200],
	["bier",life_VPreisBier],
	["schnaps",life_VPreisSchnaps],
	["magicmushrooms",life_VPreisMagicMushrooms]
];};
//__CONST__(sell_array,sell_array);

buy_array = 
{[
	["apple",life_KPreisApple],
	["rabbit",75],
	
	
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",150],
	["pickaxe",1200],
	["redgull",1500],
	["fuelF",850],
	["peach",life_KPreisPeach],
	["spikeStrip",2500],
	["barrier",2500],
	["barricade",2500],
	["strahler",2500],
	["blastingcharge",35000],
	["boltcutter",7500],
	["defusekit",2500],
	["storagesmall",250000],
	["storagemedium",500000],
	["storagebig",2500000],
	["storagebig1",3000000],
	["zipties",2000],
	["bier",life_KPreisBier],
	["schnaps",life_KPreisSchnaps]
];};
//__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[/*
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",65],
	["Medikit",450],
	["NVGoggles",980],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30],
	
	
	["RH_deagleg",0],
	["srifle_mas_svd_h",5000],
	["arifle_mas_fal_h",5000],
	["srifle_mas_m91_l",5000],
	["RH_deagles",0],
	["LMG_mas_rpk_F_a",5000],
	["arifle_mas_ak_74m_sf",3000],
	["arifle_mas_aks_74_sf",3000],
	["RH_vz61",1000],
	["RH_fn57",1000],
	["RH_tt33",1000],
	["optic_mas_ACO_grn_camo",100],
	["optic_mas_PSO_day",100],
	["10Rnd_mas_762x54_mag",100],
	["20Rnd_mas_762x51_Stanag",100],
	["RH_7Rnd_50_AE",100],
	["100Rnd_mas_545x39_mag",100],
	["30Rnd_mas_545x39_mag",100],
	["RH_8Rnd_762_tt33",100],
	["RH_20Rnd_32cal_vz61",100],
	["RH_20Rnd_57x28_FN",100],


	["Trixie_CZ750_Ghillie",5000],
	["RH_bull",2000],
	["arifle_mas_ak74_a",5000],
	["arifle_mas_aks74u_c",5000],
	["RH_mateba",2000],
	["optic_mas_ACO_grn_camo",200],
	["RH_6Rnd_454_Mag",100],
	["Trixie_10x762_Mag",200],
	["30Rnd_mas_545x39_mag",200],
	["5Rnd_mas_762x51_Stanag",200],
	["RH_6Rnd_44_Mag",200],
	



	["RH_ttracker_g",0],
	["hgun_mas_usp_F",500],
	["arifle_mas_mp5",500],
	["RH_6Rnd_45ACP_Mag",200],
	["12Rnd_mas_45acp_Mag",200],
	["30Rnd_mas_9x21_Stanag",200]
		*/
	
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[

	
	//Gebrauchtwagen
	["dbo_CIV_ol_bike",100],
	["RDS_Lada_Civ_01",500],
	["RDS_Lada_Civ_02",500],
	["RDS_Lada_Civ_04",500],
	["RDS_S1203_Civ_01",1000],
	["RDS_S1203_Civ_02",1000],
	["RDS_S1203_Civ_03",1000],
	["RDS_Golf4_Civ_01",1500],
	["RDS_Octavia_Civ_01",2000],
	//Neuwagen
	["dbo_CIV_new_bike",100],
	["C_Hatchback_01_F",3000],
	["C_Offroad_01_F",3000],
	//Trucks
	["I_Truck_02_transport_F",10000],
	["I_Truck_02_covered_F",10000],
	["O_Truck_03_transport_F",12000],
	["O_Truck_03_covered_F",12000],
	["B_Truck_01_transport_F",15000],
	["C_SUV_01_F",5000],
	//Flugzeuge
	["GNT_C185",45000],
	["bwi_a3_t6a",45000],
	["bwi_a3_t6a_1",45000],
	["bwi_a3_t6a_2",45000],
	["bwi_a3_t6a_3",45000],
	["bwi_a3_t6a_4",45000],
	["bwi_a3_t6a_5",45000],
	["bwi_a3_t6a_6",45000],
	["bwi_a3_t6a_7",45000],
	["bwi_a3_t6a_8",45000],
	["bwi_a3_t6a_9",45000],
	//Helis
	["B_Heli_Light_01_F",20000],
	["O_Heli_Light_02_unarmed_F",35000],
	
	//neg Karma
	["B_G_Offroad_01_F",3000],
	
	["LandRover_ACR",2500],
	["DAR_MK27T",10000],
	["DAR_MK27",15000],
	["DAR_4x4",10000],
	
	//pos Karma
	["B_Truck_01_box_F",20000],
	["O_Heli_Transport_04_covered_F",50000],
	["O_Truck_03_device_F",25000]
	
	
	
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",950],
	["C_Hatchback_01_F",4500],
	["C_Offroad_01_F", 6500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",15000],
	["C_Van_01_transport_F",25000],
	["C_Hatchback_01_sport_F",7500],
	["C_Van_01_fuel_F",3850],
	["I_Heli_Transport_02_F",125000],
	["C_Van_01_box_F",35000],
	["I_Truck_02_transport_F",49800],
	["I_Truck_02_covered_F",62000],
	["B_Truck_01_transport_F",135000],
	["B_Truck_01_box_F", 150000],
	["O_MRAP_02_F",65000],
	["B_Heli_Light_01_F",10000],
	["O_Heli_Light_02_unarmed_F",10000],
	["C_Rubberboat",950],
	["C_Boat_Civil_01_F",6800],
	["B_Boat_Transport_01_F",850],
	["C_Boat_Civil_01_police_F",4950],
	["B_Boat_Armed_01_minigun_F",21000],
	["B_SDV_01_F",45000],
	["B_MRAP_01_F",10000]
];
__CONST__(life_garage_sell,life_garage_sell);