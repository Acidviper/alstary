/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "skalpel": {3};
	case "kidney": {15};
	case "oilu": {5};
	case "oilp": {3};
	case "heroinu": {3};
	case "heroinp": {2};
	case "cannabis": {3};
	case "marijuana": {2};
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {2};
	case "tuna": {2};
	case "mullet": {2};
	case "catshark": {2};
	case "turtle": {5};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {4};
	case "ironore": {4};
	case "copper_r": {3};
	case "iron_r": {3};
	case "sand": {4};
	case "salt": {3};
	case "salt_r": {2};
	case "glass": {2};
	case "diamond": {6};
	case "diamondc": {4};
	case "cocaine": {4};
	case "cocainep": {3};
	case "spikeStrip": {5};
	case "rock": {3};
	case "cement": {2};
	case "goldbar": {10};
	case "blastingcharge": {15};
	case "boltcutter": {5};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
	case "tracker": {2};
	case "getreideu": {4};
	case "holzu": {3};
	case "hopfenu": {6};
	case "schwefelu": {3};
	case "silberu": {7};
	case "tabaku": {2};
	case "traubenu": {7};
	case "zinnu": {6};
	case "zuckeru": {4};
	case "getreideip": {3};
	case "tabakip": {5};
	case "zuckerip": {3};
	case "eisenp": {2};
	case "getreidep": {3};
	case "holzp": {2};
	case "hopfenp": {4};
	case "schwefelp": {2};
	case "silberp": {4};
	case "tabakp": {4};
	case "traubenp": {4};
	case "zinnp": {3};
	case "zuckerp": {2};
	case "schmuck": {4};
	case "bronze": {4};
	case "pbrau": {3};
	case "kkugel": {6};
	case "spulver": {2};
	case "pkugel": {4};	
	case "speedbomb": {10};
	case "uran1": {19};
	case "uran2": {17};
	case "uran3": {15};
	case "uran4": {13};
	case "uran5": {11};
	case "uranip": {9};
	case "housewarn": {20};
	case "baumwollep": {3};
	case "empmodul": {20};
	case "gagkit": {4};
    case "ptools": {2};
	default {1};
};
