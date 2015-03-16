#include <macro.h>

//::::::::::::  ::::::::::::\\
//	Filename: life\fn_life_sysM.sqf
//	Author: Distrikt41 - Dscha
//
//	Beschreibung: Lädt Marktsystem Daten für Distrikt41 Server
//::::::::::::  ::::::::::::\\

//:::::::::::: Distrikt41 Marktsystem ::::::::::::\\
diag_log [":::::::::::::::: Marktsystem geladen ::::::::::::::::"];

//:::::::::::: Distrikt41 Marktsystem (AKTIV) ::::::::::::\\

player getVariable "life_KPreisliste";
player getVariable "life_VPreisliste";

sleep 5;

while{true}do
{
	player getVariable "life_KPreisliste";
	player getVariable "life_VPreisliste";
	life_KPreisApple = life_KPreisliste select 0;
	life_VPreisApple = life_VPreisliste select 0;
	
	life_KPreisPeach = life_KPreisliste select 1;
	life_VPreisPeach = life_VPreisliste select 1;
	
	life_KPreisHeroinp = life_KPreisliste select 2;
	life_VPreisAHeroinp = life_VPreisliste select 2;
	
	life_KPreisMarijuana = life_KPreisliste select 3;
	life_VPreisMarijuana = life_VPreisliste select 3;
	
	life_KPreisOilp = life_KPreisliste select 4;
	life_VPreisOilp = life_VPreisliste select 4;
	
	life_KPreisCocainep = life_KPreisliste select 5;
	life_VPreisCocainep = life_VPreisliste select 5;
	
	life_KPreisTurtle = life_KPreisliste select 6;
	life_VPreisTurtle = life_VPreisliste select 6;
	
	life_KPreisDiamondc = life_KPreisliste select 7;
	life_VPreisDiamondc = life_VPreisliste select 7;
	
	life_KPreisIron_r = life_KPreisliste select 8;
	life_VPreisIron_r = life_VPreisliste select 8;
	
	life_KPreisCoal = life_KPreisliste select 9;
	life_VPreisCoal = life_VPreisliste select 9;
	
	life_KPreisSteel = life_KPreisliste select 10;
	life_VPreisSteel = life_VPreisliste select 10;
	
	life_KPreisBluesyn = life_KPreisliste select 11;
	life_VPreisBluesyn = life_VPreisliste select 11;
	
	life_KPreisPlastic = life_KPreisliste select 12;
	life_VPreisPlastic = life_VPreisliste select 12;
	
	life_KPreisCopper_r = life_KPreisliste select 13;
	life_VPreisCopper_r = life_VPreisliste select 13;
	
	life_KPreisSalt_r = life_KPreisliste select 14;
	life_VPreisSalt_r = life_VPreisliste select 14;
	
	life_KPreisGlass = life_KPreisliste select 15;
	life_VPreisGlass = life_VPreisliste select 15;
	
	life_KPreisClement = life_KPreisliste select 16;
	life_VPreisCement = life_VPreisliste select 16;
	
	life_KPreisBier = life_KPreisliste select 17;
	life_VPreisBier = life_VPreisliste select 17;
	
	life_KPreisSchnaps = life_KPreisliste select 18;
	life_VPreisSchnaps = life_VPreisliste select 18;
	
	life_KPreisMagicMushrooms = life_KPreisliste select 19;
	life_VPreisMagicMushrooms = life_VPreisliste select 19;
	
	
	sleep 30;
};