/* 		
			file: fn_robShops.sqf
			Author: MrKraken
			Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
			Description:
			Executes the rob shob action!
			Idea developed by PEpwnzya v2.0
			
*/ 
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
//_kassa = 1000; //The amount the shop has to rob, you could make this a parameter of the call (https://community.bistudio.com/wiki/addAction). Give it a try and post below ;)
_action = [_this,2] call BIS_fnc_param;//Action name

if !(alive _robber) exitWith {};

_rip = true;
_kassa = 3000 + round(random 12000); //setting the money in the registry, anywhere from 3000 to 15000. 
[[_shop,_robber,_action,-1],"TON_fnc_shopState",false,false] spawn life_fnc_MP; //sending information to the server so the animations and removeaction can be performed for all players if the checks clear. 

_chance = random(100); //calling a random number between 0-100. 
if(_chance >= 75) then { hint "The cashier hit the silent alarm, police has been alerted!"; [[0,format["ALARM! - Gasstation: %1 is being robbed!", _shop]],"life_fnc_broadcast",west,false] spawn life_fnc_MP; }; //We set a 15% chance that the silent alarm is being triggered, wich sends a 911-message to the police. 

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Überfall im Gange, bleib in der Nähe! (10m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;


_Pos = position player; // by ehno: get player pos
				_marker = createMarker ["Marker200", _Pos]; //by ehno: Place a Maker on the map
				"Marker200" setMarkerColor "ColorRed";
				"Marker200" setMarkerText "!Achtung! Überfall !Achtung!";
				"Marker200" setMarkerType "mil_warning";


if(_rip) then
{
	while{true} do
	{	
		[[_shop],"life_fnc_robStationSound",nil,true] spawn life_fnc_MP; 
		sleep  0.85;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["Überfall im Gange, bleib in der Nähe! (10m) (1%1)...",round(_cP * 100),"%"];
		if(_cP >= 1) exitWith {};
		if(_robber distance _shop > 10) exitWith {};
		if!(alive _robber) exitWith {};
		
	}; // the loop continues til the progressbar is full, distance is exceeded or robber dies. 
	deleteMarker "Marker200"; // by ehno delete maker
	if!(alive _robber) exitWith { _rip = false; };
	if(_robber distance _shop > 10) exitWith { hint "Du musst im Umkreis von 10m bleiben! - Die Kasse ist jetzt verschlossen!."; 5 cutText ["","PLAIN"]; _rip = false; };
	5 cutText ["","PLAIN"];
	titleText[format["Du hast $%1 gestohlen, mach dich vom Acker!",[_kassa] call life_fnc_numberText],"PLAIN"];
	life_cash = life_cash + _kassa; //I am using a moneylaundry system on my server, but if you do not change this to life_cash instead.
	_rip = false;
	life_use_atm = false;
	sleep (30 + random(180)); //Clerk in the store takes between 30-210 seconds before he manage to warn the police about the robbery. 
	life_use_atm = true; // Robber can not use the ATM at this point.
	if!(alive _robber) exitWith {};
	[[0,format["911 - Gasstation: %2 was just robbed by %1 for a total of $%3",name _robber, _shop, [_kassa] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	[[0,format["NEWS: Gasstation: %1 was just robbed for a total of $%2", _shop, [_kassa] call life_fnc_numberText]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
	[[getPlayerUID _robber,name _robber,"211A"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP; //Sending out broadcasts about the robbery after the fact. Also adds robber to wantedlist. In serverside wantedAdd, add a new case for 211A or just use 211 if you want. 211 is already setup as robbery.
};
[[_shop,_robber,_action,0],"TON_fnc_shopState",false,false] spawn life_fnc_MP; //We are now calling the serverside script again to tell it about the fact that robbery script is finnished clientside and the outcome.