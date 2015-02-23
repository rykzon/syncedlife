/*
	File: fn_federalUpdate.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Uhhh, adds to it?
*/

while {true} do
{
	private["_funds"];
	sleep (30 * 60);
	_funds = fed_bank getVariable["safe",0];
	fed_bank setVariable["safe",round(_funds+((count playableUnits)/2)),true];
};


