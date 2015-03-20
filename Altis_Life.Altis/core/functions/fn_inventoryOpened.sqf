/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	For the mean time it blocks the player from opening another persons backpack
*/
private["_container","_unit","_exit"];
if(count _this == 1) exitWith {false};
_unit = _this select 0;
_container = _this select 1;
_Sourrounding = nearestObjects [player,["B_supplyCrate_F","Box_IND_Grenades_F","Box_IND_AmmoVeh_F","Box_IND_WpsSpecial_F"], 4];



	
_house = nearestBuilding (getPosATL player);
if((typeOf _container) in ["Box_IND_Grenades_F","B_supplyCrate_F","Box_IND_AmmoVeh_F","Box_IND_WpsSpecial_F"] && {(_house getVariable ["locked",false])}) then
{
	
	[[format ["5|%1 Kisten Abuse? Besitzer: %2",player getVariable["realname",name player],_house getVariable "house_owner"]],"Arma3Log",false,false] call life_fnc_MP;
};

_exit = {
	[] spawn {
		for "_i" from 1 to 6 do {
			closeDialog 0;
			sleep 0.2;
		};
		if(!isNull (findDisplay 602)) then {
			closeDialog 0;
			closeDialog 0;
		};
	};
};

_isPack = getNumber(configFile >> "CfgVehicles" >> (typeOf _container) >> "isBackpack");
if(_isPack == 1 && playerSide != west) then {
	hint localize "STR_MISC_Backpack";
	call _exit;
};

if(count(_Sourrounding) > 0)exitWith
{
	_house = nearestBuilding (getPosATL player);
	if(!(_house in life_vehicles) && {(_house getVariable ["locked",false])}) then
	{
		hint localize "STR_House_ContainerDeny";
		call _exit;
	};
};

if((typeOf _container) in ["B_supplyCrate_F","Box_IND_Grenades_F"]) exitWith
{
	_house = nearestBuilding (getPosATL player);
	if(!(_house in life_vehicles) && {(_house getVariable ["locked",false])}) then
	{
		hint localize "STR_House_ContainerDeny";
		call _exit;
	};
};

if(playerSide != west) then
{
	if(_container isKindOf "LandVehicle" OR _container isKindOf "Ship" OR _container isKindOf "Air") exitWith
	{
		if(!(_container in life_vehicles) && {(locked _container) == 2}) exitWith
		{
			hint localize "STR_MISC_VehInventory";
			call _exit;
		};
	};
};
diag_log ["::::INVENTAR GEÖFFNET::::"];
//Allow alive players who've been knocked out to be looted, just not the dead ones
/*if(_container isKindOf "Man" && !alive _container) exitWith {
	hint localize "STR_NOTF_NoLootingPerson";
	[] spawn {
		waitUntil {!isNull (findDisplay 602)};
		closeDialog 0;
	};
};*/