#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",80000], 
			["C_Kart_01_Fuel_F",80000], 
			["C_Kart_01_Red_F",80000], 
			["C_Kart_01_Vrana_F",80000] 
		];
	};
	case "med_shop":
	{
				
		if(__GETC__(life_medicLevel) == 1) then
		{		
			_return = [
			["C_Offroad_01_F",16666], 
			["C_Offroad_01_repair_F",5000]
			];
		};
		
		if(__GETC__(life_medicLevel) == 2) then
		{		
			_return = [
			["C_Offroad_01_F",16666], 
			["C_Offroad_01_repair_F",5000], 
			["C_SUV_01_F",30000],
			["O_Truck_02_medical_F",50000]
			];
		};
		
		if(__GETC__(life_medicLevel) == 3) then
		{		
			_return = [
			["C_Offroad_01_F",16666], 
			["C_Offroad_01_repair_F",5000], 
			["C_SUV_01_F",30000],
			["O_Truck_02_medical_F",50000],
            ["C_Hatchback_01_sport_F",65000]
			];
		};
		
		if(__GETC__(life_medicLevel) == 4) then
		{		
			_return = [
			["C_Offroad_01_F",16666], 
			["C_Offroad_01_repair_F",5000], 
			["C_SUV_01_F",30000],  
			["O_Truck_03_medical_F",80000],
			["C_Hatchback_01_sport_F",65000] 
			];
		};
	};
	
	case "med_air_hs": {
	
		if(__GETC__(life_medicLevel) == 1) then
		{		
			_return = [
			["B_Heli_Light_01_F",100000]
			];
		};
	
		if(__GETC__(life_medicLevel) == 2) then
		{		
			_return = [
			["B_Heli_Light_01_F",100000],
			["O_Heli_Light_02_unarmed_F",500000]
			];
		};
				
		if(__GETC__(life_medicLevel) == 3) then
		{		
			_return = [
			["B_Heli_Light_01_F",100000],
			["O_Heli_Light_02_unarmed_F",500000],
			["I_Heli_Transport_02_F",1100000]
			];
		};
		
		if(__GETC__(life_medicLevel) == 4) then
		{		
			_return = [
			["B_Heli_Light_01_F",100000], 
			["O_Heli_Light_02_unarmed_F",500000], 
			["I_Heli_Transport_02_F",1100000], 
			["O_Heli_Transport_04_F",1650000], 
			["O_Heli_Transport_04_medevac_F",2000000] 
			];
		};
	};

	
	case "ASF_shop":
	{
		if(__GETC__(life_ASFlevel) >= 1) then
		{		
			_return = [
			["C_SUV_01_F",10000] 
			];
		};
		if(__GETC__(life_ASFlevel) >= 2) then
		{		
			_return pushBack ["B_MRAP_01_F",50000]; 
		};		
	
	};
			
	
	case "ASF_air_hs": {
	
		if(__GETC__(life_ASFlevel) >= 1) then
		{		
			_return = [
			["B_Heli_Light_01_F",10000] 
			];
		};
		if(__GETC__(life_ASFlevel) >= 2) then
		{		
			_return = [
			["B_Heli_Light_01_F",10000], 
			["I_Heli_light_03_unarmed_F",50000], 
			["O_Heli_Transport_04_bench_F",150000] 
			];
		};		
	};
	
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2333], 
			["C_Hatchback_01_F",6500], 
			["C_Offroad_01_F",16666], 
			["C_SUV_01_F",30000], 
			["C_Van_01_transport_F",53333] 
		];
	};
	
	case "don_car":
	{
		if(__GETC__(life_donator) == 0) exitWith {hint "Nie masz praw Rebelki0"; closeDialog 0;};
		if(license_civ_donator1) then
		{
			_return pushBack
			["B_Quadbike_01_F",2099]; 
			_return pushBack
			["C_Hatchback_01_F",5850]; 
			_return pushBack
			["C_Offroad_01_F",15000]; 
			_return pushBack
			["C_SUV_01_F",27000]; 
			_return pushBack
			["C_Van_01_transport_F",48000]; 
		};
		if(license_civ_donator2) then
		{
			_return pushBack
			["B_Quadbike_01_F",1749]; 
			_return pushBack
			["C_Hatchback_01_F",4875]; 
			_return pushBack
			["C_Offroad_01_F",12500]; 
			_return pushBack
			["C_SUV_01_F",22500]; 
			_return pushBack
			["C_Van_01_transport_F",40000]; 
		};
		if(license_civ_donator3) then
		{
			_return pushBack
			["B_Quadbike_01_F",1166]; 
			_return pushBack
			["C_Hatchback_01_F",3250]; 
			_return pushBack
			["C_Offroad_01_F",8333]; 
			_return pushBack
			["C_SUV_01_F",15000]; 
			_return pushBack
			["C_Van_01_transport_F",26667];
		};
	};
	
	
	case "civ_truck":
	{
		_return =
		[
		["C_Van_01_box_F",100000],
		["I_Truck_02_transport_F",333333],
		["I_Truck_02_covered_F",500000],
		["B_Truck_01_transport_F",1000000],
		["B_Truck_01_covered_F",1666666],
		["B_Truck_01_box_F",3166667],
		["O_Truck_03_transport_F",600000],
		["O_Truck_03_covered_F",800000],		
		["O_Truck_03_device_F",2333333]
		];		
	};
	
	case "don_truck":
	{
		if(__GETC__(life_donator) == 0) exitWith {hint "Nie masz praw Rebelki0"; closeDialog 0;};
		if(license_civ_donator1) then
		{
			_return pushBack
			["C_Van_01_box_F",90000];
			_return pushBack
			["I_Truck_02_transport_F",300000];
			_return pushBack
			["I_Truck_02_covered_F",450000];
			_return pushBack
			["B_Truck_01_transport_F",900000];
			_return pushBack
			["B_Truck_01_covered_F",1500000];	
			_return pushBack
			["B_Truck_01_box_F",2850001];
			_return pushBack
			["O_Truck_03_transport_F",540000];
			_return pushBack
			["O_Truck_03_covered_F",720000];
			_return pushBack
			["O_Truck_03_device_F",2100000];			
		};
	
		if(license_civ_donator2) then
		{
			_return pushBack
			["C_Van_01_box_F",75000];
			_return pushBack
			["I_Truck_02_transport_F",250000];
			_return pushBack
			["I_Truck_02_covered_F",375000];
			_return pushBack
			["B_Truck_01_transport_F",750000];
			_return pushBack
			["B_Truck_01_covered_F",1250000];
			_return pushBack
			["B_Truck_01_box_F",2375001];
			_return pushBack
			["O_Truck_03_transport_F",450000];
			_return pushBack
			["O_Truck_03_covered_F",600000];
			_return pushBack
			["O_Truck_03_device_F",1750000];
		};
		
		if(license_civ_donator3) then
		{
			_return pushBack
			["C_Van_01_box_F",50000];
			_return pushBack
			["I_Truck_02_transport_F",166667];
			_return pushBack
			["I_Truck_02_covered_F",250000];
			_return pushBack
			["B_Truck_01_transport_F",500000];
			_return pushBack
			["B_Truck_01_covered_F",833333];
			_return pushBack
			["B_Truck_01_box_F",1583334];
			_return pushBack
			["O_Truck_03_transport_F",300000];
			_return pushBack
			["O_Truck_03_covered_F",400000];
			_return pushBack
			["O_Truck_03_device_F",1166666];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["C_Heli_Light_01_civil_F",600000],
			["B_Heli_Light_01_F",800000],	
			["O_Heli_Light_02_unarmed_F",1400000],
			["O_Heli_Transport_04_F",3500000],
			["O_Heli_Transport_04_covered_F",3500000],
			["I_Heli_Transport_02_F",3000000]
		];
	};
	
	case "don_air":
	{
		if(__GETC__(life_donator) == 0) exitWith {hint "Nie masz praw Rebelki0"; closeDialog 0;};
		if(license_civ_donator1) then
		{
			_return pushBack
			["C_Heli_Light_01_civil_F",540000];
			_return pushBack
			["B_Heli_Light_01_F",720000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",1260000];
			_return pushBack
			["O_Heli_Transport_04_F",3150000];
			_return pushBack
			["I_Heli_Transport_02_F",2700000];
			
		};
		
		if(license_civ_donator2) then
		{
			_return pushBack
			["C_Heli_Light_01_civil_F",450000];
			_return pushBack
			["B_Heli_Light_01_F",600000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",1050000];
			_return pushBack
			["O_Heli_Transport_04_F",2625000];
			_return pushBack
			["I_Heli_Transport_02_F",2250000];
		};
		
		if(license_civ_donator3) then
		{
			_return pushBack
			["C_Heli_Light_01_civil_F",300000];
			_return pushBack
			["B_Heli_Light_01_F",400000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",700000];
			_return pushBack
			["O_Heli_Transport_04_F",1750000];
			_return pushBack
			["I_Heli_Transport_02_F",1500000];
             _return pushBack
            ["B_Heli_Transport_03_unarmed_F",5000000];
            _return pushBack
            ["O_Heli_Transport_04_bench_F",3900000];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["C_SUV_01_F",25000],
			["O_MRAP_02_F",6000000],
			["B_Heli_Light_01_F",600000],
			["O_Heli_Light_02_unarmed_F",1400000],
			["I_Heli_Transport_02_F",3000000],
			["B_Heli_Transport_03_unarmed_F",7000000]
			
		];
		
		if(license_civ_rebel) then
		{
			_return pushBack
			["B_G_Offroad_01_armed_F",1600000];
		};
	};
			
	case "cop_car":
	{

		if(__GETC__(life_coplevel) >= 1) then
		{				
			_return pushBack
			["C_Offroad_01_F",16667];
			_return pushBack
			["C_SUV_01_F",30000];
		};
		if(__GETC__(life_coplevel) >= 2) then
		{
			_return pushBack
			["C_Hatchback_01_sport_F",53333];
		};		
		if(__GETC__(life_coplevel) >= 3) then
		{
			_return pushBack
			["B_MRAP_01_F",366667];
		};
		if(__GETC__(life_coplevel) >= 4) then
		{
			_return pushBack
			["B_MRAP_01_hmg_F",2533333];
		};		
		if(__GETC__(life_coplevel) >= 5) then
		{
			_return pushBack
			["I_MRAP_03_F",1000000];
		};
        if(__GETC__(life_coplevel) >= 6) then
		{
			_return pushBack
			["I_MRAP_03_F",1000000];
		};
	};
	case "cop_air":
	{
	
		if(__GETC__(life_coplevel) >= 1) then
		{				
			_return pushBack
			["B_Heli_Light_01_F",100000];
		};
		if(__GETC__(life_coplevel) >= 2) then
		{
			_return pushBack
			["O_Heli_Light_02_unarmed_F",966670];

		};
		if(__GETC__(life_coplevel) >= 4) then
		{
			_return pushBack
			["I_Heli_light_03_unarmed_F",1333330];
		};		
		if(__GETC__(life_coplevel) >= 5) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",2533333];
		};
        if(__GETC__(life_coplevel) >= 6) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",2533333];
		};
	};
    
	case "sek_hq":
	{
		if(license_cop_sek) then
		{
			_return = [
			["I_MRAP_03_F",300000],
			["I_MRAP_03_hmg_F",3000000],
			["B_MRAP_01_F",500000],
			["C_Hatchback_01_sport_F",250000],
			["B_Heli_Transport_01_F",3200000],
			["I_Heli_light_03_unarmed_F",1000000],
			["B_Heli_Transport_03_unarmed_F",5000000]
			];
		};
	};
		
	case "cop_ship":
	{
		if(__GETC__(life_coplevel) >= 1) then
		{
			_return pushBack
			["B_Lifeboat",3000];
		};
		if(__GETC__(life_coplevel) >= 2) then
		{
			_return pushBack
			["C_Boat_Civil_01_police_F",20000];
		};
		if(__GETC__(life_coplevel) >= 3) then
		{
			_return pushBack
			["B_Boat_Armed_01_minigun_F",133333];
			_return pushBack
			["B_SDV_01_F",10000];
		};
	};

	case "donator1":
	{
		if(__GETC__(life_donator) == 0) exitWith {hint "Nie masz praw Rebelki0"; closeDialog 0;};
		if(license_civ_donator1) then
		{
			_return pushBack
			["B_Quadbike_01_F",2099]; 
			_return pushBack
			["C_Hatchback_01_F",5850]; 
			_return pushBack
			["C_Offroad_01_F",15000]; 
			_return pushBack
			["C_SUV_01_F",27000]; 
			_return pushBack
			["C_Van_01_transport_F",48000]; 
			
			_return pushBack
			["C_Van_01_box_F",90000];
			_return pushBack
			["I_Truck_02_transport_F",300000];
			_return pushBack
			["I_Truck_02_covered_F",450000];
			_return pushBack
			["B_Truck_01_transport_F",900000];
			_return pushBack
			["B_Truck_01_covered_F",1500000];	
			_return pushBack
			["B_Truck_01_box_F",2850001];
			_return pushBack
			["O_Truck_03_transport_F",540000];
			_return pushBack
			["O_Truck_03_covered_F",720000];
			_return pushBack
			["O_Truck_03_device_F",2100000];
			_return pushBack
			["O_Truck_03_repair_F",533333];
			
			_return pushBack
			["C_Heli_Light_01_civil_F",540000];
			_return pushBack
			["B_Heli_Light_01_F",720000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",1260000];
			_return pushBack
			["O_Heli_Transport_04_F",3150000];
			_return pushBack
			["I_Heli_Transport_02_F",2700000];			
		};
	};
	
	case "donator2":
	{
		if(__GETC__(life_donator) == 0) exitWith {hint "Nie masz praw Rebelki0"; closeDialog 0;};
		if(license_civ_donator2) then
		{
			_return pushBack
			["B_Quadbike_01_F",1749]; 
			_return pushBack
			["C_Hatchback_01_F",4875]; 
			_return pushBack
			["C_Offroad_01_F",12500]; 
			_return pushBack
			["C_SUV_01_F",22500]; 
			_return pushBack
			["C_Hatchback_01_sport_F",366666]; 
			_return pushBack
			["C_Van_01_transport_F",40000]; 
			
			_return pushBack
			["C_Van_01_box_F",75000];
			_return pushBack
			["I_Truck_02_transport_F",250000];
			_return pushBack
			["I_Truck_02_covered_F",375000];
			_return pushBack
			["B_Truck_01_transport_F",750000];
			_return pushBack
			["B_Truck_01_covered_F",1250000];
			_return pushBack
			["B_Truck_01_box_F",2375001];
			_return pushBack
			["O_Truck_03_transport_F",450000];
			_return pushBack
			["O_Truck_03_covered_F",600000];
			_return pushBack
			["O_Truck_03_device_F",1750000];
			_return pushBack
			["O_Truck_03_repair_F",533333];
			
			_return pushBack
			["C_Heli_Light_01_civil_F",450000];
			_return pushBack
			["B_Heli_Light_01_F",600000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",1050000];
			_return pushBack
			["O_Heli_Transport_04_F",2625000];
			_return pushBack
			["I_Heli_Transport_02_F",2250000];
		};
	};
	
	case "donator3":
	{
		if(__GETC__(life_donator) == 0) exitWith {hint "Nie masz praw Rebelki0"; closeDialog 0;};
		if(license_civ_donator3) then
		{
			_return pushBack
			["B_Quadbike_01_F",1166]; 
			_return pushBack
			["C_Hatchback_01_F",3250]; 
			_return pushBack
			["C_Offroad_01_F",8333]; 
			_return pushBack
			["C_SUV_01_F",15000]; 
			_return pushBack
			["C_Hatchback_01_sport_F",200000];
			_return pushBack
			["C_Van_01_transport_F",26667];
			_return pushBack
			["B_MRAP_01_F",2500000];
            _return pushBack
            ["O_MRAP_02_F",3100000];
			
			_return pushBack
			["C_Van_01_box_F",50000];
			_return pushBack
			["I_Truck_02_transport_F",166667];
			_return pushBack
			["I_Truck_02_covered_F",250000];
			_return pushBack
			["B_Truck_01_transport_F",500000];
			_return pushBack
			["B_Truck_01_covered_F",833333];
			_return pushBack
			["B_Truck_01_box_F",1583334];
			_return pushBack
			["O_Truck_03_transport_F",300000];
			_return pushBack
			["O_Truck_03_covered_F",400000];
			_return pushBack
			["O_Truck_03_device_F",1166666];
			_return pushBack
			["O_Truck_03_repair_F",533333];
			
			_return pushBack
			["C_Heli_Light_01_civil_F",300000];
			_return pushBack
			["B_Heli_Light_01_F",400000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",700000];
			_return pushBack
			["O_Heli_Transport_04_F",1750000];
			_return pushBack
			["I_Heli_Transport_02_F",1500000];
			_return pushBack
			["I_Heli_light_03_unarmed_F",4500000];
            _return pushBack
            ["B_Heli_Transport_03_unarmed_F",3900000];
            _return pushBack
            ["O_Heli_Transport_04_bench_F",3000000];
		};
	};
};
_return;