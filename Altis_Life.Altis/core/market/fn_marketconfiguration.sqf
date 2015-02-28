/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, Default, Min, Max, changes in action, [Sales multiplied by 1, Purchase multiplied by -1]
	//["gold", 1500, 450, 2300, 8, 5],
	
	
	
	["coalp", 600, 50, 800, 4, 2,  
		[ 
			["diamondc",1], 
			["oilp",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1],
			["steel",1],
			["plastic",1],
			["iron_r",1]
		] 
	],
	
	["steel", 6500, 500, 7500, 4, 4,  
		[ 
			["diamondc",1], 
			["oilp",1],
			["coalp",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["steel",1],
			["plastic",1],
			["glass",1]
		] 
	],
	
	["oilp", 2600, 500, 3400, 4, 2,
		[
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1],
			["steel",1],
			["plastic",1],
			["coalp",1]
		]
	],
	["plastic", 7000, 500, 8500, 4, 4,
		[
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1],
			["steel",1],
			["oilp",1],
			["coalp",1]
		]
	],
	
	
	["iron_r", 2000, 500, 2500, 4, 3,  
		[ 
			["diamondc",1], 
			["oilp",1],
			["coalp",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["steel",1],
			["plastic",1],
			["glass",1]
		] 
	],
	
	["diamondc", 2975, 200, 3600, 4, 4, 
		[ 
			["oilp",1],
			["coalp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["steel",1],
			["plastic",1],
			["glass",1]
		] 
	],
	
	["copper_r", 2450, 200, 2900, 4, 4,
		[ 
			["diamondc",1], 
			["coalp",1],
			["oilp",1],
			["iron_r",1],
			["salt_r",1],
			["steel",1],
			["plastic",1],
			["cement",1],
			["glass",1]
		] 
	],
	
	["salt_r", 1215, 100, 1630, 4, 3,
		[ 
			["diamondc",1], 
			["coalp",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["steel",1],
			["plastic",1],
			["glass",1]
		] 
	],
	
	["glass", 1300, 150, 1850, 4, 4,
		[ 
			["diamondc",1], 
			["coalp",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["steel",1],
			["plastic",1],
			["salt_r",1],
			["cement",1]
		] 
	],
	
	["cement", 1550, 120, 1900, 4, 3,
		[ 
			["diamondc",1], 
			["coalp",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["steel",1],
			["plastic",1],
			["salt_r",1],
			["glass",1]
		] 
	],
/////////////////////////
	
	["turtle", 3000, 300, 4500, 4, 4,  
		[ 
			["marijuana",1], 
			["cocainep",1],
			["heroinp",1],
			//["aSchnaps",1],
			//["pSchnaps",1],
			["bluesyn",1]
		] 
	],

	["marijuana", 2550, 190, 2900, 4, 4,   
		[ 
			["turtle",1], 
			["cocainep",1],
			["heroinp",1],
			//["aSchnaps",1],
			//["pSchnaps",1],
			["bluesyn",1]
		] 
	],
	
	["cocainep", 3350, 350, 3950, 4, 4,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["heroinp",1],
			//["aSchnaps",1],
			//["pSchnaps",1],
			["bluesyn",1]
		] 
	],

	["heroinp", 3750, 400, 4350, 4, 4,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["cocainep",1],
			//["aSchnaps",1],
			//["pSchnaps",1],
			["bluesyn",1]
		] 
	],
	
	["bluesyn", 9000, 750, 10500, 4, 4,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["cocainep",1],
			["heroinp",1]
			//["aSchnaps",1],
			//["pSchnaps",1]
		] 
	]
	
	/*["aSchnaps", 1500, 1300, 1700, 2, 2,   
			[ 
				["marijuana",1], 
				["turtle",1],
				["heroinp",1],
				["cocainep",1],
				["pSchnaps",1]
			] 
	],
	["pSchnaps", 1500, 1300, 1700, 2, 2,   
			[ 
				["marijuana",1], 
				["turtle",1],
				["heroinp",1],
				["aSchnaps",1],
				["cocainep",1]
			] 
	]*/
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

//SYNC PRICES WITH SERVER IF EMPTY
if(isNil("life_market_prices")) then
{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Market Prices Generated!";
};