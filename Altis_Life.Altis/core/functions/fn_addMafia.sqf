/*
File: fn_addExp.sqf
Author: Jacob "PapaBear" Tyler
 
Description:
Add exp to given prof
*/
//add exp
_type = [_this,0,"",[""]] call BIS_fnc_param;
_amount = [_this,1,0,[0]] call BIS_fnc_param;
 
_profData = missionNamespace getVariable (_type);
//0 = level 
//1 = exp 
 
_level = (_profData select 0);
_exp = (_profData select 1);




_nextLevel = 0;
_nextLevel = 4 * ( _level^3 );
_nextLevel2 =  10 * ( _level^2 );
_nextLevel = _nextLevel - _nextLevel2;
_nextLevel3 = 50 * _level;
_nextLevel = _nextLevel + _nextLevel3;
 
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









/*
_type = [_this,0,"",[""]] call BIS_fnc_param;
_amount = [_this,1,0,[0]] call BIS_fnc_param;
 //TEST
 _amount = 1;
 _type = "Mafia_Prof";
 
 
 
_profData = missionNamespace getVariable (_type);
//0 = level 
//1 = exp 
 
_level = (_profData select 0);
_exp = (_profData select 1);

_nextLevel = 0;
_nextLevel = 4 * ( _profLevel^3 ) ;
_nextLevel2 =  10 * ( _profLevel^2 ) ;
_nextLevel = _nextLevel - _nextLevel2;
_nextLevel3 = 50 * _profLevel ;
_nextLevel = _nextLevel + _nextLevel3;
		
 hint "mafia";
_exp = _exp + _amount;
 
if( _exp >= _nextLevel ) then 
{
if( _level == 3 ) then
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
if( _level == 2 ) then 
{
titleText [format["Du hast Rang %1 erreicht. Willkommen in der Familie",_level],"PLAIN"]; titleFadeOut 5;
}
else
{ 
missionNamespace setVariable [_type,[(_profData select 0) + 1,(_exp)]];
_text = [_type] call life_fnc_varToStr;
titleText [format["%1 hat Rang %2 erreicht.",_text,_level],"PLAIN"]; titleFadeOut 5;
};
 
 
};
 
}
else
{
missionNamespace setVariable [_type,[(_profData select 0),(_exp)]];
};		