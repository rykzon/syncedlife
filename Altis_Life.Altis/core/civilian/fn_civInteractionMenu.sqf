#include <macro.h>
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Btn7 37456
#define Btn8 37457
#define Btn9 37458
#define Btn10 37459
#define Btn12 37461
#define Title 37401

private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7"];
if(!dialog) then {
	createDialog "pInteraction_Menu";
};
disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target


		
//if(!isPlayer _curTarget && side _curTarget == civilian) exitWith {closeDialog 0;}; //Bad side check?
_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
_Btn7 = _display displayCtrl Btn7;
_Btn8 = _display displayCtrl Btn8;
_Btn9 = _display displayCtrl Btn9;
_Btn10 = _display displayCtrl Btn10;
_Btn12 = _display displayCtrl Btn12;

		_Btn5 ctrlShow false;
		
		_Btn7 ctrlShow false;
		_Btn8 ctrlShow false;
		_Btn9 ctrlShow false;
		_Btn10 ctrlShow false;
		_Btn12 ctrlShow false;
		

life_pInact_curTarget = _curTarget;

//Set Unrestrain Button
if(_curTarget getVariable["restrained",false]) then {
_Btn1 ctrlSetText localize "STR_pInAct_Unrestrain";
_Btn1 buttonSetAction "[life_pInact_curTarget] call life_fnc_unrestrain; closeDialog 0;";
};






//Set Search Button
_Btn2 ctrlSetText "Items Geben";
_Btn2 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_giveItemAction; closeDialog 0;";


//Set Escort Button
if(_curTarget getVariable["restrained",false]) then
{
if((_curTarget getVariable["Escorting",false])) then {
	_Btn3 ctrlSetText localize "STR_pInAct_StopEscort";
	_Btn3 buttonSetAction "[life_pInact_curTarget] call life_fnc_stopEscorting; [life_pInact_curTarget] call life_fnc_civInteractionMenu;";
} else {
	_Btn3 ctrlSetText localize "STR_pInAct_Escort";
	_Btn3 buttonSetAction "[life_pInact_curTarget] call life_fnc_escortAction; closeDialog 0;";
};
};


//Set Ticket Button
_Btn4 ctrlSetText "Geld geben";
_Btn4 buttonSetAction "[life_pInact_curTarget] call life_fnc_giveMoneyAction;";
/*
_Btn6 ctrlSetText localize "STR_pInAct_Arrest";
_Btn6 buttonSetAction "[life_pInact_curTarget] call life_fnc_arrestAction;";
*/
if(_curTarget getVariable["restrained",false]) then {
_Btn5 ctrlShow true;
_Btn5 ctrlSetText localize "STR_pInAct_PutInCar";
_Btn5 buttonSetAction "[life_pInact_curTarget] call life_fnc_putInCar;";



};

if(_curTarget getVariable["restrained",false]) then {
_Btn2 ctrlSetText "Verabreichen";
_Btn2 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_giveItemAction2; closeDialog 0;"
 
};
_Btn6 ctrlSetText "Schlüssel Geben";
_Btn6 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_giveKeyAction;";
/*
//Check that you are near a place to jail them.
if(!((player distance (getMarkerPos "police_hq_1") < 30) OR  (player distance (getMarkerPos "police_hq_2") < 30) OR (player distance (getMarkerPos "cop_spawn_3") < 30) OR (player distance (getMarkerPos "cop_spawn_5") < 30))) then 
{
	_Btn6 ctrlEnable false;
};
	*/	