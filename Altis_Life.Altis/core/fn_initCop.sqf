#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};


0 setFog [0, 0.01, 0];


	if((__GETC__(life_coplevel) < 1) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};



player setVariable["rank",(__GETC__(life_coplevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.



switch (__GETC__(life_coplevel)) do {


	case 1: { life_paycheck = 1000; };
	case 2: { life_paycheck = 1500; };
	case 3: { life_paycheck = 2000; };
	case 4: { life_paycheck = 2500; };
	case 5: { life_paycheck = 3000; };
	case 6: { life_paycheck = 3500; };
	case 7: { life_paycheck = 4000; };
	case 8: { life_paycheck = 5000; };
	default { life_paycheck = 1500; };
	
	
};



[] spawn    //basic cop
{
 while {true} do
 {
  waitUntil {uniform player == "U_Rangemaster"};
  player setObjectTextureGlobal [0,"textures\U_Rangemaster_APD_Officer.paa"];
  waitUntil {uniform player != "U_Rangemaster"};
 };
};

[] spawn     //Sadsdsa
{
 while {true} do
 {
  waitUntil {uniform player == "U_BG_Guerilla2_3"};
  player setObjectTextureGlobal [0,"textures\U_BG_Guerilla2_3_APD_Sergeant.paa"];
  waitUntil {uniform player !=  "U_BG_Guerilla2_3"};
 };
};

[] spawn     //asds
{
 while {true} do
 {
  waitUntil {uniform player == "U_B_CombatUniform_mcam"};
  player setObjectTextureGlobal [0,"textures\U_B_CombatUniform_wdl_APD_Detective.paa"];
  waitUntil {uniform player !=  "U_B_CombatUniform_mcam"};
 };
};

