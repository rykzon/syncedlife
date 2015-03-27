/*
	File: fn_pickaxeUse.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for pickaxe in mining.
*/

closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName","_val"];


if(life_action_gathering) exitWith{};
if (animationState player == "AmovPercMstpSnonWnonDnon_Ease" || player getVariable["surrender",FALSE]) exitWith {}; //yolo

switch (true) do
{
	case (player distance (getMarkerPos "lead_1") < 30): {_mine = "copperore"; _val = 2;};
	case (player distance (getMarkerPos "iron_1") < 30): {_mine = "ironore"; _val = 2;};
	case (player distance (getMarkerPos "salt_1") < 120) : {_mine = "salt"; _val = 4;};
	case (player distance (getMarkerPos "sand_1") < 75) : {_mine = "sand"; _val = 5;};
	case (player distance (getMarkerPos "diamond_1") < 50): {_mine = "diamond"; _val = 1;};
	case (player distance (getMarkerPos "oil_1") < 40) : {_mine = "oilu"; _val = 1;};
	case (player distance (getMarkerPos "oil_2") < 40) : {_mine = "oilu"; _val = 1;};
	case (player distance (getMarkerPos "rock_1") < 50): {_mine = "rock"; _val = 2;};
	case (player distance (getMarkerPos "coal_1") < 50): {_mine = "coalu"; _val = 2;};
	
	default {_mine = "";};
};
//Mine check
if(_mine == "") exitWith {hint localize "STR_ISTR_Pick_NotNear"};
if(vehicle player != player) exitWith {hint localize "STR_ISTR_Pick_MineVeh";};

_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};


_karma = 1;//pickaxe hat nur pos karma

_time = 0;
_profName = [_mine] call life_fnc_profType;
if( _profName != "" ) then 
{
_data = missionNamespace getVariable (_profName);
_time = ( 3 - (0.25 * (_data select 0)));
};
life_action_gathering = true;
for "_i" from 0 to 2 do
{
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
sleep _time;
};
 
 
if(([true,_mine,_diff] call life_fnc_handleInv)) then
{
_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
titleText[format[localize "STR_ISTR_Pick_Success",_itemName,_diff],"PLAIN"];
if( _profName != "" ) then 
{
//[[format ["4|%1 Rohstoff aufgehoben: %2,3%x",player getVariable["realname",name player],_mine,_diff]],"Arma3Log",false,false] call life_fnc_MP;
[_profName,5] call life_fnc_addExp;
["Karma_Prof",2,_karma] call life_fnc_addKarma;
};
};
 
life_action_gathering = false;