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

_data = missionNamespace getVariable ("Mafia_Prof");
_mafia = _data select 0;

switch(_shop) do
{


	case "mafia_1":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (__GETC__(life_mafialevel)<1): {"Dich kenne ich nicht!"};
			
			default
			{
				["Mafia Shop",
					[   
							
							["RH_tt33",nil,5000],
							["RH_8Rnd_762_tt33",nil,200],
							["Binocular",nil,150],
							["ItemGPS",nil,100],
							["ToolKit",nil,250],
							["FirstAidKit",nil,150]
						
						
					]
				];
			};
		};
	};



	case "mafia_2":
	{
		switch(true) do
		{
		
			case (__GETC__(life_mafialevel) < 1): {"Dich kenne ich nicht, verzieh dich!"};
			case (_mafia < 2): {"Du musst dir noch einen Namen machen Frischling!"};
			default
			{
					
				["Mafia Anwärter Shop",
					[
							
									
									["RH_vz61",nil,10000],
									["RH_fn57",nil,10000],
									["RH_tt33",nil,5000],
								
									
									
								
									
									
									
									["RH_20Rnd_57x28_FN",nil,200],
									["RH_20Rnd_32cal_vz61",nil,200],
									["RH_8Rnd_762_tt33",nil,200]
								
					]
				];
			};
		};
	
	
	
	};
		case "mafia_3":
	{
		switch(true) do
		{
		
			case (__GETC__(life_mafialevel) < 1): {"Dich kenne ich nicht, verzieh dich!"};
			case (_mafia < 3): {"Du musst dir noch einen Namen machen Frischling!"};
				default
				{
					
						["Mafia Soldaten Shop",
							[
							
									
									["arifle_mas_aks_74_sf",nil,50000],
									["RH_vz61",nil,10000],
									["RH_fn57",nil,10000],
									["RH_tt33",nil,5000],
								
									["optic_mas_ACO_grn_camo",nil,200],
									
								
									
									
									["RH_20Rnd_57x28_FN",nil,200],
									["30Rnd_mas_545x39_mag",nil,1000],
									["RH_20Rnd_32cal_vz61",nil,200],
									["RH_8Rnd_762_tt33",nil,200]
							]
						];
				};
		};
	
	
	
	};
			case "mafia_4":
	{
		switch(true) do
		{
		
			case (__GETC__(life_mafialevel) < 1): {"Dich kenne ich nicht, verzieh dich!"};
			case (_mafia < 4): {"Du musst dir noch einen Namen machen Frischling!"};
				default
				{
					
						["Mafia Capo Shop",
							[
						
									
								
									["arifle_mas_ak_74m_sf",nil,70000],
									["arifle_mas_aks_74_sf",nil,50000],
									["RH_vz61",nil,10000],
									["RH_fn57",nil,10000],
									["RH_tt33",nil,5000],
								
									["optic_mas_ACO_grn_camo",nil,200],
								
								
									["RH_20Rnd_57x28_FN",nil,200],
									
									
									
									["30Rnd_mas_545x39_mag",nil,1500],
									["RH_8Rnd_762_tt33",nil,200],
									["RH_20Rnd_32cal_vz61",nil,200]
							]
						];
				};
		};
	
	
	
	};
	
			case "mafia_5":
	{
		switch(true) do
		{
		
			case (__GETC__(life_mafialevel) < 1): {"Dich kenne ich nicht, verzieh dich!"};
			case (_mafia < 5): {"Du musst dir noch einen Namen machen Frischling!"};
				default
				{
					
				
					["Mafia Captain Shop",
						[
						
									
									
									
									
								
									["LMG_mas_rpk_F_a",nil,190000],
									["arifle_mas_ak_74m_sf",nil,70000],
									["arifle_mas_aks_74_sf",nil,50000],
									["RH_vz61",nil,10000],
									["RH_fn57",nil,10000],
									["RH_tt33",nil,5000],
								
									["optic_mas_ACO_grn_camo",nil,200],
									["optic_mas_PSO_day",nil,500],
								
									["RH_20Rnd_57x28_FN",nil,200],
									["10Rnd_mas_762x54_mag",nil,2500],
									["20Rnd_mas_762x51_Stanag",nil,500],
									["RH_7Rnd_50_AE",nil,1300],
									["100Rnd_mas_545x39_mag",nil,2000],
									["30Rnd_mas_545x39_mag",nil,1500],
									["RH_8Rnd_762_tt33",nil,200],
									["RH_20Rnd_32cal_vz61",nil,200]
						]
					];
				
				};
		};
	
	
	
	};
	
	case "mafia_6":
	{
		switch(true) do
		{
		
			case (playerSide != civilian): {"Verzieh dich!"};
			case (__GETC__(life_mafialevel) < 2): {"Vergiss es!"};
				default
				{
					
						["Mafia Unterboss Shop",
						[
						
							
								
									
									
									
									["srifle_mas_svd_l",nil,250000],
									["arifle_mas_fal_h",nil,210000],
									["srifle_mas_m91_l",nil,220000],
									["RH_deagles",nil,80000],
									["LMG_mas_rpk_F_a",nil,190000],
									["arifle_mas_ak_74m_sf",nil,70000],
									["arifle_mas_aks_74_sf",nil,50000],
									["RH_vz61",nil,10000],
									["RH_fn57",nil,10000],
									["RH_tt33",nil,5000],
								
									["optic_mas_ACO_grn_camo",nil,200],
									["optic_mas_PSO_day",nil,500],
								
									["RH_20Rnd_57x28_FN",nil,200],
									["10Rnd_mas_762x54_mag",nil,2500],
									["20Rnd_mas_762x51_Stanag",nil,500],
									["RH_7Rnd_50_AE",nil,1300],
									["100Rnd_mas_545x39_mag",nil,2000],
									["30Rnd_mas_545x39_mag",nil,1500],
									["RH_8Rnd_762_tt33",nil,200],
									["RH_20Rnd_32cal_vz61",nil,200]
							
						]
					];
				};
		};
	
	
	
	};
	
	case "mafia_7":
	{
		switch(true) do
		{
			
			case (playerSide != civilian): {"Verzieh dich!"};
			case (__GETC__(life_mafialevel) < 3): {"Vergiss es!"};
				default
				{
						
							["Mafia Boss Shop",
								[
								
									["RH_deagleg",nil,250000],
									
									["srifle_mas_svd_l",nil,250000],
									["arifle_mas_fal_h",nil,210000],
									["srifle_mas_m91_l",nil,220000],
									["RH_deagles",nil,80000],
									["LMG_mas_rpk_F_a",nil,190000],
									["arifle_mas_ak_74m_sf",nil,70000],
									["arifle_mas_aks_74_sf",nil,50000],
									["RH_vz61",nil,10000],
									["RH_fn57",nil,10000],
									["RH_tt33",nil,5000],
								
									["optic_mas_ACO_grn_camo",nil,200],
									["optic_mas_PSO_day",nil,500],
								
									["RH_20Rnd_57x28_FN",nil,200],
									["10Rnd_mas_762x54_mag",nil,2500],
									["20Rnd_mas_762x51_Stanag",nil,500],
									["RH_7Rnd_50_AE",nil,1300],
									["100Rnd_mas_545x39_mag",nil,2000],
									["30Rnd_mas_545x39_mag",nil,1500],
									["RH_8Rnd_762_tt33",nil,200],
									["RH_20Rnd_32cal_vz61",nil,200]
								]
							];
				};
		};
	
	
	
	};
	
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Finger weg, du bist kein Cop!"};
			
			default
			{
				["APD Shop",
					[	
						["DDOPP_X26","Stun Pistol",200],
						["DDOPP_1Rnd_X26",nil,50],
					
						
						
						["Rangefinder",nil,1000],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles_mas_h",nil,2000]
						
					
						
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
					
						["DDOPP_X26","Stun Pistol",200],
						["DDOPP_1Rnd_X26",nil,50],
						
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
						["DDOPP_X26","Stun Pistol",200],
						["DDOPP_1Rnd_X26",nil,50],
						
						["arifle_mas_hk416c",nil,30000],
						["arifle_mas_hk416_d",nil,30000],
						
						
						["arifle_mas_m4_d",nil,20000],
						["arifle_mas_m4c",nil,20000],
						
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
				["Altis Sergeant 2nd Shop",
					[   
						
						["DDOPP_X26","Stun Pistol",200],
						["DDOPP_1Rnd_X26",nil,50],
						
						["arifle_mas_mk16_l",nil,10000],
						["arifle_mas_g36c",nil,10000],
						
						["arifle_mas_m4_d",nil,2000],
						["arifle_mas_m4c",nil,2000],
						
						["arifle_mas_hk416c",nil,5000],
						["arifle_mas_hk416_d",nil,5000],
						
						["optic_mas_Arco_blk",nil,700],
						["optic_mas_Arco_camo",nil,700],
						["optic_MRCO",nil,1000],
						["optic_Hamr",nil,1000],
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
						["DDOPP_X26","Stun Pistol",200],
						["DDOPP_1Rnd_X26",nil,50],
						
						["LMG_mas_M249_F",nil,5000],
						
						["arifle_mas_mk16_l",nil,10000],
						["arifle_mas_g36c",nil,10000],
						
						["arifle_mas_m4_d",nil,2000],
						["arifle_mas_m4c",nil,2000],
						
						["arifle_mas_hk416c",nil,5000],
						["arifle_mas_hk416_d",nil,5000],
						
						["optic_mas_Arco_blk",nil,700],
						["optic_mas_Arco_camo",nil,700],
						
						["optic_MRCO",nil,1000],
						["optic_Hamr",nil,1000],
						["200Rnd_mas_556x45_Stanag",nil,500],
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
			case (__GETC__(life_coplevel) < 6): {"Dir fehlen noch ein paar Abzeichen!"};
			default
			{
				["APD Detective 2nd Shop",
					[   
						["DDOPP_X26","Stun Pistol",200],
						["DDOPP_1Rnd_X26",nil,50],
						
						["arifle_mas_mk17",nil,6000],
						
						
						["LMG_mas_M249_F",nil,5000],
						
						["arifle_mas_mk16_l",nil,10000],
						["arifle_mas_g36c",nil,10000],
						
						["arifle_mas_m4_d",nil,2000],
						["arifle_mas_m4c",nil,2000],
						
						["arifle_mas_hk416c",nil,5000],
						["arifle_mas_hk416_d",nil,5000],
						
						["optic_mas_Arco_blk",nil,700],
						
						
						["optic_MRCO",nil,1000],
						["optic_Hamr",nil,1000],
						["20Rnd_mas_762x51_Stanag",nil,300],
						["200Rnd_mas_556x45_Stanag",nil,500],
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
			case (__GETC__(life_coplevel) < 7): {"Dir fehlen noch ein paar Abzeichen!"};
			default
			{
				["APD Detective 1st Shop",
					[   
						["DDOPP_X26","Stun Pistol",200],
						["DDOPP_1Rnd_X26",nil,50],
						
						["arifle_mas_g3",nil,15000],
						
						["arifle_mas_mk17",nil,15000],
						
						
						["LMG_mas_M249_F",nil,15000],
						
						["arifle_mas_mk16_l",nil,6000],
						["arifle_mas_g36c",nil,6000],
						
						["arifle_mas_m4_d",nil,2000],
						["arifle_mas_m4c",nil,2000],
						
						["arifle_mas_hk416c",nil,3000],
						["arifle_mas_hk416_d",nil,3000],
						
						["optic_mas_Arco_blk",nil,700],
						
						
						["optic_MRCO",nil,1000],
						["optic_Hamr",nil,1000],
						["20Rnd_mas_762x51_Stanag",nil,300],
						["200Rnd_mas_556x45_Stanag",nil,500],
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
			case (__GETC__(life_coplevel) < 8): {"Dir fehlen noch ein paar Abzeichen!"};
			default
			{
				["APD Lieutenant Shop",
					[   
					
						["DDOPP_X26","Stun Pistol",200],
						["DDOPP_1Rnd_X26",nil,50],
						
						["srifle_mas_ebr",nil,25000],
						
					
						
						["arifle_mas_g3",nil,15000],
						
						["arifle_mas_mk17",nil,15000],
						
						
						["LMG_mas_M249_F",nil,15000],
						
						["arifle_mas_mk16_l",nil,6000],
						["arifle_mas_g36c",nil,6000],
						
						["arifle_mas_m4_d",nil,2000],
						["arifle_mas_m4c",nil,2000],
						
						["arifle_mas_hk416c",nil,3000],
						["arifle_mas_hk416_d",nil,3000],
						
						["optic_mas_Arco_blk",nil,700],
						
						
						["optic_MRCO",nil,1000],
						["optic_Hamr",nil,1000],
						["20Rnd_mas_762x51_Stanag",nil,500],
						["20Rnd_mas_762x51_Stanag",nil,300],
						["200Rnd_mas_556x45_Stanag",nil,500],
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
			case (!license_cop_swat): {"Du hast keine Marksmanausbildung!"};
			default
			{
				["Nur auf Anweisung!",
					[
						
						["Trixie_M14DMR_Clean_Black",nil,10000],
						["Trixie_M40A3_Clean",nil,10000],
						["Trixie_M24_Black_Clean",nil,10000],
						["Trixie_M110_NG_Black",nil,10000],
						
						["Rangefinder",nil,1000],
						
						["Trixie_Ghillie_Uniform_01",nil,1000],
						["Trixie_Ghillie_Uniform_02",nil,1000],
						["Trixie_Ghillie_Uniform_03",nil,1000],

						
						["Trixie_LSMARK4",nil,500],
						["Trixie_LSMARK4_Delta",nil,500],
						["Trixie_20x762_Mag",nil,500],
						["Trixie_5x762_Mag",nil,500]
						
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
					
						["arifle_mas_mp5",nil,50000],
						["30Rnd_mas_9x21_Stanag",nil,500],
						
						["hgun_mas_usp_F",nil,30000],
						["12Rnd_mas_45acp_Mag",nil,500]
						
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
					[   
					
					
						["hgun_mas_mp7_F",nil,80000],
						["40Rnd_mas_46x30_Mag",nil,500],
						
						
						["arifle_mas_mp5",nil,50000],
						["30Rnd_mas_9x21_Stanag",nil,500]
						
						
					
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
					
						["RH_ttracker_g",nil,150000],
						["RH_6Rnd_45ACP_Mag",nil,500],
						
						["hgun_mas_usp_F",nil,80000],
						["12Rnd_mas_45acp_Mag",nil,500],
						
						["arifle_mas_mp5",nil,50000],
						["30Rnd_mas_9x21_Stanag",nil,500]
						
						
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
					
						
						
						["Trixie_CZ750_Ghillie",nil,400000],
						["RH_bull",nil,50000],
						["arifle_mas_ak74_a",nil,120000],
						["arifle_mas_aks74u_c",nil,90000],
						["RH_mateba",nil,30000],
						
						["RH_6Rnd_454_Mag",nil,1500],
						["optic_mas_ACO_grn_camo",nil,500],
						["Trixie_10x762_Mag",nil,5000],
						["30Rnd_mas_545x39_mag",nil,5000],
						
						["5Rnd_mas_762x51_Stanag",nil,150],
						["RH_6Rnd_44_Mag",nil,500]
						
						
						
						
						
						
						
						
						
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
				
					[   
						
				
						["arifle_mas_ak74_a",nil,120000],
						["arifle_mas_aks74u_c",nil,90000],
						["RH_mateba",nil,30000],
						
						
						["optic_mas_ACO_grn_camo",nil,500],
						["30Rnd_mas_545x39_mag",nil,5000],
				
						["RH_6Rnd_44_Mag",nil,500]
						
						
						
						
						
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
						[   
					
							
						["arifle_mas_aks74u_c",nil,90000],
						["RH_mateba",nil,30000],
						
						
						["optic_mas_ACO_grn_camo",nil,500],
						["30Rnd_mas_545x39_mag",nil,5000],
						["RH_6Rnd_44_Mag",nil,500]
						
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
					["RH_m9",nil,15000],
					
					["RH_15Rnd_9x19_M9",nil,500],
					["RH_muzi",nil,20000],
					["RH_30Rnd_9x19_UZI",nil,500],
					["RH_m1911",nil,25000],
					["RH_7Rnd_45cal_m1911",nil,500],
					["RH_g17",nil,18000],
					["RH_17Rnd_9x19_g17",nil,500]
					
					
					]
				];
			};
		};
	};
	/*
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
	};*/
	/*case "gasstation":
	{
	
	["Tankstellenshop",
		[
		
		["ToolKit",nil,250],
		
		
		
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
