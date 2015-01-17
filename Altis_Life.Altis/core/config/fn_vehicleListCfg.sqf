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
			["C_Kart_01_Blu_F",150000],
			["C_Kart_01_Fuel_F",150000],
			["C_Kart_01_Red_F",150000],
			["C_Kart_01_Vrana_F",150000]
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
			
			["O_Heli_Light_02_unarmed_F",20000]
		];
	};
	
	
	case "civ_car":
	{
		_return = 
		[
		
			
			//["dbo_CIV_ol_bike",500],
			["RDS_Lada_Civ_01",10000],
			["RDS_Lada_Civ_02",10000],
			["RDS_Lada_Civ_04",10000],
			["RDS_S1203_Civ_01",27000],
			["RDS_S1203_Civ_02",27000],
			["RDS_Golf4_Civ_01",45000],
			["C_Van_01_transport_F",110000]
			
			
		];
	};
	
	case "civ_car1":
	{
		_return = 
		[
			//["dbo_CIV_new_bike",1000],
			["RDS_Octavia_Civ_01",45000],
			//["C_Hatchback_01_F",80000],
			//["C_Offroad_01_F",60000],
			["C_SUV_01_F",100000],
			["DAR_M3CivGrey",150000],
			["DAR_M3CivWhite",150000],
			["DAR_TahoeCivRed",80000],
			["DAR_TahoeCivBlue",80000],
			["DAR_TahoeCivSilver",80000],
			["SAL_AudiCivRed",150000],
			["SAL_AudiCivSilver",150000],
			["SAL_77TRANSAMCiv",350000],
			["Jonzie_Viper",1000000]
		];
	};
	
	case "civ_truck":
	{
			
			_return pushBack 
			["RDS_Ikarus_Civ_01",80000];
			if(call life_fnc_getKarma >= -1500) then
			{
			_return pushBack
			["I_Truck_02_transport_F",240000];
			_return pushBack
			["I_Truck_02_covered_F",320000];
			_return pushBack
			["O_Truck_03_transport_F",500000];
			_return pushBack
			["O_Truck_03_covered_F",650000];
			_return pushBack
			["B_Truck_01_transport_F",800000];
			
			
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
		["DAR_ChargerPoliceState",20000];
	//	_return pushBack
		//["C_SUV_01_F",20000];
		};
		
		if(__GETC__(life_coplevel) >= 6) then
		{
		_return pushBack 
		["DAR_ChargerPoliceStateSlick",25000];
			//_return pushBack
			//["B_MRAP_01_F",30000];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
		
			["B_Heli_Light_01_F",650000],
			["O_Heli_Light_02_unarmed_F",1250000],
			["O_Heli_Transport_04_covered_F",1000000]
	
			
		];
	};
	
		case "civ_air1":
	{
		_return =
		[
		
			
			["GNT_C185",700000],
			["bwi_a3_t6a",1500000],
			["bwi_a3_t6a_1",1500000],
			["bwi_a3_t6a_2",1500000],
			["bwi_a3_t6a_3",1500000],
			["bwi_a3_t6a_4",1500000],
			["bwi_a3_t6a_6",1500000],
			["bwi_a3_t6a_7",1500000],
			["bwi_a3_t6a_8",1500000],
			["bwi_a3_t6a_9",1500000]
			
			
		];
	};
	
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) >= 1) then
		{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		
		};
		
		if(__GETC__(life_coplevel) > 7) then
		{
			//_return pushBack
			//["B_Heli_Transport_01_F",200000];
		};
	};
	
	case "cop_airhq":
	{
		if(__GETC__(life_coplevel) >= 1) then
		{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		
		};
		
		if(__GETC__(life_coplevel) > 7) then
		{
			//_return pushBack
			//["B_Heli_Transport_01_F",200000];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",25000],
			
			//["GNT_C185F",450000],
			["C_Boat_Civil_01_F",22000]
		];
	};
	
	case "negKarma_car":
	{		
			//TODO TRUCKS
			
			if(call life_fnc_getKarma <= -10000) then
			{
			_return pushBack
			["B_Heli_Transport_03_unarmed_F",900000];
			
			//_return pushBack
			//["B_G_Offroad_01_armed_F",500000];
			};
			
			if(call life_fnc_getKarma <= -1500) then
			{
		//	_return pushBack
			//["B_G_Offroad_01_F",55000];
			
			_return pushBack
			["DAR_MK27T",900000];
			_return pushBack
			["DAR_MK27",700000];
			};
			if(call life_fnc_getKarma <= -500) then
			{
				_return pushBack
				["LandRover_ACR",43000];
			};
			//_return pushBack
			//["DAR_4x4",350000];
			
	};
	
	case "posKarma_car":
	{	
			
			if(call life_fnc_getKarma >= 500) then
			{
			
			_return pushBack
			["LandRover_TK_CIV_EP1",43000];
			
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
			["B_Truck_01_box_F",900000];
			};
	};
	case "mafia_car":
	{	
		if(__GETC__(life_mafialevel) >= 1) then
		{
			
			//_return pushBack
			//["CUP_Volha_Black",30000];
			_return pushBack
			["DAR_4x4",80000];
			_return pushBack
			["DAR_MK27T",150000];
		//	_return pushBack
		//	["C_Offroad_01_F",15000];
			_return pushBack
			["C_SUV_01_F",25000];
			_return pushBack
			["DAR_TahoeCivBlack",30000];
			_return pushBack
			["SAL_AudiCivBlack",40000];
			
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
