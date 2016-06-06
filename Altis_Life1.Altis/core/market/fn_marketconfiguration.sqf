/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, Default, Min, Max, changes in action, [Sales multiplied by 1, Purchase multiplied by -1]
	//["gold", 1500, 450, 2300, 8, 5],
	
// MIEDź - waga surowca  - 4

        ["copper_r", 1800, 800, 2500, 6, 2,
                [
		                ["pkugel",1], //bomby
                        ["marijuana",1], //marysia
                        ["cocainep",1], //koka
                        ["heroinp",1], //hera
                        ["pbrau",1], //likier
                        ["getreideip",1], //whiskey
                        ["zuckerip",1], //rum
                        ["spulver",1], //proch
                        ["uranip",1], //brudny uran
                        ["turtle",1] //żółwie
                ]
        ],

// WĘGIEL DRZEWNY - waga surowca  - 3

        ["holzp", 2200, 1500, 3200, 6, 1,
                [
		                ["pkugel",1], //bomby
                        ["marijuana",1], //marysia
                        ["cocainep",1], //koka
                        ["heroinp",1], //hera
                        ["pbrau",1], //likier
                        ["getreideip",1], //whiskey
                        ["zuckerip",1], //rum
                        ["spulver",1], //proch
                        ["uranip",1], //brudny uran
                        ["turtle",1] //żółwie
                ]
        ],


 // SÓL - waga surowca - 3

        ["salt_r", 1600, 1200, 4200, 3, 2,
                [
		                ["pkugel",1], //bomby
                        ["marijuana",1], //marysia
                        ["cocainep",1], //koka
                        ["heroinp",1], //hera
                        ["pbrau",1], //likier
                        ["getreideip",1], //whiskey
                        ["zuckerip",1], //rum
                        ["spulver",1], //proch
                        ["uranip",1], //brudny uran
                        ["turtle",1] //żółwie
                ]
        ],

// ŻELAZO - waga surowca  - 4

        ["iron_r", 2500, 1000, 5800, 6, 1,
                [
		                ["pkugel",1], //bomby
                        ["marijuana",1], //marysia
                        ["cocainep",1], //koka
                        ["heroinp",1], //hera
                        ["pbrau",1], //likier
                        ["getreideip",1], //whiskey
                        ["zuckerip",1], //rum
                        ["spulver",1], //proch
                        ["uranip",1], //brudny uran
                        ["turtle",1] //żółwie
                ]
        ],

// OLEJ - waga surowca - 5

        ["oilp", 3500, 1500, 4500, 5, 3,
                [
		                ["pkugel",1], //bomby
                        ["marijuana",1], //marysia
                        ["cocainep",1], //koka
                        ["heroinp",1], //hera
                        ["pbrau",1], //likier
                        ["getreideip",1], //whiskey
                        ["zuckerip",1], //rum
                        ["spulver",1], //proch
                        ["uranip",1], //brudny uran
                        ["turtle",1] //żółwie
                ]
        ],


// DIAMENTY - waga surowca - 6

        ["diamondc", 8500, 2500, 14500, 16, 2,
                [
		                ["pkugel",1], //bomby
                        ["marijuana",1], //marysia
                        ["cocainep",1], //koka
                        ["heroinp",1], //hera
                        ["pbrau",1], //likier
                        ["getreideip",1], //whiskey
                        ["zuckerip",1], //rum
                        ["spulver",1], //proch
                        ["uranip",1], //brudny uran
                        ["turtle",1] //żółwie
                ]
        ],


// SREBRO - waga surowca - 4

        ["silberp", 6000, 4500, 13500, 12, 2,
                [
		                ["pkugel",1], //bomby
                        ["marijuana",1], //marysia
                        ["cocainep",1], //koka
                        ["heroinp",1], //hera
                        ["pbrau",1], //likier
                        ["getreideip",1], //whiskey
                        ["zuckerip",1], //rum
                        ["spulver",1], //proch
                        ["uranip",1], //brudny uran
                        ["turtle",1] //żółwie
                ]
        ],


// SIARKA W PROSZKU - waga surowca - 3

        ["schwefelp", 3500, 500, 9500, 5, 3,
                [
                        ["marijuana",1], //marysia
                        ["cocainep",1], //koka
                        ["heroinp",1], //hera
                        ["pbrau",1], //likier
                        ["getreideip",1], //whiskey
                        ["zuckerip",1], //rum
                        ["spulver",1], //proch
                        ["uranip",1], //brudny uran
                        ["turtle",1] //żółwie
                ]
        ],

// WINO - waga surowca - 7

        ["traubenp", 4700, 3500, 6700, 17, 2,
                [
		                ["pkugel",1], //bomby
                        ["marijuana",1], //marysia
                        ["cocainep",1], //koka
                        ["heroinp",1], //hera
                        ["pbrau",1], //likier
                        ["getreideip",1], //whiskey
                        ["zuckerip",1], //rum
                        ["spulver",1], //proch
                        ["uranip",1], //brudny uran
                        ["turtle",1] //żółwie
                ]
        ],

// BIŻUTERIA - waga surowców - SREBRO + DIAMENTY - 7+6=13

        ["schmuck", 35000, 15000, 70000, 84, 2, //biżuteria
                [
		                ["pkugel",1], //bomby
                        ["marijuana",1], //marysia
                        ["cocainep",1], //koka
                        ["heroinp",1], //hera
                        ["pbrau",1], //likier
                        ["getreideip",1], //whiskey
                        ["zuckerip",1], //rum
                        ["spulver",1], //proch
                        ["uranip",1], //brudny uran
                        ["turtle",1] //żółwie
            	]
        ],

// WHISKEY - waga surowca - 4

        ["getreideip", 6500, 4500, 8500, 12, 2,
                [
                        ["pkugel",1],	//bomby - nielegal
                        ["uran5",1],	//pręty
                        ["iron_r",1],	//żelazo
                        ["copper_r",1], //miedź
                        ["traubenp",1], //wino
                        ["silberp",1],  //srebro
                        ["hopfenp",1],  //browar
                        ["oilp",1],		//olej
                        ["tabakp",1],   //papierosy
                        ["tabakip",1],  //cygara
                        ["diamondc",1], //diamenty
                        ["eisenp",1], //formy
                        ["holzp",1], //wegiel
                        ["salt_r",1], //sól
                        ["schmuck",1], //biżuteria
                        ["schwefelp",1] //siarka w proszku
                ]
        ],

// PRODUKCJA RUMU - waga surowca - 4

        ["zuckerip", 7500, 2500, 12000, 12, 2,
                [
                        ["pkugel",1],	//bomby - nielegal
                        ["uran5",1],	//pręty
                        ["iron_r",1],	//żelazo
                        ["copper_r",1], //miedź
                        ["traubenp",1], //wino
                        ["silberp",1],  //srebro
                        ["hopfenp",1],  //browar
                        ["oilp",1],		//olej
                        ["tabakp",1],   //papierosy
                        ["tabakip",1],  //cygara
                        ["diamondc",1], //diamenty
                        ["eisenp",1], //formy
                        ["holzp",1], //wegiel
                        ["salt_r",1], //sól
                        ["schmuck",1], //biżuteria
                        ["schwefelp",1] //siarka w proszku
                ]
        ],

// PRODUKCJA CYGAR - waga surowca - 2

        ["tabakip", 6000, 2500, 8500, 4, 2,
                [
		                ["pkugel",1], //bomby
                        ["marijuana",1], //marysia
                        ["cocainep",1], //koka
                        ["heroinp",1], //hera
                        ["pbrau",1], //likier
                        ["getreideip",1], //whiskey
                        ["zuckerip",1], //rum
                        ["spulver",1], //proch
                        ["uranip",1], //brudny uran
                        ["schmuck",1] //biżuteria
                ]
        ],

// PRODUKCJA PAPIEROSÓW - waga surowca - 2

        ["tabakp", 5000, 3500, 6500, 4, 2,
                [
		                ["pkugel",1], //bomby
                        ["marijuana",1], //marysia
                        ["cocainep",1], //koka
                        ["heroinp",1], //hera
                        ["pbrau",1], //likier
                        ["getreideip",1], //whiskey
                        ["zuckerip",1], //rum
                        ["spulver",1], //proch
                        ["uranip",1], //brudny uran
                        ["turtle",1], //żółwie
                        ["schmuck",1] //biżuteria

                ]
        ],


        ///////////////////////////////////

// ŻÓŁWIE

        ["turtle", 32000, 15000, 55000, 150, 2,
                [
                        ["uran5",1],	//pręty
                        ["iron_r",1],	//żelazo
                        ["copper_r",1], //miedź
                        ["traubenp",1], //wino
                        ["silberp",1],  //srebro
                        ["hopfenp",1],  //browar
                        ["oilp",1],		//olej
                        ["tabakp",1],   //papierosy
                        ["tabakip",1],  //cygara
                        ["diamondc",1], //diamenty
                        ["eisenp",1], //formy
                        ["holzp",1], //wegiel
                        ["salt_r",1], //sól
                        ["schmuck",1], //biżuteria
                        ["schwefelp",1] //siarka w proszku
                ]
        ],


// MARYCHA  - waga surowca - 3

        ["marijuana", 6000, 4500, 12000, 18, 3,
                [
                        ["pkugel",1],	//bomby - nielegal
                        ["uran5",1],	//pręty
                        ["iron_r",1],	//żelazo
                        ["copper_r",1], //miedź
                        ["traubenp",1], //wino
                        ["silberp",1],  //srebro
                        ["hopfenp",1],  //browar
                        ["oilp",1],		//olej
                        ["tabakp",1],   //papierosy
                        ["tabakip",1],  //cygara
                        ["diamondc",1], //diamenty
                        ["eisenp",1], //formy
                        ["holzp",1], //wegiel
                        ["salt_r",1], //sól
                        ["schmuck",1], //biżuteria
                        ["schwefelp",1] //siarka w proszku
                ]
        ],


// KOKAINA - waga surowca - 4

        ["cocainep", 9000, 6500, 18000, 24, 4,
                [
                       	["uran5",1],	//pręty
                        ["iron_r",1],	//żelazo
                        ["copper_r",1], //miedź
                        ["traubenp",1], //wino
                        ["silberp",1],  //srebro
                        ["hopfenp",1],  //browar
                        ["oilp",1],		//olej
                        ["tabakp",1],   //papierosy
                        ["tabakip",1],  //cygara
                        ["diamondc",1], //diamenty
                        ["eisenp",1], //formy
                        ["holzp",1], //wegiel
                        ["salt_r",1], //sól
                        ["schmuck",1], //biżuteria
                        ["schwefelp",1] //siarka w proszku
                ]
        ],

// HEROINA  - waga surowca - 3

        ["heroinp", 7000, 5500, 15000, 18, 3,
                [
                        ["uran5",1],	//pręty
                        ["iron_r",1],	//żelazo
                        ["copper_r",1], //miedź
                        ["traubenp",1], //wino
                        ["silberp",1],  //srebro
                        ["hopfenp",1],  //browar
                        ["oilp",1],		//olej
                        ["tabakp",1],   //papierosy
                        ["tabakip",1],  //cygara
                        ["diamondc",1], //diamenty
                        ["eisenp",1], //formy
                        ["holzp",1], //wegiel
                        ["salt_r",1], //sól
                        ["schmuck",1], //biżuteria
                        ["schwefelp",1] //siarka w proszku
                ]
        ],

// BOMBY - waga surowców - 4+4+3+3=14

       ["pkugel", 89000, 35000, 150000, 148, 4,   //kule pirackie
                [
                        ["uran5",1],	//pręty
                        ["iron_r",1],	//żelazo
                        ["copper_r",1], //miedź
                        ["traubenp",1], //wino
                        ["silberp",1],  //srebro
                        ["hopfenp",1],  //browar
                        ["oilp",1],		//olej
                        ["tabakp",1],   //papierosy
                        ["tabakip",1],  //cygara
                        ["diamondc",1], //diamenty
                        ["eisenp",1], //formy
                        ["holzp",1], //wegiel
                        ["salt_r",1], //sól
                        ["schmuck",1], //biżuteria
                        ["schwefelp",1] //siarka w proszku
                ]
        ],

// BRUDNY URAN - waga surowca - 19

        ["uranip", 45000, 25000, 65000, 78, 4, //brudny uran
                [
                        ["pkugel",1],	//bomby - nielegal
                        ["uran5",1],	//pręty
                        ["iron_r",1],	//żelazo
                        ["copper_r",1], //miedź
                        ["traubenp",1], //wino
                        ["silberp",1],  //srebro
                        ["hopfenp",1],  //browar
                        ["oilp",1],		//olej
                        ["tabakp",1],   //papierosy
                        ["tabakip",1],  //cygara
                        ["diamondc",1], //diamenty
                        ["eisenp",1], //formy
                        ["holzp",1], //wegiel
                        ["salt_r",1], //sól
                        ["schmuck",1] //biżuteria
                ]
        ],

// PRĘTY PALIWOWE - waga surowców - 19

        ["uran5", 75000, 45000, 140000, 238, 28,   //prety
                [
		                ["pkugel",1], //bomby
                        ["marijuana",1], //marysia
                        ["cocainep",1], //koka
                        ["heroinp",1], //hera
                        ["pbrau",1], //likier
                        ["getreideip",1], //whiskey
                        ["zuckerip",1], //rum
                        ["spulver",1], //proch
                        ["uranip",1], //brudny uran
                        ["turtle",1] //żółwie
 	             ]
        ],

// LIKIER - waga surowców - 4 + 4 = 8

        ["pbrau", 17000, 9500, 28000, 36, 2,   //likier
                [
                        ["uran5",1],	//pręty
                        ["iron_r",1],	//żelazo
                        ["copper_r",1], //miedź
                        ["traubenp",1], //wino
                        ["silberp",1],  //srebro
                        ["hopfenp",1],  //browar
                        ["oilp",1],		//olej
                        ["tabakp",1],   //papierosy
                        ["tabakip",1],  //cygara
                        ["diamondc",1], //diamenty
                        ["eisenp",1], //formy
                        ["holzp",1], //wegiel
                        ["salt_r",1], //sól
                        ["schmuck",1], //biżuteria
                        ["schwefelp",1] //siarka w proszku
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