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
[] execVM "core\market\fn_sysM.sqf";

SLX_XEH_EXCL_CLASSES=["C_Offroad_01_F","DAR_TahoeCivRed","DAR_TahoeCivBlue","DAR_TahoeCivSilver","DAR_TahoeCivBlack","C_SUV_01_F","U_I_HeliPilotCoveralls","Jonzie_Viper","C_Hatchback_01_F"];
//Start server fsm
//[] execFSM "core\fsm\server.fsm";
//diag_log "Server FSM executed";


StartProgress = true;


