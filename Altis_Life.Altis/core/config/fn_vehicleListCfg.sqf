#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];


_profName = ["karma"] call life_fnc_profType;
 
if( _profName != "" ) then 
{
_data = missionNamespace getVariable (_profName);
_karma = _data select 1;
};


/*
_profName = ["Karma_Prof"] call life_fnc_profType;
_data = missionNamespace getVariable (_profName);
_karma = _data select 1;


*/



_data1 = missionNamespace getVariable ("Mafia_Prof");
_mafia = _data1 select 0;


switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",80000],
			["C_Kart_01_Fuel_F",80000],
			["C_Kart_01_Red_F",80000],
			["C_Kart_01_Vrana_F",80000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["I_Truck_02_medical_F",25000],
			["O_Truck_03_medical_F",45000],
			["C_SUV_01_F",10000],
			["B_Truck_01_medical_F",60000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			
			["O_Heli_Light_02_unarmed_F",20000],
			["O_Heli_Transport_04_medevac_F",30000]
		];
	};
	
	
	case "civ_car":
	{
		_return = 
		[
		
			
			
			["RDS_Lada_Civ_01",8000],
			["RDS_Lada_Civ_02",8000],
			["RDS_Lada_Civ_04",8000],
			["RDS_S1203_Civ_01",20000],
			["RDS_S1203_Civ_02",20000],
			["RDS_Golf4_Civ_01",33000],
			["C_Van_01_transport_F",10000],
			["cl3_civic_vti_black",25000],
			["cl3_civic_vti_cardinal",25000],
			["cl3_civic_vti_dark_green",25000],
			["cl3_civic_vti_grey",25000],
			["cl3_civic_vti_light_blue",25000],
			["cl3_golf_mk2_babyblue",22000],
			["cl3_golf_mk2_babypink",22000],
			["cl3_golf_mk2_black",22000],
			["cl3_golf_mk2_red",22000],
			["cl3_golf_mk2_green",22000],
			["cl3_golf_mk2_silver",22000]
		
			
			
		];
	};
	
	case "civ_car1":
	{
		_return = 
		[
			//["dbo_CIV_new_bike",1000],
			["RDS_Octavia_Civ_01",40000],
			//["C_Hatchback_01_F",80000],
			["C_Offroad_01_F",35000],
			["C_SUV_01_F",100000],
			["cl3_insignia_black",45000],
			["cl3_insignia_cardinal",45000],
			["cl3_insignia_grey",45000],
			["cl3_insignia_marina_blue",45000],
			["cl3_polo_gti_black",55000],
			["cl3_polo_gti_blue",55000],
			["cl3_polo_gti_burgundy",55000],
			["cl3_polo_gti_navy_blue",55000],
			["cl3_polo_gti_orange",55000],
			["cl3_polo_gti_white",55000],
			["cl3_e60_m5_black",120000],
			["cl3_e60_m5_burgundy",120000],
			["cl3_e60_m5_navy_blue",120000],
			["cl3_e60_m5_gold",120000],
			["cl3_e60_m5_silver",120000],
			["cl3_z4_2008_black",90000],
			["cl3_z4_2008_cardinal",90000],
			["cl3_z4_2008_navy_blue",90000],
			["cl3_z4_2008_orange",90000],
			["cl3_z4_2008_silver",90000],
			["DAR_M3CivGrey",100000],
			["DAR_M3CivWhite",100000],
			["DAR_TahoeCivRed",40000],
			["DAR_TahoeCivBlue",40000],
			["DAR_TahoeCivSilver",40000],
			["SAL_AudiCivRed",110000],
			["SAL_AudiCivSilver",110000],
			["SAL_77TRANSAMCiv",300000]
			
		];
	};
	
		case "civ_car2":
	{
		_return = 
		[
			["cl3_458_red",700000],
			["cl3_458_yellow",700000],
			["cl3_458_navy_blue",700000],
			
			["cl3_e63_amg_burgundy",400000],
			["cl3_e63_amg_silver",400000],
			["cl3_dbs_volante_orange",600000],
			["cl3_dbs_volante_red",600000],
			["cl3_dbs_volante_silver",600000],
			["cl3_dbs_volante_burgundy",600000],
			["cl3_dbs_volante_black",600000],
			
			["Jonzie_Viper",670000]
		];
	};
	
	case "civ_truck":
	{
			
			_return pushBack 
			["RDS_Ikarus_Civ_01",60000];
			if(call life_fnc_getKarma >= -1500) then
			{
			_return pushBack
			["I_Truck_02_transport_F",90000];
			_return pushBack
			["I_Truck_02_covered_F",120000];
			_return pushBack
			["O_Truck_03_transport_F",300000];
			_return pushBack
			["O_Truck_03_covered_F",500000];
			_return pushBack
			["B_Truck_01_transport_F",750000];
			
			
			};
		
	};
	
	

	
	case "cop_car":
	{
	
	//	_return pushBack
	//	["dbo_CIV_new_bike",1000];
		//_return pushBack
	//	["C_Offroad_01_F",5000];
		_return pushBack
		["DAR_CVPIAux",5000];
		if(__GETC__(life_coplevel) >= 4) then
		{
		_return pushBack
		["DAR_TahoePoliceDet",20000];
		_return pushBack
		["DAR_ChargerPoliceState",20000];
	//	_return pushBack
		//["C_SUV_01_F",20000];
		};
		
		if(__GETC__(life_coplevel) >= 6) then
		{
		_return pushBack 
		["DAR_ImpalaPoliceDet",25000];
			
		};
		
		if(license_cop_swat) then
		{
		
		_return pushBack
		["cl3_e60_m5_black",25000];
		
		};
	};
	
	case "civ_air":
	{
		_return =
		[
		
			["B_Heli_Light_01_F",500000],
			["O_Heli_Light_02_unarmed_F",1000000],
			["O_Heli_Transport_04_covered_F",1000000]
	
			
		];
	};
	
		case "civ_air1":
	{
		_return =
		[
		
			["ivory_yak42d_1",2000000],
			["GNT_C185",332500],
			["GNT_C185F",350000],
			["bwi_a3_t6a",650000],
			["bwi_a3_t6a_1",650000],
			["bwi_a3_t6a_2",650000],
			["bwi_a3_t6a_3",650000],
			["bwi_a3_t6a_4",650000],
			["bwi_a3_t6a_6",650000],
			["bwi_a3_t6a_7",650000],
			["bwi_a3_t6a_8",650000],
			["bwi_a3_t6a_9",650000]
			
			
		];
	};
	
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) >= 1) then
		{
			_return pushBack
			["B_Heli_Light_01_F",20000];
		
		};
		if(__GETC__(life_coplevel) >= 2) then
		{
			_return pushBack
			["O_Heli_Transport_04_bench_F",40000];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",40000];
			
		};
	};
	
	case "cop_airhq":
	{
		if(__GETC__(life_coplevel) >= 1) then
		{
			_return pushBack
			["B_Heli_Light_01_F",20000];
		
		};
		if(__GETC__(life_coplevel) >= 2) then
		{
			_return pushBack
			["O_Heli_Transport_04_bench_F",40000];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",40000];
			
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",25000],
			
			
			["C_Boat_Civil_01_F",35000]
		];
	};
	
	case "negKarma_car":
	{		
			//TODO TRUCKS
			
			if(call life_fnc_getKarma <= -3000) then
			{
			_return pushBack
			["B_Heli_Transport_03_unarmed_F",1100000];
			
			_return pushBack
			["B_G_Offroad_01_armed_F",500000];
			};
			
			if(call life_fnc_getKarma <= -1500) then
			{
			_return pushBack
			["B_G_Offroad_01_F",55000];
			
			_return pushBack
			["DAR_MK27T",900000];
			_return pushBack
			["DAR_MK27",700000];
			};
			if(call life_fnc_getKarma <= -500) then
			{
				_return pushBack
				["LandRover_ACR",40000];
			};
			
			
	};
	
	case "posKarma_car":
	{	
			
			if(call life_fnc_getKarma >= 500) then
			{
			
			_return pushBack
			["LandRover_TK_CIV_EP1",40000];
			
			};
			if(call life_fnc_getKarma >= 1500) then
			{
			_return pushBack
			["O_Truck_03_device_F",1200000];
			};
			if(call life_fnc_getKarma >= 3000) then
			{
			_return pushBack
			["I_Heli_Transport_02_F",900000];
			};
			if(call life_fnc_getKarma >=6000) then
			{
			_return pushBack
			["B_Truck_01_box_F",1100000];
			};
	};
	case "mafia_car":
	{	
		if(__GETC__(life_mafialevel) >= 1) then
		{
			_return pushBack
			["cl3_458_black",100000];
			_return pushBack
			["CUP_Volha_Black",30000];
			_return pushBack
			["DAR_4x4",80000];
			_return pushBack
			["DAR_MK27T",150000];
			_return pushBack
			["C_Offroad_01_F",15000];
			_return pushBack
			["C_SUV_01_F",25000];
			_return pushBack
			["DAR_TahoeCivBlack",30000];
			_return pushBack
			["SAL_AudiCivBlack",40000];
			_return pushBack
			["cl3_e63_amg_black",40000];
			
		};
	
	};
	
		case "mafia_air":
	{
		if(__GETC__(life_mafialevel) >= 1) then
		{
			_return pushBack
			["B_Heli_Light_01_F",150000];
			
			
			
		};
	
	};
	
			case "donator_car":
	{
		if(__GETC__(life_donator) >= 1) then
		{
			
			_return pushBack
			["cl3_r8_spyder_2tone1",500000];
			_return pushBack
			["cl3_r8_spyder_2tone2",500000];
			_return pushBack
			["cl3_r8_spyder_2tone3",500000];
			_return pushBack
			["cl3_r8_spyder_2tone4",500000];
			_return pushBack
			["cl3_r8_spyder_2tone5",500000];
			_return pushBack
			["cl3_r8_spyder_flame",500000];
			_return pushBack
			["cl3_r8_spyder_flame1",500000];
			_return pushBack
			["cl3_r8_spyder_flame2",500000];
			_return pushBack
			["cl3_458_2tone1",500000];
			_return pushBack
			["cl3_458_2tone2",500000];
			_return pushBack
			["cl3_458_2tone3",500000];
			_return pushBack
			["cl3_458_2tone4",500000];
			_return pushBack
			["cl3_458_2tone5",500000];
			_return pushBack
			["cl3_458_flame",500000];
			_return pushBack
			["cl3_458_flame1",500000];
			_return pushBack
			["cl3_458_flame2",500000];
			_return pushBack
			["cl3_e60_m5_lime",100000];
			_return pushBack
			["cl3_e63_amg_orange",350000];
			_return pushBack
			["cl3_e60_m5_camo",100000];
			_return pushBack
			["cl3_dbs_volante_camo_urban",500000];
			_return pushBack
			["cl3_taurus_camo",40000];
			_return pushBack
			["cl3_458_babypink",500000];
		};
	
	};
	
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
