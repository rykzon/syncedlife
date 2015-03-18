private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_rob","_fail"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
//_kassa = 1000; //The amount the shop has to rob, you could make this a parameter of the call (https://community.bistudio.com/wiki/addAction). Give it a try and post below ;)
_action = [_this,2] call BIS_fnc_param;//Action name
_fail = false;
if !(alive _robber) exitWith {};

_rip = true;
_kassa = 10000 + round(random 25000); //setting the money in the registry, anywhere from 3000 to 15000. 
[[_shop,_robber,_action,-1],"TON_fnc_shopState",false,false] spawn life_fnc_MP; //sending information to the server so the animations and removeaction can be performed for all players if the checks clear. 
[[2,"DAS KASINO WIRD AUSGERAUBT!!"],"life_fnc_broadcast",nil,false] call life_fnc_MP;



sleep 2;

_timer = time + (10*60);
_toFar = false;
if(_rip) then
{

while {true} do
{
	//Timer display (TO BE REPLACED WITH A NICE GUI LAYER)
	_countDown = if(round(_timer - time) > 60) then {format["%1 minute(s)",round(round(_timer - time) / 60)]} else {format["%1 second(s)",round(_timer - time)]};
	hintSilent format["You need to stay within 5m!\n\nTime Remaining:\n %1\n\nDistance: %2m",_countDown,round(player distance _shop)];

	if(player distance _shop > 5) exitWith {};
	if((round(_timer - time)) < 1) exitWith {};
	if(!alive player) exitWith {};
	if(life_istazed) exitWith {hint "You were tazed, the robbery has failed!";};
};

if!(alive _robber) exitWith { _fail = true; };
	if(_robber distance _shop > 5) exitWith { hint "Du musst in der Nähe der Kasse bleiben, der Kassierer hat die Kasse verschlossen."; 5 cutText ["","PLAIN"]; _fail = true; };
	if(life_istazed) exitWith {_fail=true};
	5 cutText ["","PLAIN"];
	hint format["Du hast das Kasino um $%1 erleichtert.", _kassa];
	[[2,"KASINORAUB ERFOLGREICH!!"],"life_fnc_broadcast",nil,false] call life_fnc_MP;
	life_cash = life_cash + _kassa; //I am using a moneylaundry system on my server, but if you do not change this to life_cash instead.
	_rip = false;
	life_use_atm = false;
	["Karma_Prof",250,1] call life_fnc_addKarma;
	sleep (600); //Clerk in the store takes between 30-210 seconds before he manage to warn the police about the robbery. 
	life_use_atm = true; // Robber can not use the ATM at this point.
	
};
if(_fail) then
{
[[2,"KASINORAUB FEHLGESCHLAGEN!!"],"life_fnc_broadcast",nil,false] call life_fnc_MP;
};
[[_shop,_robber,_action,0],"TON_fnc_shopState",false,false] spawn life_fnc_MP;