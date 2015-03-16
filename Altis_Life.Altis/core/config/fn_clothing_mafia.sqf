#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mafia Kleidung"];

_ret = [];
_data = missionNamespace getVariable ("Mafia_Prof");
_mafia = _data select 0;



	switch (_filter) do
	{
		//Uniforms
		case 0:
		{
					
					_ret pushBack ["rds_uniform_Functionary2","Brauner Anzug",500];
					if(__GETC__(life_mafialevel) >= 4 ) then {
					_ret pushBack ["rds_uniform_Functionary1","Schwarzer Anzug",1000];
					};
					
					
			
					
			
		};
		
		//Hats
		case 1:
		{
		_ret =
		[
		
			["H_Hat_blue",nil,310],
			["H_Hat_brown",nil,276],
			["H_Hat_checker",nil,340],
			["H_Hat_grey",nil,280],
			["H_Hat_tan",nil,265]
		
		];
		};
		
		//Glasses
		case 2:
		{
			_ret =
			[
				["G_Shades_Black",nil,25],
				["G_Sport_Blackred",nil,20],
				["G_Aviator",nil,75]
			
			];
			
		};
		
		//Vest
		case 3:
		{
		
			_ret pushBack ["V_Chestrig_blk",nil,5000];
			_ret pushBack ["V_TacVest_oli",nil,25000];
		
		
			
		};
		
		//Backpacks
		case 4:
		{
			_ret =
			[
			["B_AssaultPack_cbr",nil,250],
			["B_Kitbag_mcamo",nil,450],
			["B_TacticalPack_oli",nil,350],
			["B_FieldPack_ocamo",nil,300],
			["B_Bergen_sgg",nil,450],
			["B_Kitbag_cbr",nil,450],
			["B_Carryall_oli",nil,500],
			["B_Carryall_khk",nil,500]
			];
			
			
		};





	};


_ret;