/*
File: fn_profType
Author: Jacob "PapaBear" Tyler
 
Description:
Text changing
*/
//convert name to prof name
_type = [_this,0,"",[""]] call BIS_fnc_param;
 
if(_type == "" ) exitWith {[]};
 
_profName = "";
switch ( _type ) do
{
//text to license
case "karma": {_profName = "Karma_Prof"; };
case "mafia": { _profName = "Mafia_Prof";};

 
//license to text
case "Mafia_Prof": {_profName = "Mafia"; };
case "Karma_Prof": { _profName = "Karma";};

default{""};
};
 
 
 
_profName;