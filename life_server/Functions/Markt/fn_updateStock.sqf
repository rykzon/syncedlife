/*
	File: Functions/D41/fn_updateStock.sqf
	Author: Distrikt41 - Dscha
	Edited: synced gaming - Rene
	
	Description:
	Bestand in DB aktualisieren und Preise anpassen
	Refresh Stock in DB and set new prices
*/
	private["_playercount","_query","_query2","_queryResult","_thread","_thread2","_Empty","_VLow","_Low","_mid","_High","_VHigh","_VKPreis","_EKPreis","_life_PreisAnpassung"];

	while{true}do
	{
		_playercount = count playableUnits;

		_query = format["SELECT
		apple,
		peach,
		heroinp,
		marijuana,
		oilp,
		cocainep,
		turtle,
		diamondc,
		iron_r,
		coalp,
		steel,
		bluesyn,
		plastic,
		copper_r,
		salt_r,
		glass,
		cement,
		bier,
		schnaps FROM stocksys WHERE ID=1"];

		waitUntil{sleep (random 0.3); !DB_Async_Active};
		_queryResult = [_query,2] call DB_fnc_asyncCall;
		waitUntil{sleep (random 0.3); !DB_Async_Active};
		_queryResult2 = [_query,2] call DB_fnc_asyncCall;

		diag_log format [":::::::::::::::::::::: fn_updateStock - Stock abrufen  _queryResult: %1", _queryResult];
		diag_log format [":::::::::::::::::::::: fn_updateStock - Stock abrufen2 _queryResult2: %1", _queryResult2];

		//------------------------------ Produkte zuteilen
		life_StockApple = _queryResult select 0;
		life_StockPeach = _queryResult select 1;
		life_StockHeroinp = _queryResult select 2;
		life_StockMarijuana = _queryResult select 3;
		life_StockOilp = _queryResult select 4;
		life_StockCocainep = _queryResult select 5;
		life_StockTurtle = _queryResult select 6;
		life_StockDiamondc = _queryResult select 7;
		life_StockIron_r = _queryResult select 8;
		life_StockCoal = _queryResult select 9;
		life_StockSteel = _queryResult select 10;
		life_StockBluesyn = _queryResult select 11;
		life_StockPlastic = _queryResult select 12;
		life_StockCopper_r = _queryResult select 13;
		life_StockSalt_r = _queryResult select 14;
		life_StockGlass = _queryResult select 15;
		life_StockCement = _queryResult select 16;
		life_StockBier = _queryResult select 17;
		life_StockSchnaps = _queryResult select 18;
		
		

		//------------------------------ Stock berechnen
		life_StockApple = life_StockApple - (_playercount * 3);						if(life_StockApple < 0)then {life_StockApple = 0;};		
		life_StockPeach = life_StockPeach - (_playercount * 3);					if(life_StockPeach < 0)then {life_StockPeach = 0;};
		life_StockHeroinp = life_StockHeroinp - (_playercount * 1);			if(life_StockHeroinp < 0)then {life_StockHeroinp = 0;};
		life_StockMarijuana = life_StockMarijuana - (_playercount * 1);	if(life_StockMarijuana < 0)then {life_StockMarijuana = 0;};
		life_StockOilp = life_StockOilp - (round (_playercount * 0.3));		if(life_StockOilp < 0)then {life_StockOilp = 0;};
		life_StockCocainep = life_StockCocainep - (round (_playercount * 1));				if(life_StockCocainep < 0)then {life_StockCocainep = 0;};
		life_StockTurtle = life_StockTurtle - (round (_playercount * 0.3));	if(life_StockTurtle < 0)then {life_StockTurtle = 0;};
		life_StockDiamondc = life_StockDiamondc - (_playercount * 0.25);						if(life_StockDiamondc < 0)then {life_StockDiamondc = 0;};
		life_StockIron_r = life_StockIron_r - (round (_playercount * 0.3));		if(life_StockIron_r < 0)then {life_StockIron_r = 0;};
		life_StockCoal = life_StockCoal - (round (_playercount * 0.25));		if(life_StockCoal < 0)then {life_StockCoal = 0;};
		life_StockSteel = life_StockSteel - (round (_playercount * 0.2));			if(life_StockSteel < 0)then {life_StockSteel = 0;};
		life_StockBluesyn = life_StockBluesyn - (round (_playercount * 0.15));		if(life_StockBluesyn < 0)then {life_StockBluesyn = 0;};
		life_StockPlastic = life_StockPlastic - (_playercount * 0.2);						if(life_StockPlastic < 0)then {life_StockPlastic = 0;};
		life_StockCopper_r = life_StockCopper_r - (round (_playercount * 0.5));					if(life_StockCopper_r < 0)then {life_StockCopper_r = 0;};
		life_StockSalt_r = life_StockSalt_r - (round (_playercount * 0.5));			if(life_StockSalt_r < 0)then {life_StockSalt_r = 0;};
		life_StockGlass = life_StockGlass - (_playercount * 0.4);				if(life_StockGlass < 0)then {life_StockGlass = 0;};
		life_StockCement = life_StockCement - (_playercount * 0.4);			if(life_StockCement < 0)then {life_StockCement = 0;};
		life_StockBier = life_StockBier - (_playercount * 0.4);			if(life_StockBier < 0)then {life_StockBier = 0;};
		life_StockSchnaps = life_StockSchnaps - (_playercount * 0.4);			if(life_StockSchnaps < 0)then {life_StockSchnaps = 0;};
		

		//------------------------------ neuen Stock eintragen
		_query2 = format["UPDATE stocksys SET
		apple=%1,
		peach=%2,
		heroinp=%3,
		marijuana=%4,
		oilp=%5,
		cocainep=%6,
		turtle=%7,
		diamondc=%8,
		iron_r=%9,
		coalp=%10,
		steel=%11,
		bluesyn=%12,
		plastic=%13,
		copper_r=%14,
		salt_r=%15,
		glass=%16,
		cement=%17,
		bier=%18,
		schnaps=%19 WHERE ID=1",
		
		life_StockApple,
		life_StockPeach,
		life_StockHeroinp,
		life_StockMarijuana,
		life_StockOilp,
		life_StockCocainep,
		life_StockTurtle,
		life_StockDiamondc,
		life_StockIron_r,
		life_StockCoal,
		life_StockSteel,
		life_StockBluesyn,
		life_StockPlastic,
		life_StockCopper_r,
		life_StockSalt_r,
		life_StockGlass,
		life_StockCement,
		life_StockBier,
		life_StockSchnaps
		
		];


		waitUntil {!DB_Async_Active};
		_thread2 = [_query2,false] spawn DB_fnc_asyncCall;
		waitUntil {scriptDone _thread2};

		diag_log format [":::::::::::::::::::::: fn_updateStock - Stock gesetzt _queryResult: %1", _queryResult];
		diag_log format [":::::::::::::::::::::: fn_updateStock - Stock gesetzt _queryResult2: %1", _queryResult2];
		diag_log format [":::::::::::::::::::::: fn_updateStock - Preisanpassungen gestartet"];
		//Preise aktualisieren
		//Hauptscript
		_life_PreisAnpassung = 
			{
				_Empty = (_mid/6);
				_VLow = (_mid/4);
				_Low = (_mid/2);
				
				_High = (_mid*1.5);
				_VHigh = (_mid*2);

				//Kauf oder Verkauf, keine Ahnung mehr (Ich tendiere zum verkauf von dem Zeug
				//Sell or Buy, can't remember (i think it was buying it)
				// Oo derp oO
				
				if(_Type <= _Empty)then
					{
						 life_PCheckK = round(_VKPreis*140)
					};
				if(_Type >= _Empty && _Type <= _VLow)then
					{
						 life_PCheckK = round(_VKPreis*125)
					};
				if(_Type >= _VLow && _Type <= _Low)then
					{
						 life_PCheckK = round(_VKPreis*110)
					};
				if(_Type >= _Low && _Type <= _mid)then
					{
						 life_PCheckK = round(_VKPreis*100)
					};
				if(_Type >= _mid && _Type <= _High)then
					{
						 life_PCheckK = round(_VKPreis*90)
					};
				if(_Type >= _High && _Type <= _VHigh)then
					{
						 life_PCheckK = round(_VKPreis*80)
					};
				if(_Type > _VHigh)then
					{
						 life_PCheckK = round(_VKPreis*75)
					};
				
				//Kauf oder Verkauf, keine Ahnung mehr (Ich tendiere zum Ankauf)
				// Sell or Buy, can't remember (i think it was selling it)
				// Oo derp oO
				
				if(_Type <= _Empty)then
					{
						life_PCheckV = round(_EKPreis*140)
					};
				if(_Type >= _Empty && _Type <= _VLow)then
					{
						life_PCheckV = round(_EKPreis*125)
					};
				if(_Type >= _VLow && _Type <= _Low)then
					{
						life_PCheckV = round(_EKPreis*110)
					};
				if(_Type >= _Low && _Type <= _mid)then
					{
						life_PCheckV = round(_EKPreis*100)
					};
				if(_Type >= _mid && _Type <= _High)then
					{
						life_PCheckV = round(_EKPreis*90)
					};
				if(_Type >= _High && _Type <= _VHigh)then
					{
						life_PCheckV = round(_EKPreis*80)
					};
				if(_Type > _VHigh)then
					{
						life_PCheckV = round(_EKPreis*75)
					};
				_queryResult set[_Num,life_PCheckK];
				_queryResult2 set[_Num,life_PCheckV];
			};
		
		//Items
		//apple
		_Num = 0; _Type = life_StockApple; _VKPreis = (150/100); _EKPreis = (60/100);_mid = 3000; [] call _life_PreisAnpassung;		
		//peach
		_Num = 1; _Type = life_StockPeach; _VKPreis = (180/100); _EKPreis = (65/100); _mid = 3000; [] call _life_PreisAnpassung;
		//Heroinp
		_Num = 2;  _Type = life_StockHeroinp; _VKPreis = (4100/100); _EKPreis = (3700/100); _mid = 1500; [] call _life_PreisAnpassung;
		//Marijuana
		_Num = 3; _Type = life_StockMarijuana; _VKPreis = (3000/100); _EKPreis = (2500/100); _mid = 2000; [] call _life_PreisAnpassung;
		//heroinp
		_Num = 4; _Type = life_StockOilp; _VKPreis = (3000/100); _EKPreis = (2600/100); _mid = 800; [] call _life_PreisAnpassung;
		//oilp
		_Num = 5; _Type = life_StockCocainep; _VKPreis = (3800/100); _EKPreis = (3300/100); _mid = 1500; [] call _life_PreisAnpassung;
		//marijuana
		_Num = 6; _Type = life_StockTurtle; _VKPreis = (3400/100); _EKPreis = (3000/100); _mid = 1500; [] call _life_PreisAnpassung;
		//bjerky
		_Num = 7; _Type = life_StockDiamondc; _VKPreis = (4000/100); _EKPreis = (3400/100); _mid = 400; [] call _life_PreisAnpassung;
		//cocainep
		_Num = 8; _Type = life_StockIron_r; _VKPreis = (2300/100); _EKPreis = (2000/100); _mid = 500; [] call _life_PreisAnpassung;
		//diamondc
		_Num = 9; _Type = life_StockCoal; _VKPreis = (900/100); _EKPreis = (600/100); _mid = 1000; [] call _life_PreisAnpassung;
		//iron_r
		_Num = 10; _Type = life_StockSteel; _VKPreis = (7000/100); _EKPreis = (6500/100); _mid = 500; [] call _life_PreisAnpassung;
		//copper_r
		_Num = 11; _Type = life_StockBluesyn; _VKPreis = (11000/100); _EKPreis = (9000/100); _mid = 500; [] call _life_PreisAnpassung;
		//salt_r
		_Num = 12; _Type = life_StockPlastic; _VKPreis = (9000/100); _EKPreis = (7000/100); _mid = 800; [] call _life_PreisAnpassung;
		//coal
		_Num = 13; _Type = life_StockCopper_r; _VKPreis = (2800/100); _EKPreis = (2450/100); _mid = 700; [] call _life_PreisAnpassung;
		//glass
		_Num = 14; _Type = life_StockSalt_r; _VKPreis = (1700/100); _EKPreis = (1300/100); _mid = 900; [] call _life_PreisAnpassung;
		//Applesaft
		_Num = 15; _Type = life_StockGlass; _VKPreis = (1600/100); _EKPreis = (1300/100); _mid = 1000; [] call _life_PreisAnpassung;
		//Peachsaft
		_Num = 16; _Type = life_StockCement; _VKPreis = (1900/100); _EKPreis = (1550/100); _mid = 1000; [] call _life_PreisAnpassung;
		
		_Num = 17; _Type = life_StockBier; _VKPreis = (3200/100); _EKPreis = (3000/100); _mid = 1000; [] call _life_PreisAnpassung;
		
		_Num = 18; _Type = life_StockSchnaps; _VKPreis = (550/100); _EKPreis = (400/100); _mid = 2000; [] call _life_PreisAnpassung;
		


		diag_log format [":::::::::::::::::::::: fn_updateStock - Preisänderungen beendet _queryResult: %1", _queryResult];
		diag_log format [":::::::::::::::::::::: fn_updateStock - Preisänderungen beendet _queryResult2: %1", _queryResult2];
		life_KPreisliste = _queryResult;
		life_VPreisliste = _queryResult2;
		publicVariable "life_KPreisliste";
		publicVariable "life_VPreisliste";
		
		//System Nachricht an alle Spieler
		//[[0,"Lagerbestand aller Waren aktualisiert"],"life_fnc_broadcast",true,false] call life_fnc_MP;
		sleep 1200;
	};