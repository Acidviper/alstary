/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	// Quad
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Pustynny"};
			case 1: {_color = "Czarny"};
			case 2: {_color = "Niebieski"};
			case 3: {_color = "Czerwony"};
			case 4: {_color = "Biały"};
			case 5: {_color = "Zielony"};
			case 6: {_color = "Jagd-Camo"};
			case 7: {_color = "Rebellen-Camo"};
		};
	};
	// Offroad
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Czerwony";};
			case 1: {_color = "Żółty";};
			case 2: {_color = "Biały";};
			case 3: {_color = "Niebieski";};
			case 4: {_color = "Ciemno Czerwony";};
			case 5: {_color = "Niebieski / Biały"};
			case 6: {_color = "Policja"};
			case 7: {_color = "Medyk"};
       		case 8: {_color = "Kamuflaż"};
			case 9: {_color = "Zielony"};
			case 10: {_color = "Rebel"};
			case 11: {_color = "Purpurowy"};
			case 12: {_color = "Blekitny"};
			case 13: {_color = "Czerwony"};
			case 14: {_color = "Zolty"};
			case 15: {_color = "Dodge"};
			case 16: {_color = "Różowy"};
			case 17: {_color = "Dodge"};
			case 18: {_color = "Różowy"};
			case 19: {_color = "Rockstar"};
            case 20: {_color = "Punisher"};
            case 21: {_color = "9do"};
		};
	};
	// Hatchback
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beżowy";};
			case 1: {_color = "Zielony";};
			case 2: {_color = "Niebieski";};
			case 3: {_color = "Ciemno Niebieski";};
			case 4: {_color = "Żółty";};
			case 5: {_color = "Biały"};
			case 6: {_color = "Szary"};
			case 7: {_color = "Czarny"};
			case 8: {_color = "Policja"};
			case 9: {_color = "Czerwone Wzorki"};
			case 10: {_color = "Niebieskie Wzorki"};
			case 11: {_color = "Białe Wzorki"};
			};
	};
	// Hatchback Sport
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Czerwony"};
			case 1: {_color = "Ciemno Niebieski"};
			case 2: {_color = "Pomarańczowy"};
			case 3: {_color = "Czarny / Biały"};
			case 4: {_color = "Jasno Brązowy"};
			case 5: {_color = "Zielony"};
			case 6: {_color = "Policja"};
			case 7: {_color = "Medyk"};
		};
	};
	// SUV	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ciemno Czerwony";};
			case 1: {_color = "Srebny";};
			case 2: {_color = "Pomarańczowy";};
			case 3: {_color = "Policja";};
			case 4: {_color = "Medyk";};
			case 5: {_color = "Niebieski"};
			case 6: {_color = "Zielony"};
			case 7: {_color = "Rebel"};
			case 8: {_color = "Ciemno Zielony"};
			case 9: {_color = "Monster Energy"};			
			case 10: {_color = "Monster Energy"};			
			case 11: {_color = "Ferrari"};
			case 12: {_color = "Pączek"};
			case 13: {_color = "acid"};
            case 14: {_color = "Camo"};
		    case 15: {_color = "marihuana"};
            case 16: {_color = "Sticker"};
            case 17: {_color = "Taxi"};
            case 18: {_color = "Klaudia"};
            case 19: {_color = "Lekarze"};
      		case 20: {_color = "Tron"};
            case 21: {_color = "Czaszka"};
     	};
	};	
	// Truck
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Biały"};
			case 1: {_color = "Czerwony"};
		};
	};	
	// Truck Box
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Biały"};
			case 1: {_color = "Czerwony"};
		};
	};
	// Truck Fuel
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Biały"};
			case 1: {_color = "Czerwony"};
		};
	};
	// Zamak
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Pomarańczowy"};
			case 1: {_color = "RedBull"};
			case 2: {_color = "RedBull"};
		};
	};
	// Zamak
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Pomarańczowy"};
			case 1: {_color = "RedBull"};
			case 2: {_color = "RedBull"};
		};
	};
	// HEMTT
	case "B_Truck_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Standard"};
		};
	};
	// HEMTT
	case "B_Truck_01_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Standard"};
		};
	};
	// HEMTT
	case "B_Truck_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Standard"};
		};
	};
	// HEMTT
	case "B_Truck_01_ammo_F":
	{
		switch (_index) do
		{
		};
	};	
	case "B_Truck_01_mover_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Mechanik"};
		};
	};	
	// Hummingbird
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Czarny"};
			case 1: {_color = "Zielony"};
			case 2: {_color = "Blueline"};
			case 3: {_color = "Czerwony Eliptyczny"};
			case 4: {_color = "Furious Blue"};
			case 5: {_color = "Jeans Blue"};
			case 6: {_color = "Speedy Orange"};
			case 7: {_color = "Sunset Redline"};
			case 8: {_color = "Vrana Rot"};
			case 9: {_color = "Waves Blue"};
			case 10: {_color = "Rebellen-Digital"};
			case 11: {_color = "Policja"};
			case 12: {_color = "Medyk"};
			case 13: {_color = "RedBull"};
			case 14: {_color = "Rebel"};
			case 15: {_color = "Szaro-Pomarańczowy"};
			case 16: {_color = "Jasnoszary-Pomarańczowy"};
			case 17: {_color = "Brązowy"};
			case 18: {_color = "Beżowy"};
			case 19: {_color = "Wespe"};
			case 20: {_color = "Blue-Hell-Dunkel"};
			case 21: {_color = "Energy"};
		};
	};
	// Orca
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Czarny"};
			case 1: {_color = "Biało / Niebieski"};
			case 2: {_color = "Pustynny"};
			case 3: {_color = "Policja"};
			case 4: {_color = "Medyk"};
			case 5: {_color = "Rebellen"};
		};
	};
	// Ghosthawk
	case "B_Heli_Transport_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Policja"};
		};
	};
	// Hellcat
	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Policja"};
			case 1: {_color = "Donatorski"};
		};
	};
	// Mohawk
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
			case 2: {_color = "Rebel"};
			case 3: {_color = "Medyk"};
		};
	};
	// Hunter
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{			
			case 0: {_color = "Policja"};
			case 1: {_color = "Podstawowy"};
			case 2: {_color = "Czarny"};
			case 3: {_color = "Podstawowy"};
			case 4: {_color = "Czarny"};
            case 5: {_color = "9do"};
    		case 6: {_color = "Gwardian"};
        };
	};
	// Hunter
	case "B_MRAP_01_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Policja"};
		};
	};
	// Ifrit
	case "O_MRAP_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Brązowy"};
			case 1: {_color = "Szary"};
			case 2: {_color = "Podstawowy"};
			case 3: {_color = "Niebieski"};
			case 4: {_color = "Czerwony"};
		};
	};
	// Strider
	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Policja"};
		};
	};
};

_color;