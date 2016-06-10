/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/


switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction["Zarzuć sieć",life_fnc_dropFishingNet,"",0,false,false,"",'(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction["Obrabuj",life_fnc_robAction,"",0,false,false,"",'!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (animationState cursorTarget=="Incapacitated" or animationState cursorTarget=="amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon") && !(cursorTarget getVariable["robbed",FALSE])']];
		//Zabierz Telefon
		life_actions = life_actions + [player addAction["Odbierz Telefon",life_fnc_robsmartphoneAction,"",0,false,false,"",'!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (animationState cursorTarget=="Incapacitated" or animationState cursorTarget=="amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon")']];
		//take them organs
		life_actions = life_actions + [player addAction["Wytnij Nerkę",life_fnc_takeOrgans,"",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable ["missingOrgan",FALSE]) && !(player getVariable "Escorting") && !(player getVariable "hasOrgan") && !(player getVariable "transporting") && animationState cursorTarget == "Incapacitated"']];
		//Kopnij
		life_actions = life_actions + [player addAction["Uderz",life_fnc_punchBallsAction,"",0,false,false,"",'!isNull cursorTarget && player distance cursorTarget < 5 && isPlayer cursorTarget && animationState cursorTarget in ["Incapacitated","amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"]']];
		//Domy
		life_actions = life_actions + [player addAction["<t color='#fdff01'>Przeszukaj Dom</t>",life_fnc_lootHouse,"",0,false,false,"",'vehicle player == player && (typeOf cursorTarget in["Land_u_House_Small_01_V1_F","Land_i_Stone_HouseBig_V2_F","Land_i_Stone_HouseBig_V1_F","Land_d_House_Small_01_V1_F","Land_Unfinished_Building_01_F","Land_u_House_Big_02_V1_F"]) && (vehicle player) distance cursorTarget < 5 && !(cursorTarget getVariable ["looted",FALSE]) && playerSide == civilian']];
		//Full Heal
		life_actions = life_actions + [player addAction["<t color='#01BC06'>Ulecz się</t>",life_fnc_FullHeal,"",99,false,false,"",' vehicle player == player && (damage player) > 0.01 && ("Medikit" in (Backpackitems player)) ']];
	
	
		life_actions pushBack (player addAction["<t color='#fde003'>Zbieraj Heroine</t>",life_fnc_gather,["heroinu",2],0,false,false,"",'
		!life_action_in_use && (player distance (getMarkerPos "heroin_1") < 15) && (vehicle player == player) && (life_carryWeight + (["heroinu"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		life_actions pushBack (player addAction["<t color='#fde003'>Zbieraj Jabłka</t>",life_fnc_gather,["apple",3],0,false,false,"",'
		!life_action_in_use && ((player distance (getMarkerPos "apple_1") < 15) OR (player distance (getMarkerPos "apple_2") < 15) OR (player distance (getMarkerPos "apple_5") < 50)) && (vehicle player == player) ']);
		life_actions pushBack (player addAction["<t color='#fde003'>Zbieraj Brzoskwinie</t>",life_fnc_gather,["peach",3],0,false,false,"",'
		!life_action_in_use && ((player distance (getMarkerPos "peaches_1") < 15) OR (player distance (getMarkerPos "peaches_2") < 15)) && (vehicle player == player) ']);
		life_actions pushBack (player addAction["<t color='#fde003'>Zbieraj Brzoskwinie</t>",life_fnc_gather,["peach",3],0,false,false,"",'
		!life_action_in_use && ((player distance (getMarkerPos "peaches_3") < 15) OR (player distance (getMarkerPos "peaches_4") < 15)) && (vehicle player == player) ']);
		life_actions pushBack (player addAction["<t color='#fde003'>Zbieraj Jablka</t>",life_fnc_gather,["apple",3],0,false,false,"",'
		!life_action_in_use && ((player distance (getMarkerPos "apple_3") < 15) OR (player distance (getMarkerPos "apple_4") < 15)) && (vehicle player == player) ']);
		life_actions pushBack (player addAction["<t color='#fde003'>Zbieraj Marihuane</t>",life_fnc_gather,["cannabis",2],0,false,false,"",'
		!life_action_in_use && ((player distance (getMarkerPos "weed_1") < 15) OR (player distance (getMarkerPos "weed_2") < 15)) && (vehicle player == player) && (life_carryWeight + (["cannabis"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		life_actions pushBack (player addAction["<t color='#fde003'>Zbieraj Kokaine</t>",life_fnc_gather,["cocaine",2],0,false,false,"",'
		!life_action_in_use && (player distance (getMarkerPos "cocaine_1") < 15) && (vehicle player == player) && (life_carryWeight + (["cocaine"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		life_actions pushBack (player addAction["<t color='#fde003'>Zbieraj Bawełne</t>",life_fnc_gather,["baumwollep",2],0,false,false,"",'
		!life_action_in_use && (player distance (getMarkerPos "baumwolle_1") < 15) && (vehicle player == player) && (life_carryWeight + (["baumwollep"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		life_actions pushBack (player addAction["<t color='#fde003'>Kop Uran</t>",life_fnc_gather,["uran1",1],0,false,false,"",'
		!life_action_in_use && (player distance (getMarkerPos "uran_1") < 15) && (vehicle player == player) && (life_carryWeight + (["uran1"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		life_actions pushBack (player addAction["<t color='#fde003'>Wydobywaj Rope</t>",life_fnc_gather,["oilu",2],0,false,false,"",'
		!life_action_in_use && ((player distance (getMarkerPos "oil_1") < 15) OR (player distance (getMarkerPos "oil_2") < 15)) && (vehicle player == player) && (life_inv_pickaxe > 0) && (life_carryWeight + (["oilu"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		life_actions pushBack (player addAction["<t color='#fde003'>Zbieraj Tytoń</t>",life_fnc_gather,["tabaku",2],0,false,false,"",'
		!life_action_in_use && (player distance (getMarkerPos "tabak_1") < 15) && (vehicle player == player) && (life_carryWeight + (["tabaku"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		life_actions pushBack (player addAction["<t color='#fde003'>Zbieraj Chmiel</t>",life_fnc_gather,["hopfenu",2],0,false,false,"",'
		!life_action_in_use && (player distance (getMarkerPos "hopfen_1") < 15) && (vehicle player == player) && (life_carryWeight + (["hopfenu"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		life_actions pushBack (player addAction["<t color='#fde003'>Zbieraj Zboże</t>",life_fnc_gather,["getreideu",2],0,false,false,"",'
		!life_action_in_use && (player distance (getMarkerPos "getreide_1") < 15) && (vehicle player == player) && (life_carryWeight + (["getreideu"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		life_actions pushBack (player addAction["<t color='#fde003'>Zbieraj Trzcine</t>",life_fnc_gather,["zuckeru",2],0,false,false,"",'
		!life_action_in_use && (player distance (getMarkerPos "zucker_1") < 15) && (vehicle player == player) && (life_carryWeight + (["zuckeru"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		life_actions pushBack (player addAction["<t color='#fde003'>Zbieraj Winogrona</t>",life_fnc_gather,["traubenu",2],0,false,false,"",'
		!life_action_in_use && (player distance (getMarkerPos "trauben_1") < 15) && (vehicle player == player) && (life_carryWeight + (["traubenu"] call life_fnc_itemWeight)) <= life_maxWeight ']);


		life_actions pushBack (player addAction["<t color='#fde003'>Kop Miedź</t>",life_fnc_gather,["copperore",2],0,false,false,"",'
		!life_action_in_use && (player distance (getMarkerPos "lead_1") < 15) && (vehicle player == player) && (life_carryWeight + (["copperore"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		life_actions pushBack (player addAction["<t color='#fde003'>Kop Żelazo</t>",life_fnc_gather,["ironore",2],0,false,false,"",'
		!life_action_in_use && (player distance (getMarkerPos "iron_1") < 15) && (vehicle player == player) && (life_carryWeight + (["ironore"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		life_actions pushBack (player addAction["<t color='#fde003'>Kop Piasek</t>",life_fnc_gather,["sand",2],0,false,false,"",'
		!life_action_in_use && (player distance (getMarkerPos "sand_1") < 15) && (vehicle player == player) && (life_carryWeight + (["sand"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		life_actions pushBack (player addAction["<t color='#fde003'>Kop Kamien</t>",life_fnc_gather,["rock",2],0,false,false,"",'
		!life_action_in_use && (player distance (getMarkerPos "rock_1") < 15) && (vehicle player == player) && (life_carryWeight + (["rock"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		life_actions pushBack (player addAction["<t color='#fde003'>Kop Diament</t>",life_fnc_gather,["diamond",2],0,false,false,"",'
		!life_action_in_use && (player distance (getMarkerPos "diamond_1") < 15) && (vehicle player == player) && (life_carryWeight + (["diamond"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		life_actions pushBack (player addAction["<t color='#fde003'>Kop Sól</t>",life_fnc_gather,["salt",2],0,false,false,"",'
		!life_action_in_use && (player distance (getMarkerPos "salt_1") < 15) && (vehicle player == player) && (life_carryWeight + (["salt"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		
		life_actions pushBack (player addAction["<t color='#fde003'>Kop Siarke</t>",life_fnc_gather,["schwefelu",2],0,false,false,"",'
		!life_action_in_use && (player distance (getMarkerPos "schwefel_1") < 15) && (vehicle player == player) && (life_carryWeight + (["schwefelu"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		
		life_actions pushBack (player addAction["<t color='#fde003'>Kop Węgiel</t>",life_fnc_gather,["holzu",2],0,false,false,"",'
		!life_action_in_use && (player distance (getMarkerPos "holz_1") < 15) && (vehicle player == player) && (life_carryWeight + (["holzu"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		
		life_actions pushBack (player addAction["<t color='#fde003'>Kop Srebro</t>",life_fnc_gather,["silberu",2],0,false,false,"",'
		!life_action_in_use && (player distance (getMarkerPos "silber_1") < 15) && (vehicle player == player) && (life_carryWeight + (["silberu"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		
		life_actions pushBack (player addAction["<t color='#fde003'>Kop Cyne</t>",life_fnc_gather,["zinnu",2],0,false,false,"",'
		!life_action_in_use && (player distance (getMarkerPos "zinn_1") < 15) && (vehicle player == player) && (life_carryWeight + (["zinnu"] call life_fnc_itemWeight)) <= life_maxWeight ']);
		
	};
	
	case west:
	{
		life_actions = [player addAction["Badanie Narkotyków i Alkoholu",life_fnc_drugtestAction,cursorTarget,0,false,true,"",' !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && animationState cursorTarget == "AmovPercMstpSnonWnonDnon_Ease" && (cursorTarget getVariable ["restrained",false]) && (side cursorTarget == civilian) && player distance cursorTarget < 2.5 && !(cursorTarget getVariable "Escorting") ']];
		
		life_actions = [player addAction["<t color='#FF0000'>Zgaś Jointa</t>",life_fnc_extinguishJoint,"",6, false, true, "",' !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && animationState cursorTarget == "AmovPercMstpSnonWnonDnon_Ease" && (cursorTarget getVariable ["restrained",false]) && (side cursorTarget == civilian) && player distance cursorTarget < 2.5 && (cursorTarget getVariable ["smoke_weed",false]) && (cursorTarget getVariable ["restrained",false]) ']];
				
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Pokaz Odznake</t>",life_fnc_copShowLicense,"",1,false,true,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable "restrained")']];
		//CopEnter
		life_actions pushBack (player addAction["Wejdź na Kierowce",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']);
		life_actions pushBack (player addAction["Wejdź na Pasażera",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5 && (!(cursorTarget isKindOf "B_Heli_Attack_01_F"))']);
		life_actions pushBack (player addAction["Wejdź na Komandera",life_fnc_copEnter,"commander",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5 && ((cursorTarget isKindOf "B_Heli_Attack_01_F")||(cursorTarget isKindOf "B_Heli_Transport_01_F")||(cursorTarget isKindOf "B_MRAP_01_hmg_F"))']);
		life_actions pushBack (player addAction["Wyjdź",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']);
		
		//Weapon Removing
		life_actions = life_actions + [player addAction["Usuń Przedmiot",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'count(nearestObjects [player,["weaponholder"],3])>0']];
		};
	
	case independent:
	{
			life_actions pushBack (player addAction["Wejdź na Kierowce",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']);
			life_actions pushBack (player addAction["Wejdź na Pasażera",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5 && (!(cursorTarget isKindOf "B_Heli_Attack_01_F"))']);
			life_actions pushBack (player addAction["Wyjdź",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']);			
		
			//Impound Vehicle
			life_actions pushBack (player addAction["Odholuj Pojazd",life_fnc_impoundAction,false,90,false,false,"",'!isNull cursorTarget && alive cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && (cursorTarget isKindOf "Car" || cursorTarget isKindOf "Air" || cursorTarget isKindOf "Ship" ) && !(typeOf cursorTarget in ["O_MRAP_02_F", "B_G_Offroad_01_armed_F"] || (cursorTarget getVariable["illegalVehicle",false]))' ]);
			//Pull out of car
			life_actions pushBack (player addAction["Wyciągnij z Pojazdu",life_fnc_pulloutAction,cursorTarget,0,false,false,"",' !isNull cursorTarget && (player distance cursorTarget) < 4 && (count crew cursorTarget) > 0 && (cursorTarget isKindOF "Car" || cursorTarget isKindOf "Ship" || cursorTarget isKindOf "Air")']);
			
	};
};
