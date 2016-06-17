/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "cair": {15000}; //Cop Pilot License cost
	case "sek": {35000}; //Swat License cost
	case "cg": {8000}; //Coast guard license cost
	case "mair": {15000};
	case "sec": {1};
	case "driver": {3000}; //Drivers License cost
	case "truck": {15000}; //Truck license cost
	case "pilot": {250000}; //Pilot/air license cost
	case "boat": {10000}; //Boating license cost
	case "dive": {20000}; //Diving license cost
	case "gun": {100000}; //Firearm/gun license cost	
	case "rebel": {10000000}; //Rebel license cost	
	case "donator": {1};
	case "donator1": {1};
    case "donator2": {1};
	case "donator3": {1};
	case "home": {2000000};
	case "heroin": {550000}; //Heroin processing license cost
	case "marijuana": {350000}; //Marijuana processing license cost
	case "cocaine": {750000};
	case "oil": {200000}; //Oil processing license cost
	case "diamond": {300000};
	case "copper": {10000};
	case "iron": {50000};
	case "sand": {60000};
	case "salt": {8000};
	case "cement": {10000};
	case "brauer": {150000}; //Produkcja Piwa
	case "nudeln": {40000}; //Przetwarzanie Zboża
	case "wein": {150000}; //Produkcja Wina
	case "zigaretten": {200000}; //Produkcja Papierosów
	case "zucker": {20000}; //Przetwarzanie Cukru
	case "whiskey": {75000}; //Produkcja Whiskey
	case "zigarren": {250000}; //Produkcja Cygar
	case "rum": {220000}; //Produkcja Rumu
	case "holz": {50000}; //Przetwarzanie Drewna
	case "schwefel": {30000}; //Przetwarzanie Siarki
	case "silber": {250000}; //Przetwarzanie Srebra
	case "zinn": {170000}; //Przetwarzanie Cyny
	case "gusseisen": {105000}; //Tworzenie Odlewów
	case "bronze": {80000}; //Przetwarzanie Brązu
	case "schmuck": {300000}; //Produkcja Biżuteri
	case "pbrau": {200000}; //Produkcja Likieru
	case "kkugel": {200000}; //Odkrywca Kul
	case "pkugel": {500000}; //Licencja Pirata
	case "spulver": {70000}; //Przetwarzanie Proszku
	case "uran2": {100000}; //Oczyszczanie Uranu
	case "uran3": {125000}; //Przetwarzanie Uranu
	case "uran4": {150000}; //Wzbogacanie Uranu
	case "uran5": {375000}; //Produkcja Prętów Paliwowych
	case "uranip": {300000}; //Zamiana w Brudny Uran

};