/*
	File: fn_robReceive.sqf
	Author: Bryan "Tonic" Boardwine
*/
private["_cash"];
_cash = [_this,0,0,[0]] call BIS_fnc_param;
if(_cash == 0) exitWith {titleText[localize "STR_Civ_RobFail","PLAIN"]};

life_cash = life_cash + _cash;
["Mafia_Prof",1] call life_fnc_addMafia;
titleText[format[localize "STR_Civ_Eingetrieben",[_cash] call life_fnc_numberText],"PLAIN"];