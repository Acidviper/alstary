/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, Default, Min, Max, changes in action, [Sales multiplied by 1, Purchase multiplied by -1]
	//["gold", 1500, 450, 2300, 8, 5],
		
	["oilp", 3500, 500, 4500, 4, 3, 
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1], 
			["schwefelp",1]
		] 
	],
	
	//Eisenbarren	
	["iron_r", 2500, 500, 4000, 4, 3,  
		[ 
			["uran5",1],
			["marijuana",1], 
			["cocainep",1],
			["heroinp",1],
			["uranip",1]
		] 
	],
	
	["diamondc", 7000, 500, 8500, 4, 3, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1],
			["schwefelp",1]

		] 
	],
	
	["copper_r", 2000, 500, 3500, 4, 3, 
		[ 
			["uran5",1],
			["marijuana",1], 
			["cocainep",1],
			["heroinp",1],
			["uranip",1]

		] 
	],
	
	["salt_r", 1600, 500, 3100, 4, 3, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["glass",1]
		] 
	],

	["schwefelp", 3000, 500, 4500, 4, 3, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1]
		] 
	],
	
	["traubenp", 4200, 500, 5700, 4, 3, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1]
		] 
	],
	
	["schmuck", 35000, 500, 60000, 4, 3, //biżuteria
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1]
		] 
	],
	
	["getreideip", 6500, 500, 8000, 4, 3, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1]
		] 
	],	
	
	["zuckerip", 5500, 500, 7000, 4, 3, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1]
		] 
	],	
	
	["tabakip", 7000, 500, 8500, 4, 3, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1]
		] 
	],		
	
	
	["tabakp", 5000, 500, 6500, 4, 3, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1]
		] 
	],
	
	
	["silberp", 6000, 500, 7500, 4, 3, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1]
		] 
	],

	["holzp", 2700, 500, 4200, 4, 4, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1]
			
		] 
	],

	///////////////////////////////////
	
	["turtle", 30000, 500, 45000, 20, 18,  
		[ 
			["oilp",1],
			["salt_r",1],
			["iron_r",1],
			["copper_r",1]
		] 
	],
	
	["marijuana", 6000, 500, 12000, 4, 3,   
		[ 
			["cocainep",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["heroinp",1],
			["uran5",1],
			["uranip",1]
		] 
	],
	
	["cocainep", 9000, 500, 18000, 4, 3,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["heroinp",1],
			["pkugel",1],
			["pbrau",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1]
		] 
	],
	
	["heroinp", 8000, 500, 15000, 4, 4,   
		[ 
			["marijuana",1], 
			["cocainep",1],
			["turtle",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1]

		] 
	],

	["pkugel", 100000, 500, 120000, 11, 8,   //kule pirackie
		[ 
			["marijuana",1], 
			["cocainep",1],
			["uran5",1],
			["heroinp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1]
		] 
	],
	
	["uranip", 50000, 500, 65000, 6, 4, //brudny uran   
		[ 
			["uran5",1],
			["marijuana",1], 
			["cocainep",1],
			["heroinp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1]
		] 
	],
	
	["uran5", 75000, 500, 100000, 6, 4,   //prety
		[ 
			["uranip",1],
			["marijuana",1], 
			["cocainep",1],
			["heroinp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1]
		] 
	],
	
	["pbrau", 19000, 500, 21000, 4, 4,   //likier
		[ 
			["marijuana",1], 
			["cocainep",1],
			["pkugel",1],
			["uran5",1],
			["uranip",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1]
		] 
	]
 
	
	
	
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
 
////////////SYNC PRICES WITH SERVER IF EMPTY
//if(isNil("life_market_prices")) then
//{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	
//};