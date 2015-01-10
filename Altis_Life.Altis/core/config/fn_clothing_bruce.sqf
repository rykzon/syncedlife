/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		
		["rds_uniform_villager1","Karo Blau",250],
		["rds_uniform_villager2","Karo Gelb",250],
		["rds_uniform_villager3","Hemd Grün",250],
		["rds_uniform_villager4","Hemd Grau",250],
		["rds_uniform_citizen1","Jacke Braun",500],
		["rds_uniform_citizen2","Jacke Hellbraun",500],
		["rds_uniform_citizen3","Jacke Orangebraun",500],
		["rds_uniform_citizen4","Jacke Dunkelbraun",500],
		["U_C_HunterBody_grn","Jäger Jacke",500],
		["U_C_Journalist","Journalist",1000],
		["rds_uniform_priest","Priester Robe",2000],
		["rds_uniform_doctor","Doktor Kittel",1000],
		["rds_uniform_schoolteacher","Lehrer Kittel",1000],
		["U_C_Poloshirt_blue","Poloshirt Blue",250],
		["U_C_Poloshirt_burgundy","Poloshirt Burgundy",275],
		["U_C_Poloshirt_redwhite","Poloshirt Red/White",150],
		["U_C_Poloshirt_salmon","Poloshirt Salmon",175],
		["U_C_Poloshirt_stripped","Poloshirt stripped",125],
		["U_C_Poloshirt_tricolour","Poloshirt Tricolor",350],
		["U_C_Poor_2","Rag tagged clothes",250],
		["U_IG_Guerilla2_2","Green stripped shirt & Pants",650],
		["U_IG_Guerilla3_1","Brown Jacket & Pants",735],
		["U_IG_Guerilla2_3","The Outback Rangler",1200],
		["U_OrestesBody","Surfing On Land",1100]
		
		
		];
	};
	
	//Hats
	case 1:
	{
		[	
			["rds_Woodlander_cap1","Ushanka",100],
			["rds_Woodlander_cap2","Ushanka",100],
			["rds_Woodlander_cap3","Ushanka",100],
			["rds_Woodlander_cap4","Ushanka",100],
			["rds_worker_cap1","Mütze",200],
			["rds_worker_cap2","Mütze",200],
			["rds_worker_cap3","Mütze",200],
			["rds_worker_cap4","Mütze",200],
			["H_Bandanna_camo","Camo Bandanna",250],
			["H_Bandanna_surfer","Surfer Bandanna",250],
			["H_Bandanna_gry","Graues Bandanna",250],
			["H_Bandanna_cbr",nil,250],
			["H_Bandanna_surfer",nil,250],
			["H_Bandanna_khk","Khaki Bandanna",250],
			["H_Bandanna_sgg","Sage Bandanna",250],
			["H_StrawHat","Strohhut",225],
			["H_StrawHat_Dark","Dunkler Strohhut",225],
			["H_BandMask_blk","Hat & Bandanna",300],
			["H_Booniehat_tan",nil,425],
			["H_Hat_blue",nil,310],
			["H_Hat_brown",nil,276],
			["H_Hat_checker",nil,340],
			["H_Hat_grey",nil,280],
			["H_Hat_tan",nil,265],
			["H_Cap_blu",nil,150],
			["H_Cap_grn",nil,150],
			["H_Cap_grn_BI",nil,150],
			["H_Cap_oli",nil,150],
			["H_Cap_red",nil,150],
			["H_Cap_tan",nil,150]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
		
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,250],
			["B_Kitbag_mcamo",nil,450],
			["B_TacticalPack_oli",nil,350],
			["B_FieldPack_ocamo",nil,300],
			["B_Bergen_sgg",nil,450],
			["B_Kitbag_cbr",nil,450],
			//["FLAY_HangGlider_Bag",nil,10000],
			["B_Carryall_oli",nil,500],
			["B_Carryall_khk",nil,500]
		];
	};
};