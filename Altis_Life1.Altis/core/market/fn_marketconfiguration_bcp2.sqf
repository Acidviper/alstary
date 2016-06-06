/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, Default, Min, Max, changes in action, [Sales multiplied by 1, Purchase multiplied by -1]
	//["gold", 1500, 450, 2300, 8, 5],
	
// MIEDź - waga surowca  - 4

        ["copper_r", 1500, 500, 2500, 16, 4,
                [
                        ["marijuana",1],
                        ["cocainep",1],
                        ["heroinp",1]
                ]
        ],

// WĘGIEL DRZEWNY - waga surowca  - 3

        ["holzp", 2700, 1500, 3200, 12, 3,
                [
                        ["marijuana",1],
                        ["cocainep",1],
                        ["heroinp",1]
                ]
        ],

// ŻELAZO - waga surowca  - 4

        ["iron_r", 2500, 1000, 5000, 16, 4,
                [
                        ["marijuana",1],
                        ["cocainep",1],
                        ["heroinp",1]
                ]
        ],

// OLEJ - waga surowca - 5

        ["oilp", 3500, 1500, 4500, 20, 5,
                [
                        ["diamondc",1],
                        ["salt_r",1],
                        ["cement",1]
                ]
        ],


// DIAMENTY - waga surowca - 6

        ["diamondc", 6000, 2500, 8500, 24, 6,
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


// SREBRO - waga surowca - 4

        ["silberp", 6000, 500, 7500, 16, 3,
                [
                        ["diamondc",1],
                        ["oilp",1],
                        ["iron_r",1],
                        ["copper_r",1],
                        ["salt_r",1]
                ]
        ],
// SÓL - waga surowca - 3

        ["salt_r", 1600, 500, 3100, 4, 3,
                [
                        ["silberp",1],
                        ["oilp",1]
                ]
        ],

// SIARKA W PROSZKU - waga surowca - 3

        ["schwefelp", 3000, 500, 4500, 4, 3,
                [
                        ["diamondc",1],
                        ["silberp",1]
                ]
        ],

// WINO - waga surowca - 7

        ["traubenp", 4700, 3500, 6700, 28, 7,
                [
                        ["oilp",1],
                        ["salt_r",1],
                        ["silberp",1]
                ]
        ],

// BIŻUTERIA - waga surowców - SREBRO + DIAMENTY - 7+6=13

        ["schmuck", 35000, 500, 60000, 52, 13, //biżuteria
                [
                        ["oilp",1],
                        ["salt_r",1]
                ]
        ],

// WHISKEY - waga surowca - 4

        ["getreideip", 6500, 4500, 8500, 16, 4,
                [
                        ["diamondc",1],
                        ["iron_r",1],
                        ["copper_r",1],
                        ["salt_r",1]
                ]
        ],

// PRODUKCJA RUMU - waga surowca - 4

        ["zuckerip", 5500, 500, 7000, 4, 3,
                [
                        ["diamondc",1],
                        ["oilp",1]
                ]
        ],

// PRODUKCJA CYGAR - waga surowca - 2

        ["tabakip", 7000, 500, 8500, 4, 2,
                [
                        ["iron_r",1],
                        ["copper_r",1]
                ]
        ],

// PRODUKCJA PAPIEROSÓW - waga surowca - 2

        ["tabakp", 5000, 500, 6500, 4, 2,
                [
                        ["diamondc",1],
                        ["silberp",1]
                ]
        ],


        ///////////////////////////////////

        ["turtle", 30000, 500, 45000, 50, 3,
                [
                        ["oilp",1],
                        ["salt_r",1]
                ]
        ],


// MARYCHA  - waga surowca - 3

        ["marijuana", 6000, 4500, 12000, 24, 3,
                [
                        ["iron_r",1],
                        ["copper_r",1],
                        ["holzp",1]
                ]
        ],


// KOKAINA - waga surowca - 4

        ["cocainep", 9000, 6500, 18000, 32, 4,
                [

                        ["iron_r",1],
                        ["copper_r",1],
                        ["holzp",1]
                ]
        ],

// HEROINA  - waga surowca - 3

        ["heroinp", 7000, 5500, 15000, 32, 4,
                [
                        ["iron_r",1],
                        ["copper_r",1],
                        ["holzp",1]
                ]
        ],


       ["pkugel", 100000, 500, 120000, 11, 3,   //kule pirackie
                [
                        ["iron_r",1],
                        ["copper_r",1],
                        ["salt_r",1]
                ]
        ],

        ["uranip", 50000, 500, 65000, 36, 9, //brudny uran
                [
                        ["uran5",1],
                        ["pkugel",1]
                ]
        ],

        ["uran5", 75000, 500, 100000, 36, 9,   //prety
                [
                        ["salt_r",1],
                        ["pkugel",1]
                ]
        ],

        ["pbrau", 17000, 10500, 25000, 14, 4,   //likier
                [
                        ["pkugel",1],
                        ["uran5",1]
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