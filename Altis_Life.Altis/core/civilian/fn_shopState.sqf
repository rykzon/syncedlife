/*
	Changes state of stations.
*/
private["_shop","_robber","_action","_state"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; 
_action = [_this,2] call BIS_fnc_param;
_state = [_this,3,-1,[0]] call BIS_fnc_param;
if(isNull _shop) exitWith {};


if(_shop == casino_1) then
{
switch (_state) do
{
	case -1: //start of robbery, we make him stand with hands up and remove the action to rob station.
	{
		_shop removeAction _action;
		_shop switchMove "AmovPercMstpSsurWnonDnon";
	};
	case 0: //we add the action to rob and we make him lower his hands.
	{
	_action = _shop addAction["Kasino Raub",life_fnc_robShop2];
	_shop switchMove "";
	};
};


}
else
{
switch (_state) do
{
	case -1: //start of robbery, we make him stand with hands up and remove the action to rob station.
	{
		_shop removeAction _action;
		_shop switchMove "AmovPercMstpSsurWnonDnon";
	};
	case 0: //we add the action to rob and we make him lower his hands.
	{
	_action = _shop addAction["Tankstellen Raub",life_fnc_robShop2];
	_shop switchMove "";
	};
};
};