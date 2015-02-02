/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "oilu": {6};
	case "oilp": {5};
	case "heroinu": {6};
	case "heroinp": {4};
	case "cannabis": {4};
	case "marijuana": {3};
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {6};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "bluesyn": {3};
	case "pickaxe": {2};
	case "copperore": {4};
	case "ironore": {5};
	case "coalu": {2};
	case "coalp": {1};
	case "steel": {4};
	case "plastic": {4};
	case "copper_r": {3};
	case "iron_r": {4};
	case "sand": {3};
	case "salt": {3};
	case "salt_r": {1};
	case "glass": {1};
	case "diamond": {7};
	case "diamondc": {5};
	case "cocaine": {6};
	case "cocainep": {4};
	case "spikeStrip": {8};
	case "rock": {6};
	case "cement": {5};
	case "goldbar": {10};
	case "blastingcharge": {8};
	case "boltcutter": {3};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
	case "zipties": {1};
	default {1};
};
