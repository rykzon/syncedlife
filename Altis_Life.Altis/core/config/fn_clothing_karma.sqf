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
ctrlSetText[3103,"Karma Händler"];

_ret = [];
_karma = [] call life_fnc_getKarma;

if(_karma > 0) then
{

	switch (_filter) do
	{
		//Uniforms
		case 0:
		{
			
			if(_karma >= 500) then
			{
				_ret pushBack ["rds_uniform_worker1",nil,350];
				_ret pushBack ["rds_uniform_worker2",nil,350];
				_ret pushBack ["rds_uniform_worker3",nil,350];
				_ret pushBack ["rds_uniform_worker4",nil,350];
				
				if(_karma >= 1500) then
				{
				
				_ret pushBack ["U_C_Poor_1",nil,400];
				_ret pushBack ["U_C_WorkerCoveralls",nil,400];
					if(_karma >= 3000) then
					{
					_ret pushBack ["rds_uniform_Profiteer1",nil,1000];
					_ret pushBack ["rds_uniform_Profiteer2",nil,1000];
					_ret pushBack ["rds_uniform_Profiteer3",nil,1000];
					_ret pushBack ["rds_uniform_Profiteer4",nil,1000];
					};
				};
			};
			
		};
		
		//Hats
		case 1:
		{
			if(_karma >= 500) then
			{
				_ret pushBack ["rds_Profiteer_cap1","Cap",200];
				_ret pushBack ["rds_Profiteer_cap2","Cap",200];
				_ret pushBack ["rds_Profiteer_cap3","Cap",200];
				_ret pushBack ["rds_Profiteer_cap4","Cap",200];
				
				if(_karma >= 3000) then
				{
				_ret pushBack ["rds_Villager_cap1","Mütze",200];
				_ret pushBack ["rds_villager_cap2","Mütze",200];
				_ret pushBack ["rds_villager_cap3","Mütze",200];
				_ret pushBack ["rds_villager_cap4","Mütze",200];
				
					if(_karma >= 3000) then
					{
					
					};
				};
			};
		};
		
		//Glasses
		case 2:
		{
			if(_karma >= 500) then
			{
			
				
				if(_karma >= 1500) then
				{
				
				
					if(_karma >= 10000) then
					{
					_return pushBack ["NVGoggles_mas_h",nil,1000];
					};
				};
			};
		};
		
		//Vest
		case 3:
		{
			if(_karma >= 500) then
			{
				_ret pushBack ["kae_TK_Belt_ChestHolster",nil,5000];
				_ret pushBack ["V_Chestrig_blk",nil,10000];
				
				if(_karma >= 1500) then
				{
					_ret pushBack ["V_HarnessO_gry",nil,25000];
				
					if(_karma >= 3000) then
					{
					_ret pushBack ["V_TacVest_brn",nil,50000];
					_ret pushBack ["V_TacVest_oli",nil,50000];
					};
					
						
				};
			};
		};
		
		//Backpacks
		case 4:
		{
			
				
				
			_ret pushBack ["B_AssaultPack_cbr",nil,250],
			_ret pushBack ["B_Kitbag_mcamo",nil,450],
			_ret pushBack ["B_TacticalPack_oli",nil,350],
			_ret pushBack ["B_FieldPack_ocamo",nil,300],
			_ret pushBack ["B_Bergen_sgg",nil,450],
			_ret pushBack ["B_Kitbag_cbr",nil,450],
				//["FLAY_HangGlider_Bag",nil,10000],
			_ret pushBack ["B_Carryall_oli",nil,500],
			_ret pushBack ["B_Carryall_khk",nil,500]
			
		};
	};





}
else
{

	switch (_filter) do
	{
		//Uniforms
		case 0:
		{
			
			if(_karma <= -500) then
			{
				_ret pushBack ["rds_uniform_woodlander1",nil,350];
				_ret pushBack ["rds_uniform_woodlander2",nil,350];
				_ret pushBack ["rds_uniform_woodlander3",nil,350];
				_ret pushBack ["rds_uniform_woodlander4",nil,350];
				
				
				if(_karma <= -1500) then
				{
				
				_ret pushBack ["U_BG_Guerrilla_6_1",nil,2500];
				_ret pushBack ["U_IG_Guerilla3_1",nil,2500];
				_ret pushBack ["U_BG_Guerilla1_1",nil,2500];
				
					if(_karma <= -3000) then
					{
					_ret pushBack ["U_B_GhillieSuit",nil,50000];
					_ret pushBack ["U_I_GhillieSuit",nil,50000];
					_ret pushBack ["U_O_GhillieSuit",nil,50000];
					
					
						if(_karma <= -6000) then
						{
						_ret pushBack ["U_O_CombatUniform_ocamo",nil,15000];
						_ret pushBack ["U_BG_leader",nil,15000];
						_ret pushBack ["U_I_OfficerUniform",nil,15000];
						_ret pushBack ["U_MillerBody",nil,15000];
						
						
						};
					};
				};
			};
			
		};
		
		//Hats
		case 1:
		{
			if(_karma <= -500) then
			{
				_ret pushBack ["H_Shemag_olive","Shemag",200];
				
				
				if(_karma <= -3000) then
				{
				 	_ret pushBack ["kio_vfv_mask","Vendetta Maske",1000];
				 	
					if(_karma <= -10000) then
					{
					_ret pushBack ["kio_skl_msk_grn","Schädel Maske Grün",5000];
					_ret pushBack ["kio_skl_msk_red","Schädel Maske Rot",5000];
					_ret pushBack ["kio_skl_msk","Schädel Maske Weiß",5000];
					};
				};
			};
		};
		
		//Glasses
		case 2:
		{
			if(_karma <= -500) then
			{
			
				
				if(_karma <= -1500) then
				{
				
				
					if(_karma <= -3000) then
					{
					
					};
				};
			};
		};
		
		//Vest
		case 3:
		{
			if(_karma <= -500) then
			{
				_ret pushBack ["kae_TK_Belt_ChestHolster",nil,5000];
				_ret pushBack ["V_Chestrig_rgr",nil,10000];
				
				if(_karma <= -1500) then
				{
					_ret pushBack ["V_HarnessOSpec_brn",nil,25000];
				
					if(_karma <= -6000) then
					{
					_ret pushBack ["V_TacVest_camo",nil,50000];
					_ret pushBack ["V_TacVest_khk",nil,50000];
					};
				};
			};
		};
		
		//Backpacks
		case 4:
		{
			_ret pushBack ["B_AssaultPack_cbr",nil,250],
			_ret pushBack ["B_Kitbag_mcamo",nil,450],
			_ret pushBack ["B_TacticalPack_oli",nil,350],
			_ret pushBack ["B_FieldPack_ocamo",nil,300],
			_ret pushBack ["B_Bergen_sgg",nil,450],
			_ret pushBack ["B_Kitbag_cbr",nil,450],
			//["FLAY_HangGlider_Bag",nil,10000],
			_ret pushBack ["B_Carryall_oli",nil,500],
			_ret pushBack ["B_Carryall_khk",nil,500]
	};
};




};

_ret;
