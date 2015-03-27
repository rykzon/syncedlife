private["_item"];
disableSerialization;

_item = _this select 0;
switch (true) do
{
	case (_item == "water" or _item == "coffee"):
	{
		
			life_thirst = 100;
			player setFatigue 0;
		
	};

	case (_item == "marijuana"):
{
    
        [] spawn life_fnc_weed;
    
};


		case (_item == "heroinp"):
{
   
        [] spawn life_fnc_heroin;
    
};

		case (_item == "bier"):
{

        [1] spawn life_fnc_alkohol;
    
};

		case (_item == "magicmushrooms"):
{
   
        [] spawn life_fnc_pilze;
    
};

		case (_item == "schlafmittel"):
{
   
        [] spawn life_fnc_schlafmittel;
    
};

		case (_item == "schnaps"):
{
   
        [2] spawn life_fnc_alkohol;
    
};

	case (_item == "cocainep"):
{
   
        [] spawn life_fnc_cocaine;
		
		player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (6 * 60))};
				player enableFatigue true;
			};
    
};
	

	case (_item == "redgull"):
	{
		
			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		
	};
	

	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach"]):
	{
		[_item] call life_fnc_eatFood;
	};

	
	default
	{
		hint localize "STR_ISTR_NotUsable";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;
};