/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, Default, Min, Max, changes in action, [Sales multiplied by 1, Purchase multiplied by -1]
	//["gold", 1500, 450, 2300, 8, 5],
	
	
	
	["coalp", 600, 450, 750, 1, 1,  
		[ 
			["diamondc",1], 
			["oilp",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1],
			["steel",1],
			["iron_r",1]
		] 
	],
	
	["steel", 3500, 2500, 4500, 4, 2,  
		[ 
			["diamondc",1], 
			["oilp",1],
			["coalp",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["steel",1],
			["glass",1]
		] 
	],
	
	["oilp", 1290, 930, 1650, 4, 2,
		[
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1],
			["steel",1],
			["coalp",1]
		]
	],
	
	
	["iron_r", 2000, 1700, 2300, 2, 2,  
		[ 
			["diamondc",1], 
			["oilp",1],
			["coalp",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["steel",1],
			["glass",1]
		] 
	],
	
	["diamondc", 2975, 2450, 3500, 4, 2, 
		[ 
			["oilp",1],
			["coalp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["steel",1],
			["glass",1]
		] 
	],
	
	["copper_r", 2050, 1800, 2250, 2, 2,
		[ 
			["diamondc",1], 
			["coalp",1],
			["oilp",1],
			["iron_r",1],
			["salt_r",1],
			["steel",1],
			["cement",1],
			["glass",1]
		] 
	],
	
	["salt_r", 1215, 1000, 1430, 2, 2,
		[ 
			["diamondc",1], 
			["coalp",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["steel",1],
			["glass",1]
		] 
	],
	
	["glass", 1300, 1050, 1550, 1, 1,
		[ 
			["diamondc",1], 
			["coalp",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["steel",1],
			["salt_r",1],
			["cement",1]
		] 
	],
	
	["cement", 1550, 1200, 1900, 1, 1,
		[ 
			["diamondc",1], 
			["coalp",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["steel",1],
			["salt_r",1],
			["glass",1]
		] 
	],
/////////////////////////
	
	["turtle", 3000, 1500, 4500, 4, 4,  
		[ 
			["marijuana",1], 
			["cocainep",1],
			["heroinp",1],
			["aSchnaps",1],
			["pSchnaps",1]
		] 
	],

	["marijuana", 1950, 1700, 2200, 4, 4,   
		[ 
			["turtle",1], 
			["cocainep",1],
			["heroinp",1],
			["aSchnaps",1],
			["pSchnaps",1]
		] 
	],
	
	["cocainep", 2650, 2200, 3100, 4, 4,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["heroinp",1],
			["aSchnaps",1],
			["pSchnaps",1]
		] 
	],

	["heroinp", 2800, 2400, 3200, 4, 4,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["cocainep",1],
			["aSchnaps",1],
			["pSchnaps",1]
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