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
				["Mafia Anwärter Shop",
					[   
							
							
							["Binocular",nil,150],
							["ItemGPS",nil,100],
							["ToolKit",nil,250],
							["FirstAidKit",nil,150],
							["NVGoggles_mas_h",nil,2000]
						
					]
				];
			};
		};
	};



	case "mafia_2":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (__GETC__(life_mafialevel) < 2): {"Dich kenne ich nicht, verzieh dich!"};
			//case (_mafia < 2): {"Du musst dir noch einen Namen machen Frischling!"};
			default
			{
					
				["Mafia Mobster Shop",
					[
							
									
									
							//Rang2
							["arifle_mas_g36c",nil,50000],
							["arifle_mas_mk16",nil,50000],
							["RH_p226s",nil,15000],
								
							
							//Rang2
							["optic_Aco",nil,1500],
							["optic_Hamr",nil,1500],
							["optic_Arco",nil,1500],
							["30Rnd_mas_556x45_Stanag",nil,2000],
							["RH_15Rnd_9x19_SIG",nil,500]

							
								
					]
				];
			};
		};
	
	
	
	};
		case "mafia_3":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (__GETC__(life_mafialevel) < 3): {"Dich kenne ich nicht, verzieh dich!"};
			//case (_mafia < 3): {"Du musst dir noch einen Namen machen Frischling!"};
				default
				{
					
						["Mafia Soldat Shop",
							[
							
							//Rang3
							["arifle_mas_mk16_l",nil,85000],
							["arifle_mas_ak_74m_sf",nil,55000],
							//Rang2
							["arifle_mas_g36c",nil,50000],
							["arifle_mas_mk16",nil,50000],
							["RH_p226s",nil,15000],
							["RH_vz61",nil,15000],
							["RH_fn57",nil,15000],
							
							
							//Rang3
							["optic_mas_zeiss",nil,1500],

							//Rang2
							["optic_Aco",nil,1500],
							["optic_Hamr",nil,1500],
							["optic_Arco",nil,1500],
							["30Rnd_mas_556x45_Stanag",nil,2000],
							["30Rnd_mas_545x39_mag",nil,2000],							
							["RH_15Rnd_9x19_SIG",nil,500]
							["RH_20Rnd_57x28_FN",nil,500],
							["RH_20Rnd_32cal_vz61",nil,500]
							
							]
						];
				};
		};
	
	
	
	};
	
	
	
	
			case "mafia_4":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (__GETC__(life_mafialevel) < 4): {"Dich kenne ich nicht, verzieh dich!"};
			//case (_mafia < 5): {"Du musst dir noch einen Namen machen Frischling!"};
				default
				{
					
				
					["Mafia Garde Shop",
						[
						
									
									
							//Rang4		
							["Trixie_CZ550_Rail",nil,100000],
							["LMG_mas_M249_F",nil,80000],
							["arifle_mas_hk416_v",nil,80000],
							["RH_deaglem",nil,30000],
							
							//Rang3
							["arifle_mas_mk16_l",nil,85000],
							["arifle_mas_ak_74m_sf",nil,55000],
							//Rang2
							["arifle_mas_g36c",nil,50000],
							["arifle_mas_mk16",nil,50000],
							["RH_p226s",nil,15000],
							["RH_vz61",nil,15000],
							["RH_fn57",nil,15000],
							
							
							//Rang3
							["optic_mas_zeiss",nil,1500],

							//Rang2
							["optic_Aco",nil,1500],
							["optic_Hamr",nil,1500],
							["optic_Arco",nil,1500],
							["200Rnd_mas_556x45_Stanag",nil,2000],
							["Trixie_CZ550_Mag",nil,2000],
							["RH_7Rnd_50_AE",nil,2000],
							["30Rnd_mas_556x45_Stanag",nil,2000],
							["30Rnd_mas_545x39_mag",nil,2000],							
							["RH_15Rnd_9x19_SIG",nil,500],
							["RH_20Rnd_57x28_FN",nil,500],
							["RH_20Rnd_32cal_vz61",nil,500]
		
							
						]
					];
				
				};
		};
	
	
	
	};
	
		case "mafia_5":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (__GETC__(life_mafialevel) < 5): {"Dich kenne ich nicht, verzieh dich!"};
			//case (_mafia < 5): {"Du musst dir noch einen Namen machen Frischling!"};
				default
				{
					
				
					["Mafia Capo Shop",
						[
						
							

							//Rang5
							["arifle_mas_akm",nil,150000],
							["srifle_mas_m110",nil,180000],
									
							//Rang4		
							["Trixie_CZ550_Rail",nil,100000],
							["LMG_mas_M249_F",nil,80000],
							["arifle_mas_hk416_v",nil,80000],
							["RH_deaglem",nil,30000],
							
							//Rang3
							["arifle_mas_mk16_l",nil,85000],
							["arifle_mas_ak_74m_sf",nil,55000],
							//Rang2
							["arifle_mas_g36c",nil,50000],
							["arifle_mas_mk16",nil,50000],
							["RH_p226s",nil,15000],
							["RH_vz61",nil,15000],
							["RH_fn57",nil,15000],
							
							
							//Rang3
							["optic_mas_zeiss",nil,1500],

							//Rang2
							["optic_Aco",nil,1500],
							["optic_Hamr",nil,1500],
							["optic_Arco",nil,1500],
							["20Rnd_mas_762x51_Stanag",nil,2000],
							["200Rnd_mas_556x45_Stanag",nil,2000],
							["Trixie_CZ550_Mag",nil,2000],
							["RH_7Rnd_50_AE",nil,2000],
							["30Rnd_mas_556x45_Stanag",nil,2000],
							["30Rnd_mas_545x39_mag",nil,2000],							
							["RH_15Rnd_9x19_SIG",nil,500],
							["RH_20Rnd_57x28_FN",nil,500],
							["RH_20Rnd_32cal_vz61",nil,500]
							
						]
					];
				
				};
		};
	
	
	
	};
	
case "mafia_6":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (__GETC__(life_mafialevel) < 6): {"Dich kenne ich nicht, verzieh dich!"};
			//case (_mafia < 5): {"Du musst dir noch einen Namen machen Frischling!"};
				default
				{
					
				
					["Mafia Pate Shop",
						[
						
							

							//Rang5
							["arifle_mas_akm",nil,150000],
							["srifle_mas_m110",nil,180000],
									
							//Rang4		
							["Trixie_CZ550_Rail",nil,100000],
							["LMG_mas_M249_F",nil,80000],
							["arifle_mas_hk416_v",nil,80000],
							["RH_deaglem",nil,30000],
							
							//Rang3
							["arifle_mas_mk16_l",nil,85000],
							["arifle_mas_ak_74m_sf",nil,55000],
							//Rang2
							["arifle_mas_g36c",nil,50000],
							["arifle_mas_mk16",nil,50000],
							["RH_usp",nil,15000],
							["RH_p226s",nil,15000],
							["RH_vz61",nil,15000],
							["RH_fn57",nil,15000],
							
							
							//Rang3
							["optic_mas_zeiss",nil,1500],

							//Rang2
							["optic_Aco",nil,1500],
							["optic_Hamr",nil,1500],
							["optic_Arco",nil,1500],
							["20Rnd_mas_762x51_Stanag",nil,2000],
							["200Rnd_mas_556x45_Stanag",nil,2000],
							["Trixie_CZ550_Mag",nil,2000],
							["RH_7Rnd_50_AE",nil,2000],
							["30Rnd_mas_556x45_Stanag",nil,2000],
							["30Rnd_mas_545x39_mag",nil,2000],							
							["RH_15Rnd_9x19_SIG",nil,500],
							["RH_20Rnd_57x28_FN",nil,500],
							["RH_12Rnd_45cal_usp",nil,500],
							["RH_20Rnd_32cal_vz61",nil,500]
							
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
						
						["hgun_P07_F",nil,1000],
						["16Rnd_9x21_Mag",nil,100],
						
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
						["Medikit",nil,250],
						["NVGoggles",nil,500],
						["H_MilCap_gry",nil,100],
						["B_Bergen_blk",nil,1000],
						["V_TacVestIR_blk",nil,500]
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
					
						["RH_g19",nil,1000],
						["hlc_smg_mp5n",nil,2000],
						
						["arifle_mas_m4",nil,3000],
						["arifle_mas_m4c",nil,3000],
						//["hlc_rifle_honeybase",nil,2500],
						
						
						["optic_Aco",nil,500],
						["optic_Arco",nil,700],
						["optic_MRCO",nil,1000],
						["optic_Hamr",nil,1000],
						["Trixie_M68CCO",nil,200],
						
						["30Rnd_mas_556x45_Stanag",nil,200],
						["RH_17Rnd_9x19_g17",nil,100],
						["hlc_30Rnd_9x19_GD_MP5",nil,500]
						
						
						
						
						
						
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
					
					    ["RH_g19",nil,1000],
						["hlc_smg_mp5n",nil,2000],
						//["hlc_rifle_honeybase",nil,2500],
						["arifle_mas_m4",nil,3000],
						["arifle_mas_m4c",nil,3000],
						
						
						["hlc_rifle_Colt727",nil,3500],
						["hlc_rifle_cqbr",nil,3000],
						
						["optic_mas_acog",nil,700],
						["optic_Aco",nil,500],
						["optic_Arco",nil,700],
						["optic_MRCO",nil,1000],
						["optic_Hamr",nil,1000],
						["Trixie_M68CCO",nil,200],
						
						["30Rnd_mas_556x45_Stanag",nil,200],
						["hlc_30Rnd_9x19_GD_MP5",nil,500],
						["RH_17Rnd_9x19_g17",nil,100],
						["hlc_30rnd_556x45_EPR",nil,300]
						
						
						
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
						["RH_g19",nil,1000],
						["hlc_smg_mp5n",nil,2000],
						["hlc_rifle_bcmjack",nil,3000],
						["hlc_rifle_cqbr",nil,3000],
						
						
						["optic_mas_acog",nil,700],
						["optic_Aco",nil,500],
						["optic_Arco",nil,700],
						["optic_MRCO",nil,1000],
						["optic_Hamr",nil,1000],
						["Trixie_M68CCO",nil,200],
						["HandGrenade_Stone","Flashbang",1700],
						
						["30Rnd_mas_556x45_Stanag",nil,200],
						["RH_17Rnd_9x19_g17",nil,100],
						["hlc_30rnd_556x45_EPR",nil,300],
						["hlc_30Rnd_9x19_GD_MP5",nil,500]
						
					
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
					
					
					    ["RH_g19",nil,1000],
						["hlc_smg_mp5n",nil,2000],
						["hlc_rifle_bcmjack",nil,3000],
						["hlc_rifle_cqbr",nil,3000],
						
						["arifle_mas_hk416",nil,10000],
						["arifle_mas_hk416c",nil,10000],
						
					
						
						["hlc_rifle_SAMR",nil,25000],
						
						["optic_mas_acog",nil,700],
						["optic_Arco",nil,700],
						["optic_MRCO",nil,1000],
						["optic_Hamr",nil,1000],
						["Trixie_M68CCO",nil,200],
						["HandGrenade_Stone","Flashbang",1700],
						
						["30Rnd_mas_556x45_Stanag",nil,200],
						["RH_17Rnd_9x19_g17",nil,100],
						["hlc_30rnd_556x45_EPR",nil,300],
					
						["hlc_30Rnd_9x19_GD_MP5",nil,500]
						
						
						
						
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
					
					    ["RH_g19",nil,1000],
						["RH_usp",nil,2000],
						["hlc_smg_mp5n",nil,2000],
						["hlc_rifle_bcmjack",nil,3000],
						["hlc_rifle_cqbr",nil,3000],
						
					
						
						
						["hlc_rifle_SAMR",nil,25000],
						["R3F_HK417M",nil,20000],
						
						
						["optic_mas_acog",nil,700],
						["optic_Arco",nil,700],
						["optic_MRCO",nil,1000],
						["optic_Hamr",nil,1000],
						["Trixie_M68CCO",nil,200],
						["HandGrenade_Stone","Flashbang",1700],
						
						["RH_12Rnd_45cal_usp",nil,200],
						["30Rnd_mas_556x45_Stanag",nil,200],
						["RH_17Rnd_9x19_g17",nil,100],
						["hlc_30rnd_556x45_EPR",nil,300],
						
						["hlc_30Rnd_9x19_GD_MP5",nil,500],
						["R3F_20Rnd_762x51_HK417",nil,2000]
						
						
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
						["RH_usp",nil,2000],
						["RH_g19",nil,1000],
						["hlc_smg_mp5n",nil,2000],
						["hlc_rifle_bcmjack",nil,3000],
						["hlc_rifle_cqbr",nil,3000],
						
					
						
					
						
						["R3F_HK417M",nil,20000],
						
						["hlc_rifle_SAMR",nil,25000],
						
						["R3F_Minimi_762_HG",nil,30000],
						
						["optic_Arco",nil,700],
						["optic_mas_acog",nil,700],
						["optic_MRCO",nil,1000],
						["optic_Hamr",nil,1000],
						["Trixie_M68CCO",nil,200],
						["HandGrenade_Stone","Flashbang",1700],
						
						["RH_12Rnd_45cal_usp",nil,200],
						["30Rnd_mas_556x45_Stanag",nil,200],
						["RH_17Rnd_9x19_g17",nil,100],
						["hlc_30rnd_556x45_EPR",nil,300],
						
						["R3F_20Rnd_762x51_HK417",nil,2000],
						["hlc_30Rnd_9x19_GD_MP5",nil,500],
						["R3F_100Rnd_762x51_Minimi",nil,3000]
					
						
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
					
					    ["RH_mk2",nil,3000],
						["RH_sw659",nil,2500],
					    ["RH_usp",nil,2000],
					    ["RH_g19",nil,1000],
						["hlc_smg_mp5n",nil,2000],
						["arifle_mas_g3",nil,20000],
						["LMG_mas_Mk200_F",nil,20000], 
						
						["hlc_rifle_bcmjack",nil,3000],
						["hlc_rifle_cqbr",nil,3000],
						
						
						["R3F_Famas_F1_HG",nil,15000],
						
						["R3F_HK417M",nil,20000],
						
						["hlc_rifle_SAMR",nil,25000],
						
						["R3F_Minimi_762_HG",nil,30000],
						
						["optic_mas_acog",nil,700],
						["optic_Arco",nil,700],
						["optic_MRCO",nil,1000],
						["optic_Hamr",nil,1000],
						["Trixie_M68CCO",nil,200],
						["HandGrenade_Stone","Flashbang",1700],
						
						
						["20Rnd_mas_762x51_Stanag",nil,500],
						["RH_10Rnd_22LR_mk2",nil,200],
						["RH_14Rnd_9x19_sw",nil,200],
						["RH_12Rnd_45cal_usp",nil,200],
						["RH_17Rnd_9x19_g17",nil,100],
						["hlc_30rnd_556x45_EPR",nil,300],
					
						["R3F_20Rnd_762x51_HK417",nil,2000],
						["hlc_30Rnd_9x19_GD_MP5",nil,500],
						["R3F_100Rnd_762x51_Minimi",nil,3000],
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
			case (!license_cop_swat): {"Du hast keine SWAT Ausbildung!"};
			default
			{
				["Nur auf Anweisung!",
					[
						
						["Trixie_M14DMR_Clean_Black",nil,10000],
						["Trixie_M40A3_Clean",nil,10000],
						["Trixie_M24_Black_Clean",nil,10000],
						
						["hlc_rifle_RU556",nil,10000],
						["hlc_muzzle_556NATO_KAC",nil,500],
						
						["Rangefinder",nil,1000],
						
						["Trixie_Ghillie_Uniform_01",nil,1000],
						["Trixie_Ghillie_Uniform_02",nil,1000],
						["Trixie_Ghillie_Uniform_03",nil,1000],
						["B_UAV_01_backpack_F",nil,1000],
						["B_UavTerminal",nil,500],
						["h_booniehat_mcamo",nil,500],
						["G_Balaclava_blk",nil,500],
						["H_CrewHelmetHeli_B",nil,500],
						
						["Trixie_LSMARK4",nil,500],
						["Trixie_LSMARK4_Delta",nil,500],
						["Trixie_20x762_Mag",nil,500],
						["hlc_30rnd_556x45_EPR",nil,500],
						["Trixie_5x762_Mag",nil,500],
						
						["RH_usp",nil,2000],
						["RH_g19",nil,1000],
						["hlc_smg_mp5n",nil,2000],
						["hlc_rifle_bcmjack",nil,3000],
						["hlc_rifle_cqbr",nil,3000],
						
					
						
					
						
						["R3F_HK417M",nil,20000],
						
						["hlc_rifle_SAMR",nil,25000],
						
						["R3F_Minimi_762_HG",nil,30000],
						
						["optic_Arco",nil,700],
						["optic_mas_acog",nil,700],
						["optic_MRCO",nil,1000],
						["optic_Hamr",nil,1000],
						["Trixie_M68CCO",nil,200],
						["HandGrenade_Stone","Flashbang",1700],
						
						["RH_12Rnd_45cal_usp",nil,200],
						["30Rnd_mas_556x45_Stanag",nil,200],
						["RH_17Rnd_9x19_g17",nil,100],
						["hlc_30rnd_556x45_EPR",nil,300],
						
						["R3F_20Rnd_762x51_HK417",nil,2000],
						["hlc_30Rnd_9x19_GD_MP5",nil,500],
						["R3F_100Rnd_762x51_Minimi",nil,3000]
						
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
			case (_karma < 500): {"Dein Karma ist zu niedrig!"};
			default
			{
				["Karma Stufe 1",
					 
					[
						
						
						
						
						
						
						//Rang1
						["RH_g18",nil,25000],
						["RH_usp",nil,15000],
						
						
						//Rang1
						["RH_33Rnd_9x19_g18",nil,200],
						["RH_12Rnd_45cal_usp",nil,200]
						
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
			case (_karma < 1500): {"Dein Karma ist zu niedrig!"};
			default
			{
				["Karma Stufe 2",
					[   
					
						
						
						
						//Rang2
						["hlc_smg_mp5a4",nil,90000],
						
						
						
						
						//Rang1
						["RH_g18",nil,25000],
						["RH_usp",nil,15000],
						
						
						
						
						
						
					
						//Rang2
						["optic_Aco",nil,500],
						["hlc_30Rnd_9x19_B_MP5",nil,500],
						
						//Rang1
						["RH_33Rnd_9x19_g18",nil,200],
						["RH_12Rnd_45cal_usp",nil,200]
						
					
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
			case (_karma < 3000): {"Dein Karma ist zu niedrig!"};
			default
			{
				["Bürger 3",
					[   
					
					
						
						//Rang3
						["RH_deaglem",nil,40000],
					
						//Rang2
						["hlc_smg_mp5a4",nil,90000],
						
						
						
						//Rang1
						["RH_g18",nil,25000],
						["RH_usp",nil,15000],
						
						
						
						
						//Rang3
						["Trixie_M68CCO",nil,4000],
						["RH_7Rnd_50_AE",nil,500],
						["Trixie_Enfield_Mag",nil,1000],
					
						//Rang2
						["optic_Aco",nil,5000],
						["hlc_30Rnd_9x19_B_MP5",nil,500],
						//Rang1
						["RH_33Rnd_9x19_g18",nil,200],
						["RH_12Rnd_45cal_usp",nil,200]
						
					]
				];
			};
		};
	};
	
				case "posKarma4":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (_karma < 6000): {"Dein Karma ist zu niedrig!"};
			default
			{
				["Bürger 4",
					[   
					
						["RH_ttracker_g",nil,150000],
						//Rang4
						
						//Rang3
						["RH_deaglem",nil,40000],
						//Rang2
						//Rang2
						["hlc_smg_mp5a4",nil,90000],
						
						
						
						//Rang1
						["RH_g18",nil,25000],
						["RH_usp",nil,15000],
						
						
						
						//Rang4
						["optic_Arco",nil,10000],
						["optic_MRCO",nil,10000],
						["optic_Hamr",nil,10000],
						["Trixie_M68CCO",nil,4000],
						
						//Rang3
						["RH_7Rnd_50_AE",nil,500],
						
						["RH_6Rnd_45ACP_Mag",nil,500],
						//Rang2
						["optic_Aco",nil,5000],
						["hlc_30Rnd_9x19_B_MP5",nil,500],
						//Rang1
						["RH_33Rnd_9x19_g18",nil,200],
						["RH_12Rnd_45cal_usp",nil,200]
					]
				];
			};
		};
	};
	
				case "posKarma5":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (_karma < 10000): {"Dein Karma ist zu niedrig!"};
			default
			{
				["Bürger 5",
					[   
						//Rang5
						
						
						//Rang4
						["arifle_mas_hk416",nil,160000],
						["arifle_mas_hk416_v",nil,160000],
						["arifle_mas_hk416_d",nil,160000],
						["30Rnd_mas_556x45_Stanag",nil,1000],
						//Rang3
						["RH_deaglem",nil,40000],
						
						//Rang2
						["hlc_smg_mp5a4",nil,90000],
						
						//Rang1
						["RH_g18",nil,25000],
						["RH_usp",nil,15000],
						
						//Rang5
						["optic_Arco",nil,10000],
						["optic_MRCO",nil,10000],
						["optic_Hamr",nil,10000],
						["optic_LRPS",nil,50000],
						["Trixie_M68CCO",nil,4000],
						
						
						//Rang4
						["30Rnd_mas_556x45_Stanag",nil,1000],
						//Rang3
						["RH_7Rnd_50_AE",nil,500],
						
					
						//Rang2
						["optic_Aco",nil,5000],
						["hlc_30Rnd_9x19_B_MP5",nil,500],
						//Rang1
						["RH_33Rnd_9x19_g18",nil,200],
						["RH_12Rnd_45cal_usp",nil,200]
						
						
					]
				];
			};
		};
	};
	
			case "negKarma5":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (_karma > -10000): {"Dein Karma ist zu hoch!"};
			default
			{
				["Bandit 5",
					[   
					
						
						//Rang5
						
						//Rang4
						["arifle_mas_mk16",nil,150000],
						["arifle_mas_mk16_l",nil,175000],
						["LMG_mas_rpk_F",nil,150000],
						["LMG_mas_M249_F",nil,170000],
						["arifle_mas_fal",nil,200000],
						//Rang3
						["Trixie_CZ550_Rail",nil,200000],
						["srifle_mas_m91",nil,220000],
						
						["R3F_Famas_F1_DES",nil,120000],
						["R3F_Famas_G2_HG_DES",nil,140000],
						
						//RAng2
						["arifle_mas_ak74",nil,130000],
						["arifle_mas_aks_74_sf",nil,110000],
						["arifle_mas_ak_74m_sf",nil,110000],
						//Rang1
						["arifle_mas_aks74u_c",nil,90000],
						
						["RH_mateba",nil,30000],
						["RH_deagleg",nil,50000],
						//Rang1
						["optic_mas_ACO_grn_camo",nil,5000],
						//Rang3
						
						["optic_mas_PSO_c",nil,40000],
						//Rang5
						["optic_Arco",nil,20000],
						["optic_MRCO",nil,20000],
						["optic_Hamr",nil,20000],
						["optic_LRPS",nil,50000],
						["Rangefinder",nil,50000],
						
						["200Rnd_mas_556x45_Stanag",nil,1500],
						["20Rnd_mas_762x51_Stanag",nil,1000],
						["RH_7Rnd_50_AE",nil,500],
						["R3F_30Rnd_556x45_FAMAS",nil,500],
						["R3F_25Rnd_556x45_FAMAS",nil,500],
						["RH_6Rnd_44_Mag",nil,500],
						["10Rnd_mas_762x54_mag",nil,4500],
						["30Rnd_mas_556x45_Stanag",nil,1000],
						["Trixie_CZ550_Mag",nil,5000],
						["100Rnd_mas_545x39_mag",nil,2000],
						["30Rnd_mas_545x39_mag",nil,800]
						
						
						
						
						
						
						
						
					]
				];
			};
		};
	};
	
	
			case "negKarma4":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (_karma > -6000): {"Dein Karma ist zu hoch!"};
			default
			{
				["Bandit 4",
				
					[   
						["arifle_mas_mk16",nil,150000],
						["arifle_mas_mk16_l",nil,175000],
						["LMG_mas_rpk_F",nil,150000],
						["LMG_mas_M249_F",nil,170000],
						//Rang3
						["Trixie_CZ550_Rail",nil,200000],
						
						
						
						//RAng2
						["R3F_Famas_F1_DES",nil,120000],
						["R3F_Famas_G2_HG_DES",nil,140000],
						["srifle_mas_m91",nil,250000],
						
						["arifle_mas_ak74",nil,130000],
						["arifle_mas_aks_74_sf",nil,110000],
						["arifle_mas_ak_74m_sf",nil,110000],
						//Rang1
						["arifle_mas_aks74u_c",nil,90000],
						["RH_mateba",nil,30000],
						//Rang1
						["optic_mas_ACO_grn_camo",nil,5000],
						//Rang3
						["optic_LRPS",nil,50000],
						
						["optic_mas_PSO_c",nil,40000],
						["optic_Arco",nil,20000],
						["optic_MRCO",nil,20000],
						["optic_Hamr",nil,20000],
						["Rangefinder",nil,50000],
						//Rang5
						["200Rnd_mas_556x45_Stanag",nil,1500],
						["R3F_30Rnd_556x45_FAMAS",nil,500],
						["30Rnd_mas_556x45_Stanag",nil,1000],
						["R3F_25Rnd_556x45_FAMAS",nil,500],
						["RH_6Rnd_44_Mag",nil,500],
						["10Rnd_mas_762x54_mag",nil,4500],
						["100Rnd_mas_545x39_mag",nil,2000],
						["Trixie_CZ550_Mag",nil,5000],
						["30Rnd_mas_545x39_mag",nil,800]
						
						
						
						
						
						
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
			case (_karma > -3000): {"Dein Karma ist zu hoch!"};
			default
			{
						["Bandit 3",
						[   
						
						//Rang3
						["Trixie_CZ550_Rail",nil,200000],
						["srifle_mas_m91",nil,220000],
						
						//RAng2
						["arifle_mas_ak74",nil,130000],
						["arifle_mas_aks_74_sf",nil,110000],
						["arifle_mas_ak_74m_sf",nil,110000],
						//Rang1
						["R3F_Famas_F1_DES",nil,120000],
						["R3F_Famas_G2_HG_DES",nil,140000],
						["arifle_mas_aks74u_c",nil,90000],
						
						["RH_mateba",nil,30000],
						
						//Rang1
						["optic_LRPS",nil,50000],
						
						["optic_mas_PSO_c",nil,40000],
						["optic_Arco",nil,20000],
						["optic_MRCO",nil,20000],
						["optic_Hamr",nil,20000],
						["optic_mas_ACO_grn_camo",nil,5000],
						["Rangefinder",nil,50000],
						
						["R3F_30Rnd_556x45_FAMAS",nil,500],
						["R3F_25Rnd_556x45_FAMAS",nil,500],
						["RH_6Rnd_44_Mag",nil,500],
						["10Rnd_mas_762x54_mag",nil,4500],
						["100Rnd_mas_545x39_mag",nil,2000],
						["Trixie_CZ550_Mag",nil,5000],
						["30Rnd_mas_545x39_mag",nil,800]
						
						
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
			case (_karma > -1500): {"Dein Karma ist zu hoch!"};
			default
			{
						["Bandit 2",
						[   
						
						
						//RAng2
						["RH_tec9",nil,30000],
						["arifle_mas_ak74",nil,130000],
						["arifle_mas_aks_74_sf",nil,110000],
						["arifle_mas_ak_74m_sf",nil,110000],
						//Rang1
						["arifle_mas_aks74u_c",nil,90000],
						
						["RH_mateba",nil,30000],
						
						//Rang1
						["optic_mas_ACO_grn_camo",nil,5000],
						
						
						
						
						["RH_32Rnd_9x19_tec",nil,400],
						["RH_6Rnd_44_Mag",nil,500],
						
						["100Rnd_mas_545x39_mag",nil,2000],
						["30Rnd_mas_545x39_mag",nil,800]
						
						
						
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
			case (_karma > -500): {"Dein Karma ist zu hoch!"};
			default
			{
						["Bandit 1",
						[   
						
						
						
						//Rang1
						["RH_tec9",nil,30000],
						["arifle_mas_aks74u_c",nil,90000],
						
						["RH_mateba",nil,30000],
						
						//Rang1
						["optic_mas_ACO_grn_camo",nil,5000],
						
						
						
						
						
						["RH_6Rnd_44_Mag",nil,500],
						["RH_32Rnd_9x19_tec",nil,400],
						["100Rnd_mas_545x39_mag",nil,2000],
						["30Rnd_mas_545x39_mag",nil,800]
						
						
						
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
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["RH_tec9",nil,45000],
						
						["arifle_mas_l119",nil,170000],
						["optic_Arco",nil,30000],
						["optic_MRCO",nil,30000],
						["optic_Hamr",nil,30000],
						["optic_mas_ACO_grn_camo",nil,10000],
						
						["30Rnd_556x45_Stanag",nil,500],
						["RH_32Rnd_9x19_tec",nil,400]
					]
				];
			};
		};
	};
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
				["arifle_SDAR_F",nil,5000],
				["20Rnd_556x45_UW_mag",nil,1000],
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