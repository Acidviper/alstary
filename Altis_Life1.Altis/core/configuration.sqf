#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_siren2_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 1; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gathering = false;
life_tracked = [];
life_fatigue = 0; //Set the max fatigue limit (50%)
life_request_timer = false;
life_schutz = false;
life_channel_send = false; 
life_TankLaster = 1;
life_EVGAMasked = 0;
nn_last_vehicles = [];
nn_empInUse = false;
life_fadeSound = false;
life_looting = false;

//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for civs and cops? (Medics excluded for now)

//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,25000); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,4); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,400000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,150000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

__CONST__(life_enableFatigue,true); //Enable / Disable the ARMA 3 Fatigue System

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];

/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).


/*
*****************************
****** Life Variables *******
*****************************
*/

life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_use_atm_2 = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,1000);
__CONST__(life_impound_boat,1000);
__CONST__(life_impound_air,1000);
life_istazed = false;
life_isdowned = false;
life_my_gang = ObjNull;
life_god = false; //Add this
life_frozen = false; //And this
life_markers = false; //Finally this
life_drugged_cocaine = -1;
life_drugged_cocaine_duration = 10; 
life_drugged_weed = -1;
life_drugged_weed_duration = 3;
life_vehicles = [];
bank_robber = [];
life_nlrtimer_stop = false;
life_nlrtimer_running = false;


switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 100000; //Starting Bank Money
		life_paycheck = 2500;
	};
	case civilian: 
	{
		life_atmcash = 50000; //Starting Bank Money
		life_paycheck = 2000; //Paycheck Amount
	};
	
	case independent:
	{
		life_atmcash = 50000;
		life_paycheck = 8000;
	};
	
	case east:
	{
		life_atmcash = 20000; //Starting Bank Money
		life_paycheck = 1000; //Paycheck Amount
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","O_MRAP_02_hmg_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_tracker",
	"life_inv_getreideu",
	"life_inv_holzu",
	"life_inv_hopfenu",
	"life_inv_schwefelu",
	"life_inv_silberu",
	"life_inv_tabaku",
	"life_inv_traubenu",
	"life_inv_zinnu",
	"life_inv_zuckeru",
	"life_inv_getreideip",
	"life_inv_tabakip",
	"life_inv_zuckerip",
	"life_inv_eisenp",
	"life_inv_getreidep",
	"life_inv_holzp",
	"life_inv_hopfenp",
	"life_inv_schwefelp",
	"life_inv_silberp",
	"life_inv_tabakp",
	"life_inv_traubenp",
	"life_inv_zinnp",
	"life_inv_zuckerp",
	"life_inv_bronze",
	"life_inv_schmuck",
	"life_inv_pbrau",
	"life_inv_spulver",
	"life_inv_kkugel",
	"life_inv_pkugel",
	"life_inv_speedbomb",
	"life_inv_uran1",
	"life_inv_uran2",
	"life_inv_uran3",
	"life_inv_uran4",
	"life_inv_uran5",
	"life_inv_uranip",
	"life_inv_housewarn",
	"life_inv_baumwollep",
	"life_inv_empmodul",
	"life_inv_kidney",
	"life_inv_skalpel",
	"life_inv_ptools",
	"life_inv_gagkit"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	
	["license_cop_air","cop"],
	["license_cop_sek","cop"],
	["license_cop_cg","cop"],
	["license_med_air","med"],
	["license_civ_donator","civ"],
	["license_civ_donator1","civ"],
    ["license_civ_donator2","civ"],
	["license_civ_donator3","civ"],
	["license_civ_home","civ"],
	["license_civ_rebel","civ"],	
	["license_civ_gun","civ"],
	["license_civ_driver","civ"],
	["license_civ_truck","civ"],
	["license_civ_air","civ"],
	["license_civ_boat","civ"],
	["license_civ_dive","civ"],
	["license_civ_heroin","civ"],
	["license_civ_coke","civ"],
	["license_civ_marijuana","civ"],	
	["license_civ_oil","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_civ_brauer","civ"],
	["license_civ_nudeln","civ"],
	["license_civ_wein","civ"],
	["license_civ_zigaretten","civ"],
	["license_civ_zucker","civ"],
	["license_civ_whiskey","civ"],
	["license_civ_zigarren","civ"],
	["license_civ_rum","civ"],
	["license_civ_holz","civ"],
	["license_civ_schwefel","civ"],
	["license_civ_silber","civ"],
	["license_civ_zinn","civ"],
	["license_civ_gusseisen","civ"],
	["license_civ_bronze","civ"],
	["license_civ_schmuck","civ"],
	["license_civ_pbrau","civ"],
	["license_civ_kkugel","civ"],
	["license_civ_pkugel","civ"],
	["license_civ_spulver","civ"],
	["license_civ_uran2","civ"],
	["license_civ_uran3","civ"],
	["license_civ_uran4","civ"],
	["license_civ_uran5","civ"],
	["license_civ_uranip","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [
["heroinu",1200],
["heroinp",2500],
["cocaine",1500],
["cocainep",3500],
["cannabis",1200],
["marijuana",2000],
["turtle",3000],
["blastingcharge",10000],
["boltcutter",500],
["getreideip",4000],
["zuckerip",4000],
["tabakip",3900],
["tabakp",3900],
["kkugel",14000],
["spulver",11000],
["pbrau",24700],
["pkugel",62700],
["goldbar",75000],
["uranip",12600],
["kidney",5000],
["lockpick",6000],
["spikeStrip",2500],
["skalpel",9000],
["speedbomb",10000]
];

/*
	Resources list
	
	to remove the ability to gather a specific resource just comment it out on the list (all zones will be deactivated)
*/
resource_list = [
	"apple", 
	"peach", 
	"heroinu", 
	"cocaine", 
	"cannabis", 
	"methu", 
	"traubenu", 
	"zuckeru", 
	"getreideu", 
	"hopfenu", 
	"tabaku", 
	"copperore",
	"ironore",
	"salt",
	"sand",
    "diamond",
    "oilu",
	"rock",
	"zinnu",
	"silberu",
	"holzu",
	"schwefelu",
	"uran1",
	"baumwollep"
];


/*
	Sell / buy arrays
*/
sell_array = 
[

	["apple",50],
	["salema",300],
	["ornate",500],
	["mackerel",1675],
	["tuna",3000],
	["mullet",850],
	["catshark",2000],
	["rabbit",65],
	["turtle",30000],
	["water",5],
	["coffee",5],
	["turtlesoup",300],
	["donuts",60],
	["tbacon",25],
	["lockpick",75],
	["pickaxe",750],
	["redgull",200],
	["peach",60],
	["fuelF",100],
	["spikeStrip",500],
	["tracker",250],
	//zbieranie
	["goldbar",125000],
	["cocainep",9500],
	["cocaine",4500],
	["heroinp",8500],
	["heroinu",2200],
	["marijuana",6000],
	["cannabis",5000],
	["iron_r",2500],
	["copper_r",2000],
	["salt_r",1600],
	["glass",1900],
	["oilp",3500],
	["cement",1300],
	["speedbomb",10000],
	["diamondc",7000],
	//Nowe
	["eisenp",3000],		//Forma do odlewania	
	["getreidep",2500],		//Mąka
	["holzp",2700],			//Węgiel Drzewny
	["hopfenp",5000],		//Piwo
	["schwefelp",3000],		//Siarka w Proszku
	["silberp",6000],		//Srebro
	["tabakp",5000],		//Papierosy
	["traubenp",4200],		//Wino
	["zinnp",3000],			//Cyna
	["zuckerp",500],		//Cukier
	["schmuck",40000],		//Biżuteria
	["bronze",6500],		//Brąz
	["getreideip",6500],	//Whiskey
	["zuckerip",5500],		//Rum
	["tabakip",7000],		//Cygara
	["kkugel",11000],		//Kula Armatnia
	["spulver",6500],		//Proch
	["pbrau",19000],		//Likier
	["pkugel",100000],		//Bomba
	["uranip",50000],		//Brudny Uran
	["uran5",70000],		//Pręty Paliwowe
	["housewarn",500],		//Alarm
	["baumwollep",350],		//Bawełna
	["empmodul",250],
	["kidney",50000],		//Nerka
	["skalpel",100],
	["gagkit",65]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["salema",400],
	["ornate",600],
	["mackerel",1875],
	["tuna",3500],
	["mullet",1050],
	["catshark",2500],
	["rabbit",65],
	["water",10],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",10000],
	["pickaxe",1200],
	["redgull",1500],
	["fuelF",850],
	["peach",75],
	["spikeStrip",2500],
	["blastingcharge",300000],
	["boltcutter",120000],
	["defusekit",2500],
	["storagesmall",750000],
	["storagebig",1500000],
	["tracker",10000],
	["hopfenp",10000],
	["traubenp",10000],
	["speedbomb",1500000],
	["housewarn",750000],
	["empmodul",75000],
	["kidney",75000],
	["skalpel",25000],
	["pbrau",30000],
	["cocainep",30000],
	["heroinp",30000],
	["marijuana",30000],
	["ptools",5000]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["hgun_P07_snds_F",0],
	["hgun_P07_F",0],
	["hgun_Rook40_F",0],
	["hgun_Pistol_heavy_01_F",0],
	["SMG_01_F",0],
	["arifle_sdar_F",0],
	["arifle_Mk20C_F",0],
	["arifle_TRG21_F",0],
	["arifle_TRG20_F",0],
	["arifle_Katiba_F",0],
	["arifle_Katiba_C_F",0],
	["arifle_MXC_Black_F",0],
	["arifle_MX_Black_F",0],
	["arifle_MXM_Black_F",0],
	["arifle_MXC_F",0],
	["arifle_MX_F",0],	
	["arifle_MXM_F",0],
	["SMG_02_F",0],
	["srifle_LRR_LRPS_F",0],
	["srifle_EBR_F",0],
	["arifle_MX_SW_Black_F",0],
	["arifle_MX_SW_F",0],	
	["LMG_Zafir_F",0],
	["srifle_GM6_F",0],
	["muzzle_snds_M",0],
	["muzzle_snds_L",0],
	["muzzle_snds_H",0],
	["optic_Aco_smg",0],
	["optic_ACO_grn",0],
	["optic_Aco",0],
	["optic_Arco",0],
	["optic_Hamr",0],
	["optic_Holosight",0],
	["optic_Holosight_smg",0],
	["optic_SOS",0],
	["optic_LRPS",0],
	["optic_MRCO",0],
	["optic_DMS",0],
	["optic_NVS",0],
	["acc_pointer_IR",0],
	["acc_flashlight",0],
	["optic_Yorris",0],
	["HandGrenade_Stone",0],
	["Rangefinder",0],
	["Binocular",0],
	["ItemGPS",0],
	["ToolKit",0],
	["FirstAidKit",0],
	["Medikit",0],
	["NVGoggles",0],
	["NVGoggles_OPFOR",0],
	["ItemMap",0],
	["ItemCompass",0],
	["ItemWatch",0],
	["DemoCharge_Remote_Mag",0],
	["SLAMDirectionalMine_Wire_Mag",0],
	["MineDetector",0],
	["5Rnd_127x108_Mag",0],
	["5Rnd_127x108_APDS_Mag",0],	
	["150Rnd_762x51_Box",0],	
	["100Rnd_65x39_caseless_mag",0],	
	["7Rnd_408_Mag",0],		
	["20Rnd_762x51_Mag",0],
	["30Rnd_45ACP_Mag_SMG_01",0],
	["30Rnd_9x21_Mag",0],	
	["30Rnd_556x45_Stanag",0],
	["20Rnd_762x51_Mag",0],
	["30Rnd_65x39_caseless_green",0],
	["16Rnd_9x21_Mag",0],
	["6Rnd_45ACP_Cylinder",0],
	["20Rnd_556x45_UW_mag",0],
	["9Rnd_45ACP_Mag",0],
	["11Rnd_45ACP_Mag",0],
	["30Rnd_556x45_Stanag_Tracer_Red",0]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["C_Kart_01_Blu_F",2000],
	["C_Kart_01_Fuel_F",2000],
	["C_Kart_01_Red_F",2000],
	["C_Kart_01_Vrana_F",2000],
	["B_Quadbike_01_F",2000],
	["C_Offroad_01_F",2000],
	["C_Offroad_01_repair_F",2000],
	["C_SUV_01_F",2000],
	["C_Hatchback_01_F",2000],
	["C_Hatchback_01_sport_F",2000],
	["C_Van_01_transport_F",2000],	
	["C_Van_01_box_F",2000],
	["I_Truck_02_transport_F",2000],
	["I_Truck_02_covered_F",2000],		
	["O_Truck_03_device_F",2000],
	["B_Truck_01_transport_F",2000],
	["B_Truck_01_covered_F",2000],
	["B_Truck_01_box_F",2000],	
	["C_Rubberboat",2000],
	["C_Boat_Civil_01_F",2000],
	["B_SDV_01_F",2000],	
	["B_Boat_Transport_01_F",2000],
	["C_Boat_Civil_01_police_F",2000],
	["B_Boat_Armed_01_minigun_F",2000],
	["B_Heli_Light_01_F",2000],
	["O_Heli_Light_02_unarmed_F",2000],
	["I_Heli_Transport_02_F",2000],
	["B_Heli_Transport_01_F",2000],
	["B_Heli_Transport_03_F",2000],
	["I_Heli_light_03_unarmed_F",2000],	
	["B_Heli_Transport_03_unarmed_F",2000],	
	["O_Heli_Transport_04_box_F",2000],	
	["O_Heli_Transport_04_bench_F",2000],
	["O_Heli_Transport_04_medevac_F",2000],
	["O_Heli_Transport_04_F",2000],
	["C_Heli_Light_01_civil_F",2000],
	["B_G_Offroad_01_armed_F",2000],
	["O_Heli_Transport_04_black_F",2000],
	["O_MRAP_02_F",2000],
	["O_MRAP_02_hmg_F",2000],
	["B_MRAP_01_F",2000],
	["B_MRAP_01_hmg_F",2000],
	["I_MRAP_03_F",2000],
	["I_MRAP_03_hmg_F",2000],
	["O_Heli_Transport_04_covered_F",2000]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["C_Kart_01_Blu_F",5000],
	["C_Kart_01_Fuel_F",5000],
	["C_Kart_01_Red_F",5000],
	["C_Kart_01_Vrana_F",5000],
	["B_Quadbike_01_F",2000],
	["C_Offroad_01_F",5000],
	["C_Offroad_01_repair_F",5000],
	["C_SUV_01_F",5000],
	["C_Hatchback_01_F",5000],
	["C_Hatchback_01_sport_F",5000],
	["C_Van_01_transport_F",5000],	
	["C_Van_01_box_F",5000],
	["I_Truck_02_transport_F",5000],
	["I_Truck_02_covered_F",5000],		
	["O_Truck_03_device_F",5000],
	["O_Truck_03_covered_F",5000],
	["O_Truck_03_transport_F",5000],
	["B_Truck_01_transport_F",5000],
	["B_Truck_01_covered_F",5000],
	["B_Truck_01_box_F",5000],	
	["C_Rubberboat",5000],
	["C_Boat_Civil_01_F",5000],
	["B_SDV_01_F",5000],	
	["B_Boat_Transport_01_F",5000],
	["C_Boat_Civil_01_police_F",5000],
	["B_Boat_Armed_01_minigun_F",5000],
	["B_Heli_Light_01_F",5000],
	["O_Heli_Light_02_unarmed_F",5000],
	["I_Heli_Transport_02_F",5000],
	["B_Heli_Transport_01_F",5000],
	["I_Heli_light_03_unarmed_F",5000],
	["B_Heli_Transport_03_F",5000],	
	["B_Heli_Transport_03_unarmed_F",5000],	
	["O_Heli_Transport_04_box_F",5000],
	["O_Heli_Transport_04_covered_F",5000],
	["O_Heli_Transport_04_bench_F",5000],
	["O_Heli_Transport_04_medevac_F",5000],
	["O_Heli_Transport_04_F",5000],
	["O_Heli_Transport_04_black_F",5000],
	["C_Heli_Light_01_civil_F",5000],
	["O_MRAP_02_F",5000],
	["O_MRAP_02_hmg_F",5000],
	["B_MRAP_01_F",5000],
	["B_MRAP_01_hmg_F",5000],
	["I_MRAP_03_F",5000],
	["I_MRAP_03_hmg_F",5000],
	["O_Truck_02_medical_F",5000],
	["O_Heli_Transport_04_covered_F",5000]
	
];
__CONST__(life_garage_sell,life_garage_sell);

life_chopshop_sell =
[
	
	["I_Truck_02_transport_F",16667],
	["I_Truck_02_covered_F",25000],		
	["O_Truck_03_device_F",166666],
	["O_Truck_03_covered_F",40000],
	["O_Truck_03_transport_F",30000],
	["B_Truck_01_transport_F",50000],
	["B_Truck_01_covered_F",83333],
	["B_Truck_01_box_F",110000],	
	["O_MRAP_02_F",166666],
	["B_MRAP_01_F",120000],
	["I_MRAP_03_F",120000],
	["B_G_Offroad_01_armed_F",160000],
	["B_Heli_Light_01_F",130000],
	["C_Heli_Light_01_civil_F",130000],
	["O_Heli_Light_02_unarmed_F",170000],
	["I_Heli_Transport_02_F",350000],
	["B_Heli_Transport_03_unarmed_F",500000],
	["O_Heli_Transport_04_covered_F",500000]
];
__CONST__(life_chopshop_sell,life_chopshop_sell);