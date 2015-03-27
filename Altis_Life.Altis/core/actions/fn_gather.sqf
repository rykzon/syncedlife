/*
	File: fn_gather.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for gathering.
*/
if(isNil "life_action_gathering") then {life_action_gathering = false;};
private["_gather","_itemWeight","_diff","_itemName","_val","_resourceZones","_zone"];
_resourceZones = ["apple_1","apple_2","apple_3","apple_4","peaches_1","peaches_2","peaches_3","peaches_4","heroin_1","cocaine_1","weed_1","hopfen_1","malz_1","pilze_1"];
_zone = "";

if(life_action_gathering) exitWith {}; //Action is in use, exit to prevent spamming.

if (animationState player == "AmovPercMstpSnonWnonDnon_Ease" || player getVariable["surrender",FALSE]) exitWith {}; //yolo
life_action_gathering = true;
//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 30) exitWith {_zone = _x;};
} foreach _resourceZones;

if(_zone == "") exitWith {
	life_action_inUse = false;
};
_karma = 1; //0=neg, 1=pos
//Get the resource that will be gathered from the zone name...
switch(true) do {
	case (_zone in ["apple_1","apple_2","apple_3","apple_4"]): {_karma=1;_gather = "apple"; _val = 3;};
	case (_zone in ["peaches_1","peaches_2","peaches_3","peaches_4"]): {_karma=1;_gather = "peach"; _val = 3;};
	case (_zone in ["heroin_1"]): {_karma=0;_gather = "heroinu"; _val = 1;};
	case (_zone in ["cocaine_1"]): {_karma=0;_gather = "cocaine"; _val = 1;};
	case (_zone in ["weed_1"]): {_karma=0;_gather = "cannabis"; _val = 1;};
	case (_zone in ["hopfen_1"]): {_karma=1;_gather = "hopfen"; _val = 2;};
	case (_zone in ["malz_1"]): {_karma=1;_gather = "malz"; _val = 2;};
	case (_zone in ["pilze_1"]): {_karma=0;_gather = "pilze"; _val = 1;};
	default {""};
};
//gather check??
if(vehicle player != player) exitWith {};

_diff = [_gather,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_inUse = true;


life_action_inUse = true;
 
_time = 0;
_profName = [_gather] call life_fnc_profType;
 
if( _profName != "" ) then 
{
_data = missionNamespace getVariable (_profName);
_time = ( 3 - (0.25 * (_data select 0)));
};
 
for "_i" from 0 to 2 do
{
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
sleep _time;
};
 
if(([true,_gather,_diff] call life_fnc_handleInv)) then
{
_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
titleText[format[localize "STR_NOTF_Gather_Success",_itemName,_diff],"PLAIN"];
if( _profName != "" ) then 
{

[_profName,5] call life_fnc_addExp;
["Karma_Prof",2,_karma] call life_fnc_addKarma;

};
};
 
life_action_gathering = false;