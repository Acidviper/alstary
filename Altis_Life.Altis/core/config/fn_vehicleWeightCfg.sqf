/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "B_Quadbike_01_F": {25};
	case "C_Offroad_01_F": {120};
	case "B_G_Offroad_01_F": {120};
	case "C_Hatchback_01_F": {80};
	case "C_Hatchback_01_sport_F": {80};
	case "C_SUV_01_F": {100};
	case "C_Van_01_transport_F": {180};
	case "I_G_Van_01_transport_F": {240};
	case "C_Van_01_box_F": {200};
	case "B_MRAP_01_F": {248};
	case "O_MRAP_02_F": {220};
	case "I_MRAP_03_F": {180};	
	case "B_Heli_Light_01_F": {50};
	case "O_Heli_Light_02_unarmed_F": {228};
	case "I_Heli_Transport_02_F": {600};
	case "I_Heli_light_03_unarmed_F": {300};
	case "B_Heli_Transport_03_unarmed_F": {800};
	case "O_Heli_Transport_04_covered_F": {700};
	case "B_Heli_Transport_03_F": {550};
	case "O_Heli_Transport_04_black_F": {15};
	case "O_Heli_Transport_04_F": {150};
	case "O_Heli_Transport_04_covered_F": {300};
	case "O_Heli_Transport_04_box_F": {300};
	case "O_Heli_Transport_04_bench_F": {65};
	case "O_Heli_Transport_04_medevac_F": {65};
	case "C_Heli_Light_01_civil_F": {50};
	case "C_Rubberboat": {75};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
	case "C_Boat_Civil_01_F": {500};
	case "C_Boat_Civil_01_police_F": {150};
	case "C_Boat_Civil_01_rescue_F": {150};	
	case "I_Truck_02_covered_F": {450};
	case "I_Truck_02_transport_F": {350};	
	case "B_Truck_01_box_F": {1200};
	case "B_Truck_01_covered_F": {800};
	case "B_Truck_01_transport_F": {560};	
	case "O_Truck_03_transport_F": {500};
	case "O_Truck_03_covered_F": {600};
	case "O_Truck_03_device_F": {550};
	case "B_Truck_01_ammo_F": {1000};
	case "I_Truck_02_medical_F": {100};
	case "O_Truck_03_medical_F": {100};
	case "B_Truck_01_medical_F": {100};
	case "C_Van_01_fuel_F": {150};
	case "O_Truck_02_fuel_F": {500};
	case "O_Truck_03_fuel_F": {750};
	case "B_Truck_01_fuel_F": {1000};
	case "Land_CargoBox_V1_F": {5000};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {300};
	case "O_Truck_03_repair_F": {600};
	
	default {-1};
};