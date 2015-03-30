/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the medic out with the default gear.
*/
RemoveAllWeapons player;
{player removeMagazine _x;} foreach (magazines player);
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player;
if(hmd player != "") then {
	player unlinkItem (hmd player);
};
{
	player unassignItem _x;
	player removeItem _x;
} foreach (assignedItems player);

player addUniform "U_Rangemaster";
player addHeadgear "H_MilCap_blue";
player addVest "V_Rangemaster_belt";
player addBackpack "G_FieldPack_Medic";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemGPS";
player assignItem "ItemGPS";
mybackpack = unitBackpack player;
mybackpack addItemCargoGlobal ["ToolKit",1];
mybackpack addItemCargoGlobal ["G_Aviator",1];
mybackpack addItemCargoGlobal ["NVGoggles",1];

[[player,0,"textures\medic_uniform.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;

*[] call life_fnc_equipGear;
[] call life_fnc_saveGear;