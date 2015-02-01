enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.8";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "core\welcome.sqf";
[] spawn life_fnc_ComDis;
if(isDedicated && isNil("life_market_prices")) then
{
[] call life_fnc_marketconfiguration;
diag_log "Market prices generated!";
"life_market_prices" addPublicVariableEventHandler
{
diag_log format["Market prices updated! %1", _this select 1];
};
SLX_XEH_EXCL_CLASSES=["C_Offroad_01_F","DAR_TahoeCivRed","DAR_TahoeCivBlue","DAR_TahoeCivSilver","DAR_TahoeCivBlack","C_SUV_01_F","U_I_HeliPilotCoveralls","Jonzie_Viper","C_Hatchback_01_F"];
//Start server fsm
[] execFSM "core\fsm\server.fsm";
diag_log "Server FSM executed";
};

StartProgress = true;


