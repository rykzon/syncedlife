/*
	File: fn_deathScreen.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles stuff being displayed on the death screen while
	it is currently active.
*/
private["_medicsOnline","_medicsNear","_medicsDistance","_man"];
disableSerialization;

"colorCorrections" ppEffectEnable true;
"colorCorrections" ppEffectAdjust [0,0,0,[0,0,0,0],[0,0,0,0],[0,0,0,0]];
"colorCorrections" ppEffectCommit 1; 


_medicsOnline = ((findDisplay 7300) displayCtrl 7304);
_medicsNear = ((findDisplay 7300) displayCtrl 7305);
_medicsDistance = ((findDisplay 7300) displayCtrl 7306);
_pos = getpos player;
_healer = objNull;
_healers = [];
_dist = 501;
_men = nearestObjects [_pos, ["Man"], 500];
_veh = nearestObjects [_pos, ["LandVehicle", "Air", "Ship"], 500];

	{
		{_man = _x;if (isPlayer _man && ({_man isKindOf _x} count ["Man"]) > 0) then {_men = _men + [_man];};} foreach crew _x;
	} foreach _veh;
	
	if (count _men > 0) then
	{
		{if (Alive _x && isPlayer _x && side _x == independent) then {_healers = _healers + [_x];};} foreach _men;
		if (count _healers > 0) then
		{
			{
				if (_x distance _pos < _dist) then {_healer = _x;_dist = _x distance _pos;};
			} foreach _healers;
		};
	};

waitUntil {
	_nearby = if(([independent,getPosATL player,120] call life_fnc_nearUnits)) then {"Ja"} else {"Nein"};
	_medicsOnline ctrlSetText format["Sanitäter online: %1",[independent] call life_fnc_playerCount];
	_medicsNear ctrlSetText format["Sanitäter in der Nähe: %1",_nearby];
	if (!(alive _healer)) then { _medicsDistance ctrlSetText format["Aktuell kein Medic in der Umgebung."];} else {
	_medicsDistance ctrlSetText format["%1 kann dir helfen! Entfernung %2 m!", name _healer,round(_healer distance _pos)]; };
	sleep 1;
	(isNull (findDisplay 7300))
};