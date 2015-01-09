/*
	File: fn_initSpy.sqf
	
	Description:
	Does some things that I made over-complicated / un-needed but blah.
	Will eventually include server-side checks but it's blah at this point.
	
	Will also become a standalone system which is why it's setup like this.
*/

private["_binConfigPatches","_cfgPatches","_endM"];
if(isServer && !hasInterface) exitWith {}; //Server doesn't need to know.
#define __CONST__(var1,var2) var1 = compileFinal (if(typeName var2 == "STRING") then {var2} else {str(var2)})
#define __GETC__(var) (call var)

__CONST__(W_O_O_K_I_E_ANTI_ANTI_HAX,"No");
__CONST__(W_O_O_K_I_E_FUD_ANTI_ANTI_HAX,"No");
__CONST__(E_X_T_A_S_Y_ANTI_ANTI_HAX,"CopyPasta");
__CONST__(E_X_T_A_S_Y_Pro_RE,"Iswhat");
__CONST__(E_X_T_A_S_Y_Car_RE,"Youdo");
__CONST__(DO_NUKE,"LOL");
__CONST__(JxMxE_spunkveh,"Blah");
__CONST__(JxMxE_spunkveh2,"Blah");
__CONST__(JxMxE_spunkair,"Blah");
__CONST__(JJJJ_MMMM___EEEEEEE_LLYYSSTTIICCC_SHIT_RE,"No");
__CONST__(JJJJ_MMMM___EEEEEEE_LLYYSSTTIICCC_SHIT_RE_OLD,"No");
__CONST__(JJJJ_MMMM___EEEEEEE_SPAWN_VEH,"No");
__CONST__(JJJJ_MMMM___EEEEEEE_SPAWN_WEAPON,"No");

/*
	Compile our list of allowed addon patches, by default this DOES NOT ALLOW ANY ADDONS.
	
	If you want to white-list addons such as JSRS or Blastcore you need to start a test instance (Host locally and not the mission) and first fill the SPY_cfg_patchList array, once you executed it (Filled it)
	Run the following code and it will copy the list of addons / patches not in the list to your clipboard (Ctrl + V) and then add it to the array.
	
	_cfgPatches = [];
	_binConfigPatches = configFile >> "CfgPatches";
	for "_i" from 0 to count (_binConfigPatches)-1 do {
		_patchEntry = _binConfigPatches select _i;
		if(isClass _patchEntry) then {
			if(!((configName _patchEntry) in SPY_cfg_patchList)) then {
				_cfgPatches set[count _cfgPatches,(configName _patchEntry)];
			};
		};
	};

	copyToClipboard str(_cfgPatches);
	
	i.e
	["cba_xeh","Extended_EventHandlers","CBA_Extended_EventHandlers","JSRS_Environment","WarFXPE","cba_common","cba_events","cba_hashes","cba_network","cba_strings","cba_ui","cba_vectors","JSRS2_120mm_Cannon","JSRS2_127","JSRS2_155mm_AMOS",
	"JSRS2_230mm_Titan","JSRS2_30mm_Cannon","JSRS2_35mm_Autocannon","JSRS2_4Five45","JSRS2_ACPC","JSRS2_Autocannon","JSRS2_Bullethits","JSRS2_DAGR","JSRS2_DAR","JSRS2_EBR","JSRS2_Explosions","JSRS2_Explosives","JSRS2_Filters","JSRS2_FS2000",
	"JSRS2_Gatling","JSRS2_GMG20","JSRS2_GMG40","JSRS2_Khaybar","JSRS2_LMGRCWS","JSRS2_M134","JSRS2_M200","JSRS2_M320R","JSRS2_M6","JSRS2_Minigun","JSRS2_MX","JSRS2_NLAW","JSRS2_P07","JSRS2_PDW","JSRS2_Rahim","JSRS2_Rook40","JSRS2_RPG32",
	"JSRS2_Scorpian","JSRS2_SDAR","JSRS2_Skalpel_ATGM","JSRS2_Skyfire","JSRS2_Sonic_Cracks","JSRS2_Titan","JSRS2_TRG20","JSRS2_Vector","JSRS2_Veh_Titan","JSRS2_Zafir","JSRS2_Zubr45","Blastcore_VEP","cba_ai","cba_arrays","cba_diagnostic","cba_help",
	"cba_ui_helper","cba_versioning","JSRS2_Movement","JSRS2_Silencers","cba_main","cba_main_a3","JSRS2_2S9_Sorcher","JSRS2_AFV4_Gorgon","JSRS2_AH99_Blackfoot","JSRS2_AH9_Pawnee","JSRS2_AMV7_Marshal","JSRS2_BTRK_Kamysh","JSRS2_CH49_Mohawk","JSRS2_Distance",
	"JSRS2_FighterPlane3","JSRS2_FV720_Mora","JSRS2_Hunter","JSRS2_Ifrit","JSRS2_IFV6a_Cheetah","JSRS2_IFV6c_Panther","JSRS2_M2A1_Slammer","JSRS2_M4_Scorcher","JSRS2_M5_Sandstorm","JSRS2_MBT52_Kuma","JSRS2_Mi48_Kajman","JSRS2_MSE3_Marid","JSRS2_Offroad",
	"JSRS2_Po30_Orca","JSRS2_Strider","JSRS2_SUV","JSRS2_T100_Varsuk","JSRS2_Truck1","JSRS2_Truck2","JSRS2_UAV_1","JSRS2_UH80_GhostHawk","JSRS2_Van","JSRS2_WY55_Hellcat","JSRS2_ZSU39_Tigris","cba_xeh_a3"]
*/
	
_patchList = 
["life_server","CAData","A3_BaseConfig_F","A3_Dubbing_Radio_F","A3_Functions_F","A3_Functions_F_EPA","A3_Functions_F_EPC","A3_Data_F","A3_Data_F_ParticleEffects","A3_Editor_F","A3_Functions_F_Curator",
"A3_Language_F","A3_Language_F_Beta","A3_Language_F_Curator","A3_Language_F_EPA","A3_Language_F_EPB","A3_Language_F_EPC","A3_Language_F_Gamma","A3_LanguageMissions_F","A3_LanguageMissions_F_Beta",
"A3_LanguageMissions_F_Gamma","A3_Misc_F","A3_Misc_F_Helpers","A3_Modules_F","A3_Modules_F_DynO","A3_Modules_F_Effects","A3_Modules_F_Events","A3_Modules_F_GroupModifiers","A3_Modules_F_HC",
"A3_Modules_F_Intel","A3_Modules_F_LiveFeed","A3_Modules_F_Marta","A3_Modules_F_Misc","A3_Modules_F_Multiplayer","A3_Modules_F_ObjectModifiers","A3_Modules_F_Sites","A3_Modules_F_Skirmish",
"A3_Modules_F_StrategicMap","A3_Modules_F_Supports","A3_Modules_F_UAV","A3_Modules_F_Beta","A3_Modules_F_Beta_FiringDrills","A3_Modules_F_EPB","A3_Modules_F_EPB_Misc","A3_Music_F","A3_Music_F_EPA",
"A3_Music_F_EPB","A3_Music_F_EPC","A3_Roads_F","A3_Rocks_F","A3_Sounds_F","A3_Sounds_F_EPB","A3_Sounds_F_EPC","A3_Structures_F","A3_Structures_F_Bridges","A3_Structures_F_Civ","A3_Structures_F_Civ_Accessories",
"A3_Structures_F_Civ_Ancient","A3_Structures_F_Civ_BellTowers","A3_Structures_F_Civ_Calvaries","A3_Structures_F_Civ_Camping","A3_Structures_F_Civ_Chapels","A3_Structures_F_Civ_Constructions","A3_Structures_F_Civ_Dead",
"A3_Structures_F_Civ_Garbage","A3_Structures_F_Civ_InfoBoards","A3_Structures_F_Civ_Lamps","A3_Structures_F_Civ_Market","A3_Structures_F_Civ_Offices","A3_Structures_F_Civ_Pavements","A3_Structures_F_Civ_PlayGround",
"A3_Structures_F_Civ_SportsGrounds","A3_Structures_F_Civ_Statues","A3_Structures_F_Dominants","A3_Structures_F_Dominants_Amphitheater","A3_Structures_F_Dominants_Castle","A3_Structures_F_Dominants_Church",
"A3_Structures_F_Dominants_Hospital","A3_Structures_F_Dominants_Lighthouse","A3_Structures_F_Dominants_WIP","A3_Structures_F_Furniture","A3_Structures_F_Households","A3_Structures_F_Households_Addons",
"A3_Structures_F_Households_House_Big01","A3_Structures_F_Households_House_Big02","A3_Structures_F_Households_House_Shop01","A3_Structures_F_Households_House_Shop02","A3_Structures_F_Households_House_Small01",
"A3_Structures_F_Households_House_Small02","A3_Structures_F_Households_House_Small03","A3_Structures_F_Households_Slum","A3_Structures_F_Households_Stone_Big","A3_Structures_F_Households_Stone_Shed",
"A3_Structures_F_Households_Stone_Small","A3_Structures_F_Households_WIP","A3_Structures_F_Ind","A3_Structures_F_Ind_AirPort","A3_Structures_F_Ind_Cargo","A3_Structures_F_Ind_CarService",
"A3_Structures_F_Ind_ConcreteMixingPlant","A3_Structures_F_Ind_Crane","A3_Structures_F_Ind_DieselPowerPlant","A3_Structures_F_Ind_Factory","A3_Structures_F_Ind_FuelStation","A3_Structures_F_Ind_FuelStation_Small",
"A3_Structures_F_Ind_Pipes","A3_Structures_F_Ind_PowerLines","A3_Structures_F_Ind_ReservoirTank","A3_Structures_F_Ind_Shed","A3_Structures_F_Ind_SolarPowerPlant","A3_Structures_F_Ind_Tank",
"A3_Structures_F_Ind_Transmitter_Tower","A3_Structures_F_Ind_WavePowerPlant","A3_Structures_F_Ind_Windmill","A3_Structures_F_Ind_WindPowerPlant","A3_Structures_F_Items","A3_Structures_F_Items_Documents",
"A3_Structures_F_Items_Electronics","A3_Structures_F_Items_Cans","A3_Structures_F_Items_Gadgets","A3_Structures_F_Items_Luggage","A3_Structures_F_Items_Stationery","A3_Structures_F_Items_Tools",
"A3_Structures_F_Items_Valuables","A3_Structures_F_Items_Vessels","A3_Structures_F_Mil","A3_Structures_F_Mil_BagBunker","A3_Structures_F_Mil_BagFence","A3_Structures_F_Mil_Barracks","A3_Structures_F_Mil_Bunker",
"A3_Structures_F_Mil_Cargo","A3_Structures_F_Mil_Flags","A3_Structures_F_Mil_Fortification","A3_Structures_F_Mil_Helipads","A3_Structures_F_Mil_Offices","A3_Structures_F_Mil_Radar","A3_Structures_F_Mil_Shelters",
"A3_Structures_F_Mil_TentHangar","A3_Structures_F_Naval","A3_Structures_F_Naval_Buoys","A3_Structures_F_Naval_Piers","A3_Structures_F_Naval_RowBoats","A3_Structures_F_Research","A3_Structures_F_System",
"A3_Structures_F_Training","A3_Structures_F_Training_InvisibleTarget","A3_Structures_F_Walls","A3_Structures_F_EPA_Civ_Camping","A3_Structures_F_EPA_Civ_Constructions","A3_Structures_F_EPA_Items_Electronics",
"A3_Structures_F_EPA_Items_Food","A3_Structures_F_EPA_Items_Medical","A3_Structures_F_EPA_Items_Tools","A3_Structures_F_EPA_Items_Vessels","A3_Structures_F_EPA_Walls","A3_Structures_F_EPB_Civ_Accessories",
"A3_Structures_F_EPB_Civ_Camping","A3_Structures_F_EPB_Civ_Dead","A3_Structures_F_EPB_Civ_Garbage","A3_Structures_F_EPB_Civ_Graffiti","A3_Structures_F_EPB_Civ_PlayGround","A3_Structures_F_EPB_Furniture",
"A3_Structures_F_EPB_Items_Documents","A3_Structures_F_EPB_Items_Luggage","A3_Structures_F_EPB_Items_Military","A3_Structures_F_EPB_Items_Vessels","A3_Structures_F_EPB_Naval_Fishing","A3_Structures_F_EPC_Civ_Accessories",
"A3_Structures_F_EPC_Civ_Camping","A3_Structures_F_EPC_Civ_Garbage","A3_Structures_F_EPC_Civ_InfoBoards","A3_Structures_F_EPC_Civ_Kiosks","A3_Structures_F_EPC_Civ_PlayGround",
"A3_Structures_F_EPC_Civ_Tourism","A3_Structures_F_EPC_Dominants_GhostHotel","A3_Structures_F_EPC_Dominants_Stadium","A3_Structures_F_EPC_Furniture","A3_Structures_F_EPC_Items_Documents",
"A3_Structures_F_EPC_Items_Electronics","A3_Structures_F_EPC_Walls","A3_UIFonts_F","A3_Animals_F","A3_Animals_F_AnimConfig","A3_Animals_F_Fishes","A3_Animals_F_Kestrel","A3_Animals_F_Rabbit",
"A3_Animals_F_Seagull","A3_Animals_F_Snakes","A3_Animals_F_Turtle","A3_Animals_F_Chicken","A3_Animals_F_Dog","A3_Animals_F_Goat","A3_Animals_F_Sheep","A3_Anims_F","A3_Anims_F_Config_Sdr",
"A3_Anims_F_EPA","A3_Anims_F_EPC","A3_Map_Data","A3_Map_Stratis","A3_Map_Stratis_Scenes","A3_Plants_F_Bush","A3_Signs_F","A3_Signs_F_AD","A3_UI_F","A3_UI_F_Curator","A3_Weapons_F",
"A3_Weapons_F_NATO","A3_Weapons_F_CSAT","A3_Weapons_F_AAF","A3_weapons_F_FIA","A3_Weapons_F_ItemHolders","A3_Weapons_F_Headgear","A3_Weapons_F_Uniforms","A3_Weapons_F_Vests","A3_Weapons_F_Ammoboxes",
"A3_Weapons_F_DummyWeapons","A3_Weapons_F_Explosives","A3_Weapons_F_Items","A3_Weapons_F_Launchers_NLAW","A3_Weapons_F_Launchers_LAW","A3_Weapons_F_EBR","A3_Weapons_F_LongRangeRifles_GM6",
"A3_Weapons_F_LongRangeRifles_M320","A3_Weapons_F_Machineguns_M200","A3_Weapons_F_Pistols_P07","A3_Weapons_F_Pistols_Rook40","A3_Weapons_F_Rifles_Khaybar","A3_Weapons_F_Rifles_MX","A3_Weapons_F_Rifles_SDAR",
"A3_Weapons_F_Rifles_TRG20","A3_Weapons_F_beta","A3_Weapons_F_Beta_Ammoboxes","A3_Weapons_F_Launchers_Titan","A3_Weapons_F_beta_EBR","A3_Weapons_F_Machineguns_Zafir","A3_Weapons_F_Pistols_ACPC2","A3_Weapons_F_beta_Rifles_Khaybar",
"A3_Weapons_F_Rifles_Mk20","A3_Weapons_F_beta_Rifles_MX","A3_Weapons_F_beta_Rifles_TRG20","A3_Weapons_F_Rifles_Vector","a3_weapons_f_rifles_SMG_02","A3_Weapons_F_EPA_LongRangeRifles_DMR_01","A3_Weapons_F_EPA_EBR",
"A3_Weapons_F_EPA_LongRangeRifles_GM6","A3_Weapons_F_Pistols_Pistol_heavy_01","A3_Weapons_F_Pistols_Pistol_heavy_02","A3_Weapons_F_EPA_Rifles_MX","A3_Weapons_F_EPB_LongRangeRifles_GM3","A3_Weapons_F_EPB_LongRangeRifles_M320",
"A3_Weapons_F_EPB_Rifles_MX_Black","A3_Weapons_F_gamma","A3_Weapons_F_Gamma_Ammoboxes","A3_Weapons_F_Pistols_PDW2000","A3_Characters_F","A3_Characters_F_BLUFOR","A3_Characters_F_Civil","A3_Characters_F_Heads",
"A3_Characters_F_OPFOR","A3_Characters_F_Proxies","A3_Characters_F_Beta","A3_Characters_F_INDEP","A3_Characters_F_EPB_Heads","A3_Characters_F_Gamma","A3_Data_F_Curator","A3_Data_F_Curator_Eagle","A3_Data_F_Curator_Intel",
"A3_Data_F_Curator_Misc","A3_Data_F_Curator_Respawn","A3_UAV_F_Characters_F_Gamma","A3_UAV_F_Weapons_F_Gamma_Ammoboxes","A3_Weapons_F_gamma_Items","A3_Map_Altis","A3_Map_Altis_Scenes","A3_Missions_F","A3_Missions_F_Beta",
"A3_Missions_F_Gamma","A3_Modules_F_Curator","A3_Modules_F_Curator_Animals","A3_Modules_F_Curator_CAS","A3_Modules_F_Curator_Curator","A3_Modules_F_Curator_Effects","A3_Modules_F_Curator_Environment","A3_Modules_F_Curator_Flares",
"A3_Modules_F_Curator_Intel","A3_Modules_F_Curator_Lightning","A3_Modules_F_Curator_Mines","A3_Modules_F_Curator_Misc","A3_Modules_F_Curator_Multiplayer","A3_Modules_F_Curator_Objectives","A3_Modules_F_Curator_Ordnance",
"A3_Modules_F_Curator_Respawn","A3_Modules_F_Curator_Smokeshells","A3_Static_F","A3_Static_F_Mortar_01","A3_Static_F_Beta_Mortar_01","A3_Static_F_Gamma","A3_Static_F_Gamma_AA","A3_Static_F_Gamma_AT","A3_Static_F_Gamma_Mortar_01",
"A3_Weapons_F_Acc","A3_Weapons_F_Beta_Acc","A3_Weapons_F_EPA","A3_Weapons_F_EPA_Acc","A3_Weapons_F_EPA_Ammoboxes","A3_Weapons_F_EPB","A3_Weapons_F_EPB_Acc","A3_Weapons_F_EPB_Ammoboxes","A3_Weapons_F_EPC","A3_Weapons_F_gamma_Acc",
"A3_Air_F","A3_Air_F_Heli_Light_01","A3_Air_F_Heli_Light_02","A3_Air_F_Beta","A3_Air_F_Beta_Heli_Attack_01","A3_Air_F_Beta_Heli_Attack_02","A3_Air_F_Beta_Heli_Transport_01","A3_Air_F_Beta_Heli_Transport_02","A3_Air_F_Beta_Parachute_01",
"A3_Air_F_Beta_Parachute_02","A3_Air_F_EPB_Heli_Light_03","A3_Air_F_EPC_Plane_CAS_01","A3_Air_F_EPC_Plane_CAS_02","A3_Air_F_Gamma_Plane_Fighter_03","A3_Armor_F","A3_armor_f_beta","A3_Armor_F_Panther","A3_armor_f_beta_APC_Tracked_02",
"A3_Armor_F_EPB_APC_tracked_03","A3_Armor_F_EPB_MBT_03","A3_Armor_F_Slammer","A3_Armor_F_T100K","A3_Boat_F","A3_Boat_F_Boat_Armed_01","A3_Boat_F_Boat_Transport_01","A3_Boat_F_Beta_Boat_Armed_01","A3_Boat_F_Beta_Boat_Transport_01",
"A3_Boat_F_SDV_01","A3_Boat_F_EPC_Submarine_01_F","A3_Boat_F_Civilian_Boat","A3_Boat_F_Trawler","A3_Boat_F_Gamma_Boat_Transport_01","A3_Characters_F_Common","A3_Characters_F_EPA","A3_Characters_F_EPB","A3_Characters_F_EPC",
"A3_Data_F_Curator_Characters","A3_Data_F_Curator_Virtual","A3_Air_F_Gamma_UAV_01","A3_Air_F_Gamma_UAV_02","A3_Missions_F_EPA","A3_Missions_F_EPB","A3_Missions_F_EPC","A3_Modules_F_Curator_Chemlights","A3_Soft_F","A3_Soft_F_MRAP_01",
"A3_Soft_F_MRAP_02","A3_Soft_F_Offroad_01","A3_Soft_F_Quadbike","A3_Soft_F_MRAP_03","A3_Soft_F_Beta_Quadbike","A3_Soft_F_HEMTT","A3_Soft_F_TruckHeavy","A3_Soft_F_EPC_Truck_03","A3_Soft_F_Car","A3_Soft_F_Gamma_Offroad",
"A3_Soft_F_Gamma_Quadbike","A3_Soft_F_SUV","A3_Soft_F_Gamma_HEMTT","A3_Soft_F_Gamma_TruckHeavy","A3_Soft_F_Truck","A3_Structures_F_Wrecks","A3_Structures_F_EPA_Mil_Scrapyard","A3_Air_F_EPC_Plane_Fighter_03",
"A3_Armor_F_AMV","A3_Armor_F_Marid","A3_Armor_F_EPC_MBT_01","A3_Armor_F_APC_Wheeled_03","A3_CargoPoses_F","A3_Soft_F_Crusher_UGV","A3_Missions_F_Curator","A3_Data_F_Kart_ParticleEffects","A3_Language_F_Kart",
"A3_LanguageMissions_F_Kart","A3_Structures_F_Kart_Civ_SportsGrounds","A3_Structures_F_Kart_Mil_Flags","A3_Anims_F_Kart","A3_Structures_F_Kart_Signs_Companies","A3_UI_F_Kart",
"A3_Weapons_F_Kart_Pistols_Pistol_Signal_F","A3_Data_F_Kart","A3_Missions_F_Kart","A3_Modules_F_Kart","A3_Modules_F_Kart_TimeTrials","A3_Weapons_F_Kart","A3_Characters_F_Kart","A3_Soft_F_Kart_Kart_01",
"A3_Structures_F_Civ_Graffiti","A3_Structures_F_Civ_Kiosks","A3_Structures_F_Civ_Tourism","A3_Structures_F_Items_Medical","A3_Structures_F_Items_Military","A3_Structures_F_Naval_Fishing","A3_Structures_F_Signs_Companies","A3_Structures_F_Mil_Scrapyard",
"A3_Soft_F_Bootcamp_Truck","A3_Soft_F_Bootcamp_Quadbike","A3_Soft_F_Bootcamp_Offroad_01","A3_Weapons_F_Bootcamp","A3_Modules_F_Bootcamp_Misc","A3_Modules_F_Bootcamp","A3_Characters_F_Bootcamp_Common","A3_Weapons_F_Bootcamp_Ammoboxes","A3_UI_F_Bootcamp",
"A3_Characters_F_Bootcamp","A3_Weapons_F_Bootcamp_LongRangeRifles_M320","A3_Weapons_F_Bootcamp_LongRangeRifles_GM6","A3_Structures_F_Bootcamp_Items_Food","A3_Structures_F_Bootcamp_Items_Electronics","A3_Structures_F_Bootcamp_Civ_SportsGrounds",
"A3_Structures_F_Bootcamp_Civ_Camping","A3_Language_F_Bootcamp","A3_Functions_F_Bootcamp","A3_Structures_F_Bootcamp_VR_Helpers","A3_Structures_F_Bootcamp_VR_CoverObjects","A3_Structures_F_Bootcamp_VR_Blocks","A3_Structures_F_Bootcamp_Training",
"A3_Structures_F_Bootcamp_System","A3_Structures_F_Bootcamp_Items_Sport","A3_Structures_F_Bootcamp_Ind_Cargo","A3_Sounds_F_Bootcamp","A3_Data_F_Bootcamp","A3_Map_VR_Scenes","A3_Missions_F_Bootcamp","A3_Music_F_Bootcamp","Map_VR","A3Data",
"A3_Data_F_Hook","A3_Air_F_RTD","A3_Functions_F_Heli","A3_Language_F_Heli","A3_Modules_F_Heli","A3_Modules_F_Heli_SpawnAi",
"A3_Music_F_Heli","A3_Structures_F_Heli_Civ_Accessories","A3_Structures_F_Heli_Civ_Constructions","A3_Structures_F_Heli_Civ_Garbage",
"A3_Structures_F_Heli_Civ_Market","A3_Structures_F_Heli_Furniture","A3_Structures_F_Heli_Ind_AirPort","A3_Structures_F_Heli_Ind_Cargo",
"A3_Structures_F_Heli_Ind_Machines","A3_Structures_F_Heli_Items_Airport","A3_Structures_F_Heli_Items_Luggage","A3_Structures_F_Heli_Items_Sport",
"A3_Structures_F_Heli_Items_Tools","A3_Structures_F_Heli_VR_Helpers","A3_Structures_F_Heli_Items_Electronics","A3_Structures_F_Heli_Items_Food",
"A3_Anims_F_Heli","A3_Supplies_F_Heli","A3_Supplies_F_Heli_Bladders","A3_Supplies_F_Heli_CargoNets","A3_Supplies_F_Heli_Fuel","A3_Supplies_F_Heli_Slingload",
"A3_Air_F_RTD","A3_Boat_F_Heli_Boat_Armed_01","A3_Boat_F_Heli_SDV_01","A3_Data_F_Heli","A3_Missions_F_Heli","A3_Soft_F_Heli_Car",
"A3_Soft_F_Heli_MRAP_01","A3_Air_F_Heli_Heli_Transport_04","A3_Soft_F_Heli_MRAP_02","A3_Soft_F_Heli_MRAP_03","A3_Soft_F_Heli_Quadbike","A3_Soft_F_Heli_SUV",
"A3_Soft_F_Heli_Truck","A3_UI_F_Heli","A3_Air_F_Heli","A3_Air_F_Heli_Heli_Attack_01","A3_Air_F_Heli_Heli_Attack_02","A3_Air_F_Heli_Heli_Light_01","A3_Air_F_Heli_Heli_Light_02","A3_Air_F_Heli_Heli_Light_03",
"A3_Air_F_Heli_Heli_Transport_01","A3_Air_F_Heli_Heli_Transport_02","A3_Air_F_Heli_Heli_Transport_03","A3_Air_F_Heli_Heli_Transport_04",
"A3_CargoPoses_F_Heli","A3_Soft_F_Heli_Crusher_UGV"




/*

			//HK
			"arifle_mas_hk416", "arifle_mas_hk416_t", "arifle_mas_hk416_h", "arifle_mas_hk416_a", "arifle_mas_hk416_e", "arifle_mas_hk416_sd", "arifle_mas_hk416_gl", "arifle_mas_hk416_gl_t", "arifle_mas_hk416_gl_h", "arifle_mas_hk416_gl_a", "arifle_mas_hk416_gl_e", "arifle_mas_hk416_gl_sd", "arifle_mas_hk416_m203", "arifle_mas_hk416_m203_t", "arifle_mas_hk416_m203_h", "arifle_mas_hk416_m203_a", "arifle_mas_hk416_m203_e", "arifle_mas_hk416_m203_sd", "arifle_mas_hk416_v", "arifle_mas_hk416_v_t", "arifle_mas_hk416_v_h", "arifle_mas_hk416_v_a", "arifle_mas_hk416_v_e", "arifle_mas_hk416_v_sd", "arifle_mas_hk416_gl_v", "arifle_mas_hk416_gl_v_t", "arifle_mas_hk416_gl_v_h", "arifle_mas_hk416_gl_v_a", "arifle_mas_hk416_gl_v_e", "arifle_mas_hk416_gl_v_sd", "arifle_mas_hk416_m203_v", "arifle_mas_hk416_m203_v_t", "arifle_mas_hk416_m203_v_h", "arifle_mas_hk416_m203_v_a", "arifle_mas_hk416_m203_v_e", "arifle_mas_hk416_m203_v_sd", "arifle_mas_hk416_d", "arifle_mas_hk416_d_t", "arifle_mas_hk416_d_h", "arifle_mas_hk416_d_a", "arifle_mas_hk416_d_e", "arifle_mas_hk416_d_sd", "arifle_mas_hk416_gl_d", "arifle_mas_hk416_gl_d_t", "arifle_mas_hk416_gl_d_h", "arifle_mas_hk416_gl_d_a", "arifle_mas_hk416_gl_d_e", "arifle_mas_hk416_gl_d_sd", "arifle_mas_hk416_m203_d", "arifle_mas_hk416_m203_d_t", "arifle_mas_hk416_m203_d_h", "arifle_mas_hk416_m203_d_a", "arifle_mas_hk416_m203_d_e", "arifle_mas_hk416_m203_d_sd", "arifle_mas_hk416c", "arifle_mas_hk416c_h", "arifle_mas_hk416c_e", "arifle_mas_hk416c_sd", "arifle_mas_hk416_m203c",  "arifle_mas_hk416_m203c_h",  "arifle_mas_hk416_m203c_e", "arifle_mas_hk416_m203c_sd", "arifle_mas_hk416c_v",  "arifle_mas_hk416c_v_h",  "arifle_mas_hk416c_v_e", "arifle_mas_hk416c_v_sd", "arifle_mas_hk416_m203c_v",  "arifle_mas_hk416_m203c_v_h",  "arifle_mas_hk416_m203c_v_e", "arifle_mas_hk416_m203c_v_sd", "arifle_mas_hk416c_d",  "arifle_mas_hk416c_d_h",  "arifle_mas_hk416c_d_e", "arifle_mas_hk416c_d_sd", "arifle_mas_hk416_m203c_d",  "arifle_mas_hk416_m203c_d_h", "arifle_mas_hk416_m203c_d_e", "arifle_mas_hk416_m203c_d_sd",
			//HK
			"arifle_mas_hk417c", "arifle_mas_hk417c_h", "arifle_mas_hk417c_e", "arifle_mas_hk417c_sd", "arifle_mas_hk417_m203c",  "arifle_mas_hk417_m203c_h",  "arifle_mas_hk417_m203c_e", "arifle_mas_hk417_m203c_sd", "arifle_mas_hk417c_v",  "arifle_mas_hk417c_v_h",  "arifle_mas_hk417c_v_e", "arifle_mas_hk417c_v_sd", "arifle_mas_hk417_m203c_v",  "arifle_mas_hk417_m203c_v_h",  "arifle_mas_hk417_m203c_v_e", "arifle_mas_hk417_m203c_v_sd", "arifle_mas_hk417c_d",  "arifle_mas_hk417c_d_h",  "arifle_mas_hk417c_d_e", "arifle_mas_hk417c_d_sd", "arifle_mas_hk417_m203c_d",  "arifle_mas_hk417_m203c_d_h", "arifle_mas_hk417_m203c_d_e", "arifle_mas_hk417_m203c_d_sd",
			//M4
			"arifle_mas_m4", "arifle_mas_m4_t", "arifle_mas_m4_ti", "arifle_mas_m4_h", "arifle_mas_m4_a", "arifle_mas_m4_e", "arifle_mas_m4_sd", "arifle_mas_m4_gl", "arifle_mas_m4_gl_t", "arifle_mas_m4_gl_ti", "arifle_mas_m4_gl_h", "arifle_mas_m4_gl_a", "arifle_mas_m4_gl_e", "arifle_mas_m4_gl_sd", "arifle_mas_m4_m203", "arifle_mas_m4_m203_t", "arifle_mas_m4_m203_ti", "arifle_mas_m4_m203_h", "arifle_mas_m4_m203_a", "arifle_mas_m4_m203_e", "arifle_mas_m4_m203_sd", "arifle_mas_m4_v", "arifle_mas_m4_v_t", "arifle_mas_m4_v_ti", "arifle_mas_m4_v_h", "arifle_mas_m4_v_a", "arifle_mas_m4_v_e", "arifle_mas_m4_v_sd", "arifle_mas_m4_gl_v", "arifle_mas_m4_gl_v_t", "arifle_mas_m4_gl_v_ti", "arifle_mas_m4_gl_v_h", "arifle_mas_m4_gl_v_a", "arifle_mas_m4_gl_v_e", "arifle_mas_m4_gl_v_sd", "arifle_mas_m4_m203_v", "arifle_mas_m4_m203_v_t", "arifle_mas_m4_m203_v_ti", "arifle_mas_m4_m203_v_h", "arifle_mas_m4_m203_v_a", "arifle_mas_m4_m203_v_e", "arifle_mas_m4_m203_v_sd", "arifle_mas_m4_d", "arifle_mas_m4_d_t", "arifle_mas_m4_d_ti", "arifle_mas_m4_d_h", "arifle_mas_m4_d_a", "arifle_mas_m4_d_e", "arifle_mas_m4_d_sd", "arifle_mas_m4_gl_d", "arifle_mas_m4_gl_d_t", "arifle_mas_m4_gl_d_ti", "arifle_mas_m4_gl_d_h", "arifle_mas_m4_gl_d_a", "arifle_mas_m4_gl_d_e", "arifle_mas_m4_gl_d_sd", "arifle_mas_m4_m203_d", "arifle_mas_m4_m203_d_t", "arifle_mas_m4_m203_d_ti", "arifle_mas_m4_m203_d_h", "arifle_mas_m4_m203_d_a", "arifle_mas_m4_m203_d_e", "arifle_mas_m4_m203_d_sd", "arifle_mas_m4c", "arifle_mas_m4c_h", "arifle_mas_m4c_e", "arifle_mas_m4c_sd", "arifle_mas_m4_m203c",  "arifle_mas_m4_m203c_h",  "arifle_mas_m4_m203c_e", "arifle_mas_m4_m203c_sd", "arifle_mas_m4c_v",  "arifle_mas_m4c_v_h",  "arifle_mas_m4c_v_e", "arifle_mas_m4c_v_sd", "arifle_mas_m4_m203c_v",  "arifle_mas_m4_m203c_v_h",  "arifle_mas_m4_m203c_v_e", "arifle_mas_m4_m203c_v_sd", "arifle_mas_m4c_d",  "arifle_mas_m4c_d_h",  "arifle_mas_m4c_d_e", "arifle_mas_m4c_d_sd", "arifle_mas_m4_m203c_d",  "arifle_mas_m4_m203c_d_h", "arifle_mas_m4_m203c_d_e", "arifle_mas_m4_m203c_d_sd", "arifle_mas_m16", "arifle_mas_m16_t", "arifle_mas_m16_a", "arifle_mas_m16_e", "arifle_mas_m16_sd", "arifle_mas_m16_gl", "arifle_mas_m16_gl_t", "arifle_mas_m16_gl_a", "arifle_mas_m16_gl_e", "arifle_mas_m16_gl_sd",
			//G36C
			"arifle_mas_g36c", "arifle_mas_g36c_h", "arifle_mas_g36c_a", "arifle_mas_g36c_e", "arifle_mas_g36c_sd",
			//SCAR
			"arifle_mas_mk16", "arifle_mas_mk16_h", "arifle_mas_mk16_e", "arifle_mas_mk16_sd", "arifle_mas_mk16_gl", "arifle_mas_mk16_gl_h", "arifle_mas_mk16_gl_e", "arifle_mas_mk16_gl_sd", "arifle_mas_mk16_l", "arifle_mas_mk16_l_h", "arifle_mas_mk16_l_e", "arifle_mas_mk16_l_sd", "arifle_mas_mk16_l_gl", "arifle_mas_mk16_l_gl_h", "arifle_mas_mk16_l_gl_e", "arifle_mas_mk16_l_gl_sd",
			//SCARH
			"arifle_mas_mk17", "arifle_mas_mk17_h", "arifle_mas_mk17_e", "arifle_mas_mk17_sd", "arifle_mas_mk17_gl", "arifle_mas_mk17_gl_h", "arifle_mas_mk17_gl_e", "arifle_mas_mk17_gl_sd",
			//G3
			"arifle_mas_g3", "arifle_mas_g3_h", "arifle_mas_g3_a", "arifle_mas_g3_m203", "arifle_mas_g3_m203_h", "arifle_mas_g3_m203_a", "arifle_mas_g3s", "arifle_mas_g3s_h", "arifle_mas_g3s_a", "arifle_mas_g3s_m203", "arifle_mas_g3s_m203_h", "arifle_mas_g3s_m203_a",
			//FN FAL
			"arifle_mas_fal", "arifle_mas_fal_h", "arifle_mas_fal_a", "arifle_mas_fal_m203", "arifle_mas_fal_m203_h", "arifle_mas_fal_m203_a",
			//m14
			"arifle_mas_m14", "arifle_mas_m14_h", "arifle_mas_m14_a", "arifle_mas_m14_l",
			//HK417
			"srifle_mas_hk417", "srifle_mas_hk417_h", "srifle_mas_hk417_sd", "srifle_mas_hk417_v", "srifle_mas_hk417_v_h", "srifle_mas_hk417_v_sd", "srifle_mas_hk417_d", "srifle_mas_hk417_d_h", "srifle_mas_hk417_d_sd", "srifle_mas_sr25", "srifle_mas_sr25_h", "srifle_mas_sr25_sd", "srifle_mas_sr25_v", "srifle_mas_sr25_v_h", "srifle_mas_sr25_v_sd", "srifle_mas_sr25_d", "srifle_mas_sr25_d_h", "srifle_mas_sr25_d_sd", "srifle_mas_ebr", "srifle_mas_ebr_a", "srifle_mas_ebr_t", "srifle_mas_ebr_h", "srifle_mas_ebr_sd", "srifle_mas_mk17s", "srifle_mas_mk17s_h", "srifle_mas_mk17s_sd", "srifle_mas_m110", "srifle_mas_m110_h", "srifle_mas_m110_sd",
			//MP5
			"arifle_mas_mp5", "arifle_mas_mp5_a", "arifle_mas_mp5_e", "arifle_mas_mp5_sd", "arifle_mas_mp5_v", "arifle_mas_mp5_v_a", "arifle_mas_mp5_v_e", "arifle_mas_mp5_v_sd", "arifle_mas_mp5_d", "arifle_mas_mp5_d_a", "arifle_mas_mp5_d_e", "arifle_mas_mp5_d_sd", "arifle_mas_mp5sd", "arifle_mas_mp5sd_a", "arifle_mas_mp5sd_e", "arifle_mas_mp5sd_ds",
			//M249
			"LMG_mas_Mk200_F", "LMG_mas_Mk200_F_t", "LMG_mas_Mk200_F_h", "LMG_mas_Mk200_F_a", "LMG_mas_Mk200_F_sd", "LMG_mas_M249_F", "LMG_mas_M249_F_t", "LMG_mas_M249_F_h", "LMG_mas_M249_F_a", "LMG_mas_M249_F_sd", "LMG_mas_M249_F_v", "LMG_mas_M249_F_v_t", "LMG_mas_M249_F_v_h", "LMG_mas_M249_F_v_a", "LMG_mas_M249_F_v_sd", "LMG_mas_M249_F_d", "LMG_mas_M249_F_d_t", "LMG_mas_M249_F_d_h", "LMG_mas_M249_F_d_a", "LMG_mas_M249_F_d_sd", "LMG_mas_M249a_F", "LMG_mas_M249a_F_t", "LMG_mas_M249a_F_a",
			//AK74
			"arifle_mas_ak_74m", "arifle_mas_ak_74m_h", "arifle_mas_ak_74m_ti", "arifle_mas_ak_74m_a", "arifle_mas_ak_74m_sd", "arifle_mas_ak_74m_gl", "arifle_mas_ak_74m_gl_h", "arifle_mas_ak_74m_gl_ti", "arifle_mas_ak_74m_gl_a", "arifle_mas_ak_74m_gl_sd", "arifle_mas_ak_74m_c", "arifle_mas_ak_74m_c_h", "arifle_mas_ak_74m_c_ti", "arifle_mas_ak_74m_c_a", "arifle_mas_ak_74m_c_sd", "arifle_mas_ak_74m_gl_c", "arifle_mas_ak_74m_gl_c_h", "arifle_mas_ak_74m_gl_c_ti", "arifle_mas_ak_74m_gl_c_a", "arifle_mas_ak_74m_gl_c_sd", "arifle_mas_aks74", "arifle_mas_aks74_h", "arifle_mas_aks74_a", "arifle_mas_aks74_gl", "arifle_mas_aks74_gl_h", "arifle_mas_aks74_gl_a", "arifle_mas_ak74", "arifle_mas_ak74_h", "arifle_mas_ak74_a", "arifle_mas_ak74_l", "arifle_mas_ak74_gl", "arifle_mas_ak74_gl_h", "arifle_mas_ak74_gl_a", "arifle_mas_ak74_gl_l",
			//AK74m
			"arifle_mas_ak_74m_sf", "arifle_mas_ak_74m_sf_h", "arifle_mas_ak_74m_sf_a", "arifle_mas_ak_74m_sf_e", "arifle_mas_ak_74m_sf_sd", "arifle_mas_ak_74m_sf_gl", "arifle_mas_ak_74m_sf_gl_h", "arifle_mas_ak_74m_sf_gl_a", "arifle_mas_ak_74m_sf_gl_e", "arifle_mas_ak_74m_sf_gl_sd", "arifle_mas_ak_74m_sf_c", "arifle_mas_ak_74m_sf_c_h", "arifle_mas_ak_74m_sf_c_a", "arifle_mas_ak_74m_sf_c_e", "arifle_mas_ak_74m_sf_c_sd", "arifle_mas_ak_74m_sf_gl_c", "arifle_mas_ak_74m_sf_gl_c_h", "arifle_mas_ak_74m_sf_gl_c_a", "arifle_mas_ak_74m_sf_gl_c_e", "arifle_mas_ak_74m_sf_gl_c_sd", "arifle_mas_aks_74_sf", "arifle_mas_aks_74_sf_h", "arifle_mas_aks_74_sf_a", "arifle_mas_aks_74_sf_e", "arifle_mas_aks_74_sf_sd", "arifle_mas_aks_74_sf_gl", "arifle_mas_aks_74_sf_gl_h", "arifle_mas_aks_74_sf_gl_a", "arifle_mas_aks_74_sf_gl_e", "arifle_mas_aks_74_sf_gl_sd",
			//AKMS
			"arifle_mas_akms", "arifle_mas_akms_h", "arifle_mas_akms_a", "arifle_mas_akms_sd", "arifle_mas_akms_gl", "arifle_mas_akms_gl_h", "arifle_mas_akms_gl_a", "arifle_mas_akms_gl_sd", "arifle_mas_akms_c", "arifle_mas_akms_c_h", "arifle_mas_akms_c_a", "arifle_mas_akms_c_sd", "arifle_mas_akms_gl_c", "arifle_mas_akms_gl_c_h", "arifle_mas_akms_gl_c_a", "arifle_mas_akms_gl_c_sd", "arifle_mas_akm", "arifle_mas_akm_h", "arifle_mas_akm_a", "arifle_mas_akm_gl", "arifle_mas_akm_gl_h", "arifle_mas_akm_gl_a",
			//Zastava
			"arifle_mas_m70", "arifle_mas_m70_gl", "arifle_mas_m70ab", "arifle_mas_m70ab_gl",
			"srifle_mas_m91", "srifle_mas_m91_l",
			//SVD
			"srifle_mas_svd", "srifle_mas_svd_h", "srifle_mas_svd_sd", "srifle_mas_svd_l",
			//ASVAL
			"arifle_mas_asval", "arifle_mas_asval_h", "arifle_mas_asval_a", "arifle_mas_asval_ds",
			//AK74U
			"arifle_mas_aks74u", "arifle_mas_aks74u_h", "arifle_mas_aks74u_a", "arifle_mas_aks74u_sd", "arifle_mas_aks74u_c", "arifle_mas_aks74u_c_h", "arifle_mas_aks74u_c_a", "arifle_mas_aks74u_c_sd",
			//KLEINE
			"hgun_mas_uzi_F", "hgun_mas_uzi_F_sd","hgun_mas_sa61_F", "hgun_mas_sa61_F_sd",
			//MAGAZINES
			"mas_PG7V", "mas_PG7L", "mas_PG7VR", "mas_OG7", "mas_TBG7V", "mas_PG18", "mas_Metis", "mas_Metis_HE", "mas_LAW", "mas_M136", "mas_M136_HE", "mas_MAAWS", "mas_MAAWS_HE", "mas_SMAW", "mas_SMAW_HE", "mas_SMAW_NE", "mas_NLAW", "mas_NLAW_HE", "mas_TitanS", "mas_TitanS_HE", "mas_Stinger", "mas_Strela", "Sting_mas_AA_F", "RPG32_mas_AA_F", "30Rnd_mas_556x45_Stanag", "30Rnd_mas_556x45_T_Stanag", "200Rnd_mas_556x45_Stanag", "200Rnd_mas_556x45_T_Stanag", "100Rnd_mas_762x51_Stanag", "100Rnd_mas_762x51_T_Stanag", "100Rnd_mas_762x54_mag", "100Rnd_mas_762x54_T_mag", "100Rnd_mas_762x39_mag", "100Rnd_mas_762x39_T_mag", "30Rnd_mas_545x39_mag", "30Rnd_mas_545x39_T_mag", "100Rnd_mas_545x39_mag", "100Rnd_mas_545x39_T_mag", "20Rnd_mas_762x51_Stanag", "20Rnd_mas_762x51_T_Stanag", "5Rnd_mas_762x51_Stanag", "5Rnd_mas_762x51_T_Stanag", "10Rnd_mas_338_Stanag", "10Rnd_mas_338_T_Stanag", "30Rnd_mas_762x39_mag", "30Rnd_mas_762x39_T_mag", "10Rnd_mas_762x54_mag", "10Rnd_mas_762x54_T_mag", "5Rnd_mas_127x99_Stanag", "5Rnd_mas_127x99_dem_Stanag", "5Rnd_mas_127x99_T_Stanag", "5Rnd_mas_127x108_mag", "5Rnd_mas_127x108_dem_mag", "5Rnd_mas_127x108_T_mag", "30Rnd_mas_9x21_Stanag", "30Rnd_mas_9x21d_Stanag", "12Rnd_mas_45acp_Mag", "10Rnd_mas_45acp_Mag", "8Rnd_mas_45acp_Mag", "15Rnd_mas_9x21_Mag", "17Rnd_mas_9x21_Mag", "13Rnd_mas_9x21_Mag", "8Rnd_mas_9x18_mag", "7Rnd_mas_12Gauge_Slug", "7Rnd_mas_12Gauge_Pellets", "10Rnd_mas_12Gauge_Slug", "10Rnd_mas_12Gauge_Pellets", "64Rnd_mas_9x18_mag", "20Rnd_mas_765x17_Mag", "25Rnd_mas_9x19_Mag", "40Rnd_mas_46x30_Mag", "2Rnd_mas_Missile_AA_03_F", "4Rnd_mas_Missile_AGM_01_F", "2Rnd_mas_r_Missile_AA_03_F", "4Rnd_mas_r_Missile_AGM_01_F", "20Rnd_mas_Rocket_03_HE_F", "20Rnd_mas_Rocket_03_AP_F", "2Rnd_mas_Bomb_03_F", "2Rnd_mas_r_Bomb_03_F", "24Rnd_mas_PG_missiles", "12Rnd_mas_PG_HE_missiles","12Rnd_mas_PG_missiles",
			//OPTICS
			"acc_mas_pointer_IR", "muzzle_mas_snds_L", "muzzle_mas_snds_LM", "muzzle_mas_snds_C", "muzzle_mas_snds_MP5SD6", "muzzle_mas_snds_M", "muzzle_mas_snds_Mc", "muzzle_mas_snds_MP7", "muzzle_mas_snds_AK", "muzzle_mas_snds_SM", "muzzle_mas_snds_SMc", "muzzle_mas_snds_SH", "muzzle_mas_snds_SHc", "muzzle_mas_snds_SV", "muzzle_mas_snds_SVc", "muzzle_mas_snds_SVD", "muzzle_mas_snds_KSVK", "optic_mas_DMS", "optic_mas_DMS_c", "optic_mas_Holosight_blk", "optic_mas_Holosight_camo", "optic_mas_Arco_blk", "optic_mas_Arco_camo", "optic_mas_Hamr_camo", "optic_mas_Aco_camo", "optic_mas_ACO_grn_camo", "optic_mas_MRCO_camo", "optic_mas_zeiss", "optic_mas_zeiss_c", "optic_mas_zeiss_eo", "optic_mas_zeiss_eo_c", "optic_mas_acog", "optic_mas_acog_c", "optic_mas_acog_eo", "optic_mas_acog_eo_c", "optic_mas_acog_rd", "optic_mas_acog_rd_c", "optic_mas_handle", "optic_mas_aim", "optic_mas_aim_c", "optic_mas_PSO", "optic_mas_PSO_c", "optic_mas_PSO_eo", "optic_mas_PSO_eo_c", "optic_mas_PSO_nv", "optic_mas_PSO_nv_c", "optic_mas_PSO_nv_eo", "optic_mas_PSO_nv_eo_c", "optic_mas_PSO_day", "optic_mas_PSO_nv_day", "optic_mas_term", "optic_mas_MRD", "optic_mas_LRPS",
			//TRIXIE
			
			
				"Trixie_Sniper_Supply_Box",
				"Trixie_Ghillie_Supply_Box",

				"Trixie_Ghillie_Uniform_01",
				"Trixie_Ghillie_Uniform_02",
				"Trixie_Ghillie_Uniform_03",

				"Trixie_Rangefinder",
				"Trixie_Rangefinder_Tripod",
				"Trixie_SOFLAM",
				"Trixie_SOFLAM_Tripod",
				"Trixie_SOFLAM_Tripod_ANPVS4",

				"Trixie_M110",
				"Trixie_M110_NG",
				"Trixie_M110_NG_Black",
				"Trixie_M14DMR",
				"Trixie_M14DMR_NG",
				"Trixie_M14DMR_Clean",
				"Trixie_M14DMR_NG_Black",
				"Trixie_M14DMR_Clean_Black",
				"Trixie_M14DMR_Clean_Pink",
				"Trixie_M14DMR_NG_Black_Short",
				"Trixie_M14DMR_NG_Short",
				"Trixie_M14",
				"Trixie_M14_Green",
				"Trixie_M14_Black",
				"Trixie_M40A3",
				"Trixie_M40A3_NG",
				"Trixie_M40A3_Clean",
				"Trixie_CZ750",
				"Trixie_CZ750_Black",
				"Trixie_CZ750_Ghillie",
				"Trixie_AWM338",
				"Trixie_AWM338_Black",
				"Trixie_AWM338_Ghillie",
				"Trixie_M107",
				"Trixie_M107_Green",
				"Trixie_M107_Black",
				"Trixie_AS50",
				"Trixie_M24",
				"Trixie_M24_Clean",
				"Trixie_M24_Black",
				"Trixie_M24_Black_Clean",
				"Trixie_M24_Ghillie",
				"Trixie_MK12",
				"Trixie_Mk12_Camo",
				"Trixie_LM308MWS",

				"Trixie_LSMARK4",
				"Trixie_LSMARK4_Net",
				"Trixie_LSMARK4_Delta",
				"Trixie_LSMARK4_Delta_Camo",
				"Trixie_SB31250",
				"Trixie_SB31250_Net",
				"Trixie_ANPVS4",
				"Trixie_ANPVS4_Net",
				"Trixie_ANPVS10",
				"Trixie_ANPVS10_Green",
				"Trixie_ANPVS10_Net",
				"Trixie_ANPVS10_Green_Net",
				"Trixie_ANPASL",
				"Trixie_ANPASM",
				"Trixie_ANPASL_Net",
				"Trixie_ANPASM_Net",
				"Trixie_M68CCO",
				"Trixie_M68CCO_Net",

				"Trixie_Cyclone",
				"Trixie_Cyclone_Camo",
				"Trixie_Cyclone_Net",
				"Trixie_Ranger3",
				"Trixie_Ranger3_Camo",
				"Trixie_Ranger3_Net",


				"Trixie_5x762_Mag",
				"Trixie_5x338_Mag",
				"Trixie_10x762_Mag",
				"Trixie_20x762_Mag",
				"Trixie_10x127_Mag",
				"Trixie_10x127_HE_Mag",
				"Trixie_10x127_HEIAP_Mag"
			
			
			
			//handguns
			
			
			
			







"asdg_jointrails","hlc_core","hlc_wp_ak","rh_m4","rh_m4_cfg","hlc_wp_AR15","hlc_wp_m14","hlcweapons_core"*/
];

uiNamespace setVariable["RscDisplayRemoteMissions",displayNull]; //For Spy-Glass..

_endM = compile PreProcessFileLineNumbers "\a3\functions_f\Misc\fn_endMission.sqf";

_binConfigPatches = configFile >> "CfgPatches";
for "_i" from 0 to count (_binConfigPatches)-1 do {
	_patchEntry = _binConfigPatches select _i;
	if(isClass _patchEntry) then {
		if(!((configName _patchEntry) in _patchList)) exitWith {
			[[profileName,getPlayerUID player,(configName _patchEntry)],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
			[[profileName,format["Unknown Addon Patch: %1",(configName _patchEntry)]],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
			sleep 0.5;
			["SpyGlass",false,false] call _endM;
		};
	};
};

//Check for copy-pasters of Dev-Con styled execution.
//Because I am nice, add these to the following below to allow CBA; "CBA_CREDITS_CONT_C","CBA_CREDITS_M_P
private["_children","_allowedChildren"];
_children = [configFile >> "RscDisplayMPInterrupt" >> "controls",0] call BIS_fnc_returnChildren;
_allowedChildren = [
"Title","MissionTitle","DifficultyTitle","PlayersName","ButtonCancel","ButtonSAVE","ButtonSkip","ButtonRespawn","ButtonOptions",
"ButtonVideo","ButtonAudio","ButtonControls","ButtonGame","ButtonTutorialHints","ButtonAbort","DebugConsole","Feedback","MessageBox"
];

{
	if(!((configName _x) in _allowedChildren)) exitWith {
		[[profileName,getPlayerUID player,"Modified_MPInterrupt"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
		[[profileName,"Devcon like executor detected"],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
		sleep 0.5;
		["SpyGlass",false,false] call _endM;
	};
} foreach _children;

/*
	Display Validator
	Loops through and makes sure none of the displays were modified..
	
	TODO: Run check every x minutes and validate all displays.
*/
{
	_onLoad = getText(configFile >> (_x select 0) >> "onLoad");
	_onUnload = getText(configFile >> (_x select 0) >> "onUnload");
	if(_onLoad != (_x select 1) OR _onUnload != (_x select 2)) exitWith {
		[[profileName,getPlayerUID player,format["Modified_Method_%1",_x select 0]],"SPY_fnc_cookieJar",false,false] call life_fnc_MP;
		[[profileName,format["Modified Display Method %1 (Memory Edit)",_x select 0]],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
		sleep 0.5;
		["SpyGlass",false,false] call _endM;
	};
}
foreach [
	["RscDisplayMainMap","[""onLoad"",_this,""RscDiary"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDiary"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayGetReady","[""onLoad"",_this,""RscDiary"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDiary"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayInventory","[""onLoad"",_this,""RscDisplayInventory"",'IGUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayInventory"",'IGUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayLoadMission","[""onLoad"",_this,""RscDisplayLoading"",'Loading'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayLoading"",'Loading'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayInterrupt","[""onLoad"",_this,""RscDisplayInterrupt"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayInterrupt"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayOptionsVideo","[""onLoad"",_this,""RscDisplayOptionsVideo"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayOptionsVideo"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayOptions","[""onLoad"",_this,""RscDisplayOptions"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayOptions"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayAVTerminal","[""onLoad"",_this,""RscDisplayAVTerminal"",'IGUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayAVTerminal"",'IGUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayConfigureAction","[""onLoad"",_this,""RscDisplayConfigureAction"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayConfigureAction"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayConfigureControllers","[""onLoad"",_this,""RscDisplayConfigureControllers"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayConfigureControllers"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayControlSchemes","[""onLoad"",_this,""RscDisplayControlSchemes"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayControlSchemes"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayCustomizeController","[""onLoad"",_this,""RscDisplayCustomizeController"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayCustomizeController"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayDebriefing","[""onLoad"",_this,""RscDisplayDebriefing"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayDebriefing"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayDiary","[""onLoad"",_this,""RscDiary"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDiary"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayGameOptions","[""onLoad"",_this,""RscDisplayGameOptions"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayGameOptions"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayJoystickSchemes","[""onLoad"",_this,""RscDisplayJoystickSchemes"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayJoystickSchemes"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayLoading","[""onLoad"",_this,""RscDisplayLoading"",'Loading'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayLoading"",'Loading'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayMicSensitivityOptions","[""onLoad"",_this,""RscDisplayMicSensitivityOptions"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayMicSensitivityOptions"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayOptionsAudio","[""onLoad"",_this,""RscDisplayOptionsAudio"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayOptionsAudio"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayOptionsLayout","[""onLoad"",_this,""RscDisplayOptionsLayout"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayOptionsLayout"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayStart","[""onLoad"",_this,""RscDisplayLoading"",'Loading'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayLoading"",'Loading'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayVehicleMsgBox","[""onLoad"",_this,""RscDisplayVehicleMsgBox"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayVehicleMsgBox"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""]
];

[] execVM "SpyGlass\fn_cmdMenuCheck.sqf";
[] execVM "SpyGlass\fn_variableCheck.sqf";
[] execVM "SpyGlass\fn_menuCheck.sqf";

//Create a no-recoil hack check.
[] spawn {
	waitUntil {(!isNil "life_fnc_moveIn") && !isNull (findDisplay 46)};
	_endM = compile PreProcessFileLineNumbers "\a3\functions_f\Misc\fn_endMission.sqf";
	while {true} do {
		if((unitRecoilCoefficient player) < 1) then {
			[[profileName,getPlayerUID player,"No_recoil_hack"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
			[[profileName,"No recoil hack"],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
			sleep 0.5;
			["SpyGlass",false,false] call _endM;
		};
		sleep 1.5;
	};
};
