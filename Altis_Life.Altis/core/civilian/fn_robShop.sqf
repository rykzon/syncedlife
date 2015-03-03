/* 		
			file: fn_robShops.sqf
			Author: MrKraken
			Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
			Description:
			Executes the rob shob action!
			Idea developed by PEpwnzya v2.0
			
*/ 
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_rob"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
//_kassa = 1000; //The amount the shop has to rob, you could make this a parameter of the call (https://community.bistudio.com/wiki/addAction). Give it a try and post below ;)
_action = [_this,2] call BIS_fnc_param;//Action name

if !(alive _robber) exitWith {};

_rip = true;
_kassa = 4000 + round(random 12000); //setting the money in the registry, anywhere from 3000 to 15000. 
[[_shop,_robber,_action,-1],"TON_fnc_shopState",false,false] spawn life_fnc_MP; //sending information to the server so the animations and removeaction can be performed for all players if the checks clear. 

_chance = random(100); //calling a random number between 0-100. 
if(_chance >= 51) then { hint "Der Kassierer hat den stummen Alarm ausgelöst!"; [[0,format["ALARM! - Gasstation: %1 is being robbed!", _shop]],"life_fnc_broadcast",west,false] call life_fnc_MP; }; //We set a 15% chance that the silent alarm is being triggered, wich sends a 911-message to the police. 

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Überfall im Gange, bleib in der Nähe (10m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;

if(_rip) then
{
// Marker by ehno start


_markerName = format ["tanke%1", _shop];
_Pos = position player; // by ehno: get player pos
				_marker = createMarker [_markerName,_Pos]; //by ehno: Place a Maker on the map
				_marker setMarkerColor "ColorRed";
				_marker setMarkerText "!Achtung! Überfall !Achtung!";
				_marker setMarkerType "mil_warning";
// Marker by ehno end	

	[[_shop],"life_fnc_robStationSound",nil,true] spawn life_fnc_MP;
	//[_shop] spawn life_fnc_robStationSound;
	
	while{true} do
	{
		
		sleep  0.85;
		_cP = _cP + 0.006;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["Überfall im Gange, bleib in der Nähe (5m) (%1%2)...",round(_cP * 100),"%"];
		if(_cP >= 1) exitWith {};
		if(_robber distance _shop > 5) exitWith {};
		if!(alive _robber) exitWith { };
		
	}; // the loop continues til the progressbar is full, distance is exceeded or robber dies. 
	
	
	deleteMarker _markerName; // by ehno delete maker
	
	
	
	if!(alive _robber) exitWith { _rip = false; };
	if(_robber distance _shop > 5) exitWith { hint "Du musst in der Nähe der Kasse bleiben, der Kassierer hat die Kasse verschlossen."; 5 cutText ["","PLAIN"]; _rip = false; };
	5 cutText ["","PLAIN"];
	titleText[format["Du hast $%1 gestohlen, mach dich vom Acker!",[_kassa] call life_fnc_numberText],"PLAIN"];
	life_cash = life_cash + _kassa; //I am using a moneylaundry system on my server, but if you do not change this to life_cash instead.
	_rip = false;
	life_use_atm = false;
	["Karma_Prof",150,0] call life_fnc_addKarma;
	sleep (300); //Clerk in the store takes between 30-210 seconds before he manage to warn the police about the robbery. 
	life_use_atm = true; // Robber can not use the ATM at this point.
	
	if!(alive _robber) exitWith {};
	
	if(headgear _robber in life_masked) then
	{
	[[0,format["911 - Tankstelle: %2 wurde gerade Überfallen und $%3 wurden erbeutet.",name _robber, _shop, [_kassa] call life_fnc_numberText]],"life_fnc_broadcast",west,false] call life_fnc_MP;
	}
	else
	{
	[[0,format["911 - Tankstelle: %2 wurde von %1 Überfallen und $%3 wurden erbeutet.",name _robber, _shop, [_kassa] call life_fnc_numberText]],"life_fnc_broadcast",west,false] call life_fnc_MP;
	};
	[[0,format["NEWS: Tankstelle: %1 wurde gerade Überfallen und es wurden $%2 erbeutet", _shop, [_kassa] call life_fnc_numberText]],"life_fnc_broadcast",civilian,false] call life_fnc_MP;
	//[[getPlayerUID _robber,name _robber,"211A"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP; //Sending out broadcasts about the robbery after the fact. Also adds robber to wantedlist. In serverside wantedAdd, add a new case for 211A or just use 211 if you want. 211 is already setup as robbery.
};
[[_shop,_robber,_action,0],"TON_fnc_shopState",false,false] spawn life_fnc_MP; //We are now calling the serverside script again to tell it about the fact that robbery script is finnished clientside and the outcome.
