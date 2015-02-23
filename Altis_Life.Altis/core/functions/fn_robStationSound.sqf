/*
	File: fn_UnLockCarSound.sqf
*/
private["_source"];
_source = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _source) exitWith {};



_z=0;



while{true} do 
{
_z=_z + 1;
_source say3D "SireneTanke";
sleep 3;

if(_z==100) exitWith {};

};

