/*
File: fn_addExp.sqf
Author: Jacob "PapaBear" Tyler
 
Description:
Add exp to given prof
*/
//add exp
_type = [_this,0,"",[""]] call BIS_fnc_param;
_amount = [_this,1,0,[0]] call BIS_fnc_param;
_vorzeichen = _this select 2;
 
_profData = missionNamespace getVariable (_type);
//0 = level 
//1 = exp 
 
_level = (_profData select 0);
_exp = (_profData select 1);
_nextLevel = 0;
_nextLevel = 4 * ( _level^3 ) ;
_nextLevel2 =  6 * ( _level^2 ) ;
_nextLevel = _nextLevel - _nextLevel2;
_nextLevel3 = 20 * _level ;
_nextLevel = _nextLevel + _nextLevel3 + 200 ;
 
 hint "amount:"+_amount;
if(_type == "Karma_Prof") then
{
	hint "karma_prof";
	if(_vorzeichen == 1) then
	{
		hint ""+_amount;
		switch(true) do
		{
			case ( _exp >= 0 ):{ _exp = _exp + _amount; };
			
			case ( _exp >= -2000): { _exp = _exp + _amount*2; };
			
			case ( _exp >= -5000): { _exp = _exp + _amount*5; };
			
			case ( _exp >= -10500): { _exp = _exp + _amount*20; };
			
			
			
			default{};
		};
		if( _exp < -10500 ) then { _exp = -10500;};
		
		missionNamespace setVariable [_type,[(_profData select 0),(_exp)]];
	};
	
	if(_vorzeichen == 0) then
	{
	hint ""+_amount;
	switch (true) do
		{
		
			case ( _exp <= 0): { _exp = _exp - _amount;};
			
			case ( _exp <= 2000): { _exp = _exp - _amount*2;};
			
			case ( _exp <= 5000): { _exp = _exp - _amount*5;};
		
			case ( _exp <= 10500): { _exp = _exp - _amount*20;};
			
			
			default{};
		
		};
		if(_exp > 10500) then { _exp = -10500;};
		missionNamespace setVariable [_type,[(_profData select 0),(_exp)]];
	};
	
	


}
else
{
_exp = _exp + _amount;
 
if( _exp >= _nextLevel ) then 
{
if( _level == 10 ) then 
{
if( _exp >= _nextLevel ) then 
{
_exp = _nextLevel; 
missionNamespace setVariable [_type,[(_profData select 0),(_exp)]];
}
else
{
missionNamespace setVariable [_type,[(_profData select 0),(_exp)]];
};
 
}
else
{
_exp = _nextLevel - _exp;
missionNamespace setVariable [_type,[(_profData select 0) + 1,(_exp)]];
if( _level == 9 ) then 
{
titleText [format["You are now level %1. Max Level!",_level],"PLAIN"]; titleFadeOut 5;
}
else
{ 
missionNamespace setVariable [_type,[(_profData select 0) + 1,(_exp)]];
_text = [_type] call life_fnc_varToStr;
titleText [format["%1 is now at level %2.",_text,_level],"PLAIN"]; titleFadeOut 5;
};
 
 
};
 
}
else
{
missionNamespace setVariable [_type,[(_profData select 0),(_exp)]];
};
};

