#include <macro.h>
/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the civilian.
*/
private["_spawnPos"];
civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_5 = nearestObjects[getMarkerPos  "civ_spawn_5", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];

waitUntil {!(isNull (findDisplay 46))};


0 setFog [0, 0.01, 0];


if(life_is_arrested) then
{
	life_is_arrested = false;
	[player,true] spawn life_fnc_jail;
}
	else
{
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
};



player addRating 9999999;

switch (__GETC__(life_donator)) do {


	case 1: {life_paycheck = life_paycheck + 1500;};

	
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