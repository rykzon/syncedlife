#include <macro.h>
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
disableSerialization;

if(!(createDialog "Life_key_management")) exitWith {hint "Fehlgeschlagen"};
//[] call life_fnc_p_updateInv;
if(isNull _unit OR !isPlayer _unit) exitwith {};


