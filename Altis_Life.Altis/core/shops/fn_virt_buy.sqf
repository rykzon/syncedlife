#include <macro.h>
/*
	File: fn_virt_buy.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Buy a virtual item from the store.
*/
private["_type","_price","_amount","_diff","_name","_hideout","_marketprice"];
if((lbCurSel 2401) == -1) exitWith {hint localize "STR_Shop_Virt_Nothing"};
_type = lbData[2401,(lbCurSel 2401)];
_price = lbValue[2401,(lbCurSel 2401)];
_amount = ctrlText 2404;



if(!([_amount] call TON_fnc_isnumber)) exitWith {hint localize "STR_Shop_Virt_NoNum";};
_diff = [_type,parseNumber(_amount),life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
_amount = parseNumber(_amount);
if(_diff <= 0) exitWith {hint localize "STR_NOTF_NoSpace"};
_amount = _diff;
_hideout = (nearestObjects[getPosATL player,["Land_u_Barracks_V2_F","Land_i_Barracks_V2_F"],25]) select 0;
if((_price * _amount) > life_cash && {!isNil "_hideout" && {!isNil {grpPlayer getVariable "gang_bank"}} && {(grpPlayer getVariable "gang_bank") <= _price * _amount}}) exitWith {hint localize "STR_NOTF_NotEnoughMoney"};

_name = [([_type,0] call life_fnc_varHandle)] call life_fnc_varToStr;

D41_BuyAble = 1;


_StockListe = [
		"apple",
		"peach",
		"heroinp",
		"marijuana",
		"oilp",
		"cocainep",
		"turtle",
		"diamondc",
		"iron_r",
		"coalp",
		"steel",
		"bluesyn",
		"plastic",
		"copper_r",
		"salt_r",
		"glass",
		"cement"
		];
/*if(_type in _StockListe)then
	{
		hint format ["Lagerabfrage für %1 läuft",_name];
		[[_type, [_amount] call life_fnc_numberText, player],"TON_fnc_queryStockSys",false,false] call life_fnc_MP;
		sleep 1;
		player getVariable "D41_BuyAble";
	};*/
//::::::::::::::::
if (D41_BuyAble == 0) exitWith {D41_IsBuying = 0; hint format ["Nicht genügend %1 auf Lager",_name];};

if(([true,_type,_amount] call life_fnc_handleInv)) then
{
	if(!isNil "_hideout" && {!isNil {grpPlayer getVariable "gang_bank"}} && {(grpPlayer getVariable "gang_bank") >= _price}) then {
		_action = [
			format[(localize "STR_Shop_Virt_Gang_FundsMSG")+ "<br/><br/>" +(localize "STR_Shop_Virt_Gang_Funds")+ " <t color='#8cff9b'>$%1</t><br/>" +(localize "STR_Shop_Virt_YourFunds")+ " <t color='#8cff9b'>$%2</t>",
				[(grpPlayer getVariable "gang_bank")] call life_fnc_numberText,
				[life_cash] call life_fnc_numberText
			],
			localize "STR_Shop_Virt_YourorGang",
			localize "STR_Shop_Virt_UI_GangFunds",
			localize "STR_Shop_Virt_UI_YourCash"
		] call BIS_fnc_guiMessage;
		if(_action) then {
			hint format[localize "STR_Shop_Virt_BoughtGang",_amount,_name,[(_price * _amount)] call life_fnc_numberText];
			if(_type in _StockListe)then{[[_type, [_amount] call life_fnc_numberText,"1",getPlayerUID player],"TON_fnc_insertStockSys",false,false] call life_fnc_MP;};
			_funds = grpPlayer getVariable "gang_bank";
			_funds = _funds - (_price * _amount);
			grpPlayer setVariable["gang_bank",_funds,true];
			[[1,grpPlayer],"TON_fnc_updateGang",false,false] spawn life_fnc_MP;
		} else {
			if((_price * _amount) > life_cash) exitWith {[false,_type,_amount] call life_fnc_handleInv; hint localize "STR_NOTF_NotEnoughMoney";};
			hint format[localize "STR_Shop_Virt_BoughtItem",_amount,_name,[(_price * _amount)] call life_fnc_numberText];
			if(_type in _StockListe)then{[[_type, [_amount] call life_fnc_numberText,"1",getPlayerUID player],"TON_fnc_insertStockSys",false,false] call life_fnc_MP;};
			__SUB__(life_cash,_price * _amount);
		};
	} else {
		if((_price * _amount) > life_cash) exitWith {hint localize "STR_NOTF_NotEnoughMoney"; [false,_type,_amount] call life_fnc_handleInv;};
		hint format[localize "STR_Shop_Virt_BoughtItem",_amount,_name,[(_price * _amount)] call life_fnc_numberText];
		if(_type in _StockListe)then{[[_type, [_amount] call life_fnc_numberText,"1",getPlayerUID player],"TON_fnc_insertStockSys",false,false] call life_fnc_MP;};
		__SUB__(life_cash,(_price * _amount));
		D41_IsBuying = 0;
	
		
	};
	[] call life_fnc_virt_update;
};
D41_IsBuying = 0;
[0] call SOCK_fnc_updatePartial;
[3] call SOCK_fnc_updatePartial;