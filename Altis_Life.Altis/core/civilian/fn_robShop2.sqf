/*
	Sending robbery-request to server 
*/
private["_shop","_robber"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; 
_action = [_this,2] call BIS_fnc_param;

//if(playersNumber west < 1) exitWith { hint "The cashregistry is empty, try again later!"};//This line has been commented out, but can be set so that you can limit the ability to robb based on cops online.
if(isNull _shop OR isNull _robber) exitWith {};
if(side _robber != civilian) exitWith { hint "You can not rob this station!" };// We do not want anyone but civilianz to rob the stations.
if (vehicle player != _robber) exitWith { hint "Get out of your vehicle!" };
if (currentWeapon _robber == "") exitWith { hint "HaHa, you do not threaten me! Get out of here you hobo!" };//is he trying to rob without a weapon? Lets taunt him a bit!
if(_robber distance _shop > 3) exitWith { hint "You need to be within 3m of the cashier to rob him!" };
[[_shop,_robber,_action],"TON_fnc_robShop",false,false] spawn life_fnc_MP;//now we send the info to the server to be processed further there. 