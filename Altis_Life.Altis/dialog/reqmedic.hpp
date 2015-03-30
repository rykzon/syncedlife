class reqmedic{
	idd = 7700;
	name= "reqmedic";
	movingEnable = false;
	enableSimulation = true;
	
	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.1;
			y = 0.2;
			w = 0.6;
			h = (1 / 25);
		};
		
		class MainBackground:Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.6;
			h = 0.11 - (22 / 250);
		};
	};
	
class controls {

		
		class Title : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "Medic anfordern";
			x = 0.1;
			y = 0.2;
			w = 0.6;
			h = (1 / 25);
		};
		
		class reqMedicEditText : Life_RscStructuredText
		{
			idc = -1;
			text = "Anfordern von Medic erhöht Respawnzeit auf 10 Minuten";
			x = 0.12;
            y = 0.25;
			w = 0.5;
			h = 0.2;
		};
		
		
		class ReqMedicDescription : Life_RscStructuredText
		{
			idc = -1;
			text = "Möchten Sie einen Medic anfordern?!";
			x = 0.12;
            y = 0.35;
			w = 0.5;
			h = 0.2;
		};

		class CloseButtonKey : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = -0.06 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.47 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class SendButtonKey : Life_RscButtonMenu {
			idc = 9005;
			text = "JA";
			onButtonClick = "[] call life_fnc_requestMedic; closeDialog 0;";
			x = 0.1 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.47 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
	};
};