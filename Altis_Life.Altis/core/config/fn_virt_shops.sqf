/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{


	case "market": {["Synced Markt",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","storagesmall","storagebig"]]};
	case "tankstelle": {["Tankstelle",["water","apple","redgull","tbacon","fuelF"]]};
	case "bandit": {["Banditen Markt",["water","apple","redgull","tbacon","fuelF","lockpick","blastingcharge","boltcutter","zipties"]]};
	case "rebel": {["Mafia Markt",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge"]]};
	case "gang": {["Gang Markt", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drogen Dealer",["cocainep","heroinp","marijuana","bluesyn","turtle"]]};
	case "mafiaDrogen": {["Mafia Dealer",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Öl Händler",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Fischmarkt",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Glass Händler",["glass"]]};
	case "iron": {["Metallhändler",["iron_r","copper_r","steel"]]};
	case "diamond": {["Diamanten Händler",["diamond","diamondc"]]};
	case "salt": {["Salz Händöer",["salt_r"]]};
	case "cop": {["Donut Händler",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit"]]};
	case "mafia": {["Pasta Händler",["water","rabbit","apple","redgull","fuelF","zipties"]]};
	case "cement": {["Zement Händler",["cement"]]};
	case "gold": {["Goldankauf",["goldbar"]]};
	case "coal": {["Kohle Händler",["coalp"]]};
	//case "steel": {["Stahlhandel",["steel"]]};
	case "plastic": {["Plastik Händler",["plastic"]]};
	
	
};