/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {5000}; //Drivers License cost
	case "boat": {10000}; //Boating license cost
	case "pilot": {100000}; //Pilot/air license cost
	case "pilot1": {200000};
	case "gun": {10000}; //Firearm/gun license cost
	case "dive": {2000}; //Diving license cost
	case "oil": {35000}; //Oil processing license cost
	case "cair": {15000}; //Cop Pilot License cost
	case "swat": {35000}; //Swat License cost
	case "cg": {10000}; //Coast guard license cost
	case "heroin": {40000}; //Heroin processing license cost
	case "marijuana": {35000}; //Marijuana processing license cost
	case "medmarijuana": {1500}; //Medical Marijuana processing license cost
	case "gang": {10000}; //Gang license cost
	case "rebel": {75000}; //Rebel license cost
	case "truck": {25000}; //Truck license cost
	case "diamond": {50000};
	case "salt": {12000};
	case "cocaine": {35000};
	case "sand": {25000};
	case "iron": {20000};
	case "copper": {20000};
	case "cement": {25000};
	case "mair": {15000};
	case "aSchnaps": {10000};
	case "pSchnaps": {10000};
	case "home": {75000};
	case "plastic": {50000};
	case "steel": {45000};
	case "coal": {15000};
};