/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{

	case "market": {["Altis Market",["water","rabbit","apple","redgull","tbacon","pickaxe","fuelF","peach"]]};
	case "donator": {["Market Donatora",["water","rabbit","apple","redgull","tbacon","pickaxe","fuelF","peach","lockpick","tracker","coffee","donuts","skalpel","blastingcharge","boltcutter"]]};
	case "house": {["Meble",["housewarn","storagesmall","storagebig"]]};
	case "rebel": {["Market Rebeliantów",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge","tracker","skalpel"]]};
	case "gang": {["Gang Markt",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter","tracker"]]};
	case "wongs": {["Wong's Feinkost",["turtlesoup","turtle"]]};
	case "coffee": {["Starbucks Coffee",["coffee","donuts"]]};
	case "heroin": {["Diler",["cocainep","heroinp","marijuana","pbrau","spulver","pkugel","uranip","getreideip","zuckerip"]]};
	case "oil": {["Skup Oleju",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Market Rybny",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Skup Szkła",["glass"]]};
	case "iron": {["Skup Miedzi/Żelaza",["iron_r","copper_r"]]};
	case "diamond": {["Skup Diamentów",["diamond","diamondc"]]};
	case "salt": {["Skup Soli",["salt_r"]]};
	case "cop": {["Market Policyjny",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","tracker","kidney","empmodul"]]};
	case "cement": {["Skup Cementu",["cement"]]};
	case "tabak": {["Skup Tytoniu",["tabakp","tabakip"]]};
	case "backen": {["Piekarnia",["getreidep","zuckerp","donuts"]]};
	case "kohle": {["Skup Węgla",["holzp"]]};
	case "trinken": {["Destylarnia",["traubenp","hopfenp"]]};
	case "zinn": {["Skup Cyny",["zinnp"]]};
	case "silber": {["Skup Srebra",["silberp"]]};
	case "schwefel": {["Skup Siarki",["schwefelp"]]};
	case "schmuck": {["Jubiler",["schmuck"]]};
	case "bronze": {["Skup Brązu",["bronze"]]};
	case "gold": {["Skup Złota",["goldbar"]]};
	case "uran": {["Elektrownia",["uran5"]]};
	case "baumwollep": {["Tkalnia",["baumwollep"]]};
	case "organ": {["Handlarz Nerkami",["kidney"]]};
};
