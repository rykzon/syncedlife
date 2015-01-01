#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.


_data = missionNamespace getVariable ("Karma_Prof");
_karma = _data select 1;

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Finger weg, du bist kein Cop!"};
			default
			{
				["APD Shop",
					[
					
						["hgun_P07_snds_F","Stun Pistol",2000],
						
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50]
						
						
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};
	
		

	case "cop_officer":
	{
		switch(true) do
		{
			case (playerSide != west): {"Finger weg, du bist kein Cop!"};
			case (__GETC__(life_coplevel) < 2): {"Dir fehlen noch ein paar Abzeichen!"};
			default
			{
				["APD Officer Shop",
					[
					
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						["arifle_mas_m4_d",nil,2000],
						["arifle_mas_m4c",nil,2000],
						
						["optic_mas_aim_c",nil,200],
						["optic_mas_aim",nil,200],
						
						
						["30Rnd_mas_556x45_Stanag",nil,200]
						
						
						
					]
				];
			};
		};
	};
	
	case "cop_wrt":
	{
		switch(true) do
		{
			case (playerSide != west): {"Finger weg, du bist kein Cop!"};
			case (__GETC__(life_coplevel) < 3): {"Dir fehlen noch ein paar Abzeichen!"};
			default
			{
				["APD Wrt. Officer Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						["arifle_mas_hk416c",nil,3000],
						["arifle_mas_hk416_d",nil,3000],
						
						["optic_mas_aim_c",nil,200],
						["optic_mas_aim",nil,200],
						
						["30Rnd_mas_556x45_Stanag",nil,200],
						
						
						
						["arifle_mas_m4_d",nil,2000],
						["arifle_mas_m4c",nil,2000],
						
						["optic_mas_aim_c",nil,200],
						["optic_mas_aim",nil,200],
						
						
						["30Rnd_mas_556x45_Stanag",nil,200]
						
						
						
					]
				];
			};
		};
	};
	
	
	case "cop_sergeant2":
	{
		switch(true) do
		{
			case (playerSide != west): {"Finger weg, du bist kein Cop!"};
			case (__GETC__(life_coplevel) < 4): {"Dir fehlen noch ein paar Abzeichen!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[   
						
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						
						["arifle_mas_mk16_l",nil,4000],
						["arifle_mas_g36c",nil,4000],
						
						["optic_mas_Arco_blk",nil,700],
						["optic_mas_Arco_camo",nil,700],
						
						["30Rnd_mas_556x45_Stanag",nil,200],
						
						
						["arifle_mas_hk416c",nil,3000],
						["arifle_mas_hk416_d",nil,3000],
						
						["optic_mas_aim_c",nil,200],
						["optic_mas_aim",nil,200],
						
						["30Rnd_mas_556x45_Stanag",nil,200],
						
						
						
						["arifle_mas_m4_d",nil,2000],
						["arifle_mas_m4c",nil,2000],
						
						["optic_mas_aim_c",nil,200],
						["optic_mas_aim",nil,200],
						
						
						["30Rnd_mas_556x45_Stanag",nil,200]
						
						
						
						
					]
				];
			};
		};
	};
	
	case "cop_sergeant1":
	{
		switch(true) do
		{
			case (playerSide != west): {"Finger weg, du bist kein Cop!"};
			case (__GETC__(life_coplevel) < 5): {"Dir fehlen noch ein paar Abzeichen!"};
			default
			{
				["APD Sergeant 1st Shop",
					[   
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						
						["LMG_mas_M249_F",nil,5000],
						
						["optic_mas_Arco_blk",nil,500],
						
						["200Rnd_mas_556x45_Stanag",nil,500],
						
						
						["arifle_mas_mk16_l",nil,4000],
						["arifle_mas_g36c",nil,4000],
						
						["optic_mas_Arco_blk",nil,700],
						["optic_mas_Arco_camo",nil,700],
						
						["30Rnd_mas_556x45_Stanag",nil,200],
						
						
						["arifle_mas_hk416c",nil,3000],
						["arifle_mas_hk416_d",nil,3000],
						
						["optic_mas_aim_c",nil,200],
						["optic_mas_aim",nil,200],
						
						["30Rnd_mas_556x45_Stanag",nil,200],
						
						
						
						["arifle_mas_m4_d",nil,2000],
						["arifle_mas_m4c",nil,2000],
						
						["optic_mas_aim_c",nil,200],
						["optic_mas_aim",nil,200],
						
						
						["30Rnd_mas_556x45_Stanag",nil,200]
						
					]
				];
			};
		};
	};
	case "cop_detective2":
	{
		switch(true) do
		{
			case (playerSide != west): {"Finger weg, du bist kein Cop!"};
			case (__GETC__(life_coplevel) < 5): {"Dir fehlen noch ein paar Abzeichen!"};
			default
			{
				["APD Detective 2nd Shop",
					[   
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						
						["arifle_mas_mk17",nil,6000],
						
						["optic_mas_Arco_camo",nil,700],
						
						["20Rnd_mas_762x51_Stanag",nil,300],
						
						
						["LMG_mas_M249_F",nil,5000],
						
						["optic_mas_Arco_blk",nil,500],
						
						["200Rnd_mas_556x45_Stanag",nil,500],
						
						
						["arifle_mas_mk16_l",nil,4000],
						["arifle_mas_g36c",nil,4000],
						
						["optic_mas_Arco_blk",nil,700],
						["optic_mas_Arco_camo",nil,700],
						
						["30Rnd_mas_556x45_Stanag",nil,200],
						
						
						["arifle_mas_hk416c",nil,3000],
						["arifle_mas_hk416_d",nil,3000],
						
						["optic_mas_aim_c",nil,200],
						["optic_mas_aim",nil,200],
						
						["30Rnd_mas_556x45_Stanag",nil,200],
						
						
						
						["arifle_mas_m4_d",nil,2000],
						["arifle_mas_m4c",nil,2000],
						
						["optic_mas_aim_c",nil,200],
						["optic_mas_aim",nil,200],
						
						
						["30Rnd_mas_556x45_Stanag",nil,200]
				
						
					]
				];
			};
		};
	};
	case "cop_detective1":
	{
		switch(true) do
		{
			case (playerSide != west): {"Finger weg, du bist kein Cop!"};
			case (__GETC__(life_coplevel) < 5): {"Dir fehlen noch ein paar Abzeichen!"};
			default
			{
				["APD Sergeant 1st Shop",
					[   
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						
						["arifle_mas_g3",nil,6000],
						
						["optic_mas_Arco_blk",nil,500],
						
						
								["arifle_mas_mk17",nil,6000],
						
						["optic_mas_Arco_camo",nil,700],
						
						["20Rnd_mas_762x51_Stanag",nil,300],
						
						
						["LMG_mas_M249_F",nil,5000],
						
						["optic_mas_Arco_blk",nil,500],
						
						["200Rnd_mas_556x45_Stanag",nil,500],
						
						
						["arifle_mas_mk16_l",nil,4000],
						["arifle_mas_g36c",nil,4000],
						
						["optic_mas_Arco_blk",nil,700],
						["optic_mas_Arco_camo",nil,700],
						
						["30Rnd_mas_556x45_Stanag",nil,200],
						
						
						["arifle_mas_hk416c",nil,3000],
						["arifle_mas_hk416_d",nil,3000],
						
						["optic_mas_aim_c",nil,200],
						["optic_mas_aim",nil,200],
						
						["30Rnd_mas_556x45_Stanag",nil,200],
						
						
						
						["arifle_mas_m4_d",nil,2000],
						["arifle_mas_m4c",nil,2000],
						
						["optic_mas_aim_c",nil,200],
						["optic_mas_aim",nil,200],
						
						
						["30Rnd_mas_556x45_Stanag",nil,200]
					
						
					]
				];
			};
		};
	};
	case "cop_lt":
	{
		switch(true) do
		{
			case (playerSide != west): {"Finger weg, du bist kein Cop!"};
			case (__GETC__(life_coplevel) < 5): {"Dir fehlen noch ein paar Abzeichen!"};
			default
			{
				["APD Lieutenant Shop",
					[   
					
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						
						["srifle_mas_ebr",nil,7000],
						
						["optic_mas_Arco_blk",nil,700],
						["optic_mas_Arco_camo",nil,700],
				
						["20Rnd_mas_762x51_Stanag",nil,500],
						
						
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						
						["arifle_mas_g3",nil,6000],
						
						["optic_mas_Arco_blk",nil,500],
						
						
						["arifle_mas_mk17",nil,6000],
						
						["optic_mas_Arco_camo",nil,700],
						
						["20Rnd_mas_762x51_Stanag",nil,300],
						
						
						["LMG_mas_M249_F",nil,5000],
						
						["optic_mas_Arco_blk",nil,500],
						
						["200Rnd_mas_556x45_Stanag",nil,500],
						
						
						["arifle_mas_mk16_l",nil,4000],
						["arifle_mas_g36c",nil,4000],
						
						["optic_mas_Arco_blk",nil,700],
						["optic_mas_Arco_camo",nil,700],
						
						["30Rnd_mas_556x45_Stanag",nil,200],
						
						
						["arifle_mas_hk416c",nil,3000],
						["arifle_mas_hk416_d",nil,3000],
						
						["optic_mas_aim_c",nil,200],
						["optic_mas_aim",nil,200],
						
						["30Rnd_mas_556x45_Stanag",nil,200],
						
						
						
						["arifle_mas_m4_d",nil,2000],
						["arifle_mas_m4c",nil,2000],
						
						["optic_mas_aim_c",nil,200],
						["optic_mas_aim",nil,200],
						
						
						["30Rnd_mas_556x45_Stanag",nil,200]
						
					]
				];
			};
		};
	};
	
	case "cop_marksman":
	{
		switch(true) do
		{
			case (playerSide != west): {"Finger weg, du bist kein Cop!"};
			case (__GETC__(life_coplevel) < 1): {"Dir fehlen noch ein paar Abzeichen!"};
			default
			{
				["Nur auf Anweisung!",
					[
					
						["srifle_mas_m110",nil,10000],
						["srifle_mas_m24_d",nil,10000],
						["srifle_mas_sr25_d",nil,10000],
						
						
						["optic_mas_zeiss",nil,1000],
						["optic_mas_LRPS",nil,1000],
						
						["20Rnd_mas_762x51_Stanag",nil,500],
						["5Rnd_mas_762x51_Stanag",nil,500]
						
						
					]
				];
			};
		};
	};
	
	
	
		case "posKarma1":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (_karma < 2000): {"Dein Karma ist zu niedrig!"};
			default
			{
				["Karma Stufe 1",
					[   
					
						["arifle_mas_mp5",nil,1000],
						["30Rnd_mas_9x21_Stanag",nil,150]
						
					]
				];
			};
		};
	};
	
			case "posKarma2":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (_karma < 5000): {"Dein Karma ist zu niedrig!"};
			default
			{
				["Karma Stufe 2",
					[   ["hgun_mas_usp_F",nil,1000],
						["12Rnd_mas_45acp_Mag",nil,150],
						
						["arifle_mas_mp5",nil,1000],
						["30Rnd_mas_9x21_Stanag",nil,150]
						
					]
				];
			};
		};
	};
	
			case "posKarma3":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (_karma < 10000): {"Dein Karma ist zu niedrig!"};
			default
			{
				["Karma Stufe 3",
					[   
					
						["RH_ttracker_g",nil,150],
						["RH_6Rnd_45ACP_Mag",nil,150],
						
						["hgun_mas_usp_F",nil,1000],
						["12Rnd_mas_45acp_Mag",nil,150],
						
						["arifle_mas_mp5",nil,1000],
						["30Rnd_mas_9x21_Stanag",nil,150]
						
						
					]
				];
			};
		};
	};
	
			case "negKarma3":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (_karma > -10000): {"Dein Karma ist zu hoch!"};
			default
			{
				["Negativ Karma 3",
					[   
					
						["arifle_mas_lee",nil,150],
						["arifle_mas_akms",nil,150],
						["arifle_mas_m70ab",nil,150],
						
						
						["30Rnd_mas_762x39_mag",nil,150],
						["5Rnd_mas_762x51_Stanag",nil,150],
						
						
						["kio_skl_msk",nil,15],
						["kio_skl_msk_red",nil,15],
						["kio_skl_msk_grn",nil,15],
						
						
						["arifle_mas_aks74u_c",nil,150],
						["30Rnd_mas_545x39_mag",nil,150],
						
						
						["kio_vfv_mask",nil,15],
						
						
						["arifle_mas_bizon",nil,800],
						["64Rnd_mas_9x18_mag",nil,15],
						["H_Shemag_olive",nil,15]
						
					]
				];
			};
		};
	};
	
	
			case "negKarma2":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (_karma > -5000): {"Dein Karma ist zu hoch!"};
			default
			{
				["Negativ Karma 2",
					[   ["arifle_mas_aks74u_c",nil,150],
						["30Rnd_mas_545x39_mag",nil,150],
						
						
						["kio_vfv_mask",nil,15],
						
						
						["arifle_mas_bizon",nil,800],
						["64Rnd_mas_9x18_mag",nil,15],
						["H_Shemag_olive",nil,15]
					]
				];
			};
		};
	};
	
			case "negKarma1":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (_karma > -2000): {"Dein Karma ist zu hoch!"};
			default
			{
				["Negativ Karma 1",
					[   ["arifle_mas_bizon",nil,800],
						["64Rnd_mas_9x18_mag",nil,15],
						["H_Shemag_olive",nil,15]
					]
				];
			};
		};
	};

	
	
	
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_gun): {"Du hast keine Schusswaffenlizenz!"};
			default
			{
				["Waffenhändler",
					[
					["RH_m9",nil,500],
					["RH_15Rnd_9x19_M9",nil,500],
					["RH_muzi",nil,500],
					["RH_30Rnd_9x19_UZI",nil,500],
					["RH_m1911",nil,500],
					["RH_7Rnd_45cal_m1911",nil,500],
					["RH_g17",nil,500],
					["RH_17Rnd_9x19_g17",nil,500]
					
					
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	/*case "gasstation":
	{
	
	["Tankstellenshop",
		[
		//TODO
		]
	
	]
	}*/
	
	case "genstore":
	{
		["Synced Gemischtwaren",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
