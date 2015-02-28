private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
disableSerialization;
if(!(createDialog "life_money_give")) exitWith {hint "Fehlgeschlagen"};
if(isNull _unit OR !isPlayer _unit) exitwith {};

//ctrlSetText[2651,format[localize "STR_Cop_Ticket",_unit getVariable["realname",name _unit]]];
