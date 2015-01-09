/*
	File: fn_robPerson.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Getting tired of adding descriptions...
*/
private["_robber","_name"];
_robber = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _robber) exitWith {}; //No one to return it to?
/*
_masked = [
"H_Shemag_olive",
"kio_skl_msk_grn",
"kio_skl_msk_red",
"kio_skl_msk",
"H_RacingHelmet_1_black_F",
"H_RacingHelmet_1_blue_F",
"H_RacingHelmet_1_red_F",
"H_RacingHelmet_1_orange_F",
"H_RacingHelmet_1_green_F",
"H_RacingHelmet_1_white_F",
"H_RacingHelmet_1_yellow_F",
"U_C_Driver_2",
"U_C_Driver_1",
"U_C_Driver_3",
"U_C_Driver_4"
];*/


if(life_cash > 0) then {
	if(headgear _robber in life_masked) then
	{
		_name = "Maskierte Person";
	}
	else
	{
		_name = _robber getVariable["realname",name _robber];
	};

	[[life_cash],"life_fnc_robReceive",_robber,false] spawn life_fnc_MP;
	//WantedEntfernt[[getPlayerUID _robber,_robber getVariable["realname",name _robber],"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	[[1,"STR_NOTF_Robbed",true,[_name,profileName,[life_cash] call life_fnc_numberText]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	life_cash = 0;
}
	else
{
	[[2,"STR_NOTF_RobFail",true,[profileName]],"life_fnc_broadcast",_robber,false] spawn life_fnc_MP;
};