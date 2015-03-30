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
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret pushBack ["U_Rangemaster","Recruiten Uniform",25];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["U_BG_Guerilla2_3","Officer Uniform",350];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam","Gehobene Uniform",550];

			};
				if(license_cop_swat) then
		{
			_ret pushBack ["U_PMC_IndUniformRS_BSBPBB","SWAT Uniform",550];
			_ret pushBack ["U_PMC_CombatUniformLS_BSGPBB","SWAT Uniform",550];
			_ret pushBack ["U_PMC_CombatUniformRS_BSGPBB","SWAT Uniform",550];
			_ret pushBack ["U_PMC_IndUniformLS_BSBPBB","SWAT Uniform",550];
		};
	};
	
	//Hats
	case 1:
	{
		_ret set[count _ret,["h_cap_police",nil,75]];
		
		

		if(__GETC__(life_coplevel) >= 4) then
		{
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,100]];
		};
		
		if(__GETC__(life_coplevel) >= 6) then
		{
			_ret set[count _ret,["H_Watchcap_camo",nil,100]];
			_ret set[count _ret,["H_Watchcap_sgg",nil,100]];
		};
		
			if(__GETC__(life_coplevel) >= 8) then
		{
			_ret set[count _ret,["H_beret_02",nil,100]];
			_ret set[count _ret,["h_beret_colonel",nil,100]];
			_ret set[count _ret,["H_Booniehat_dgtl",nil,100]];
			_ret set[count _ret,["H_Booniehat_khk",nil,100]];
			_ret set[count _ret,["G_Balaclava_blk",nil,100]];
			_ret set[count _ret,["H_Capbw_pmc",nil,100]];
			_ret set[count _ret,["H_Capbw_tan_pmc",nil,100]];
		};
			
			
			
			
			
			
			
			
			
			
		
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Diving",nil,100]
		];
	};
	
	//Vest
	case 3:
	{
		_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
		_ret set[count _ret,["V_RebreatherB",nil,1800]];
		if(__GETC__(life_coplevel) >= 2) then
		{
			_ret set[count _ret,["V_TacVest_blk_POLICE",nil,1500]];
		};
		if(__GETC__(life_coplevel) >= 6) then
		{
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,1500]];
	
		};
		if(license_cop_swat) then
		{
			_ret pushBack ["V_PlateCarrier1_blk","SWAT Uniform",550];
		};
	
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_blk",nil,500],
			["B_AssaultPack_blk",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Parachute",nil,1000],
			["B_Bergen_blk",nil,1000],
			["B_Carryall_cbr",nil,3500]
		];
	};
};

_ret;
