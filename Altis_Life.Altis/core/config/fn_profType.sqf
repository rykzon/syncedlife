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
case "heroin": {_profName = "Heroin_Prof"; };
case "cocaine": { _profName = "Cocain_Prof";};
case "marijuana": { _profName = "Canabis_Prof";};
case "copperu": { _profName = "Copper_Prof"; };
case "ironu": { _profName = "Iron_Prof";};
case "salt": {_profName = "Salt_Prof"; };
case "sand": { _profName = "Sand_Prof";};
case "diamond": { _profName = "Diamond_Prof";};
case "oil": { _profName = "Oil_Prof";};
case "cement": { _profName = "Rock_Prof";};
case "apple": { _profName = "Fruit_Prof"; };
case "grape": { _profName = "Fruit_Prof";};
case "wood": { _profName = "Wood_Prof";};
case "heroinu": {_profName = "Heroin_Prof"; };
case "marijuanau": { _profName = "Canabis_Prof";};
case "copperore": { _profName = "Copper_Prof"; };
case "ironore": { _profName = "Iron_Prof";};
case "oilu": { _profName = "Oil_Prof";};
case "stone": { _profName = "Rock_Prof";};
case "coalu": { _profName = "Coal_Prof";};

 
//license to text
case "Mafia_Prof": {_profName = "Mafia"; };
case "Karma_Prof": { _profName = "Karma";};
case "Heroin_Prof": {_profName = "Heroin"; };
case "Cocain_Prof": { _profName = "Cocaine";};
case "Canabis_Prof": { _profName = "Marijuana";};
case "Copper_Prof": { _profName = "Kupfe"; };
case "Iron_Prof": { _profName = "Eisen";};
case "Salt_Prof": {_profName = "Salz"; };
case "Sand_Prof": { _profName = "Sand";};
case "Diamond_Prof": { _profName = "Diamant";};
case "Oil_Prof": { _profName = "Öl";};
case "Wood_Prof": { _profName = "Holz";};
case "Rock_Prof": { _profName = "Stein";};
case "Fruit_Prof": { _profName = "Früchte";};
case "Coal_Prof": { _profName = "Kohle";};

default{""};
};
 
 
 
_profName;