[] spawn  {
	private["_fnc_food","_fnc_water"];
	_fnc_food = 
	{
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";}
		else
		{
		life_hunger = life_hunger - 10;
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";};
		switch(life_hunger) do {
			case 30: {hint localize "STR_NOTF_EatMSG_1";};
			case 20: {hint localize "STR_NOTF_EatMSG_2";};
			case 10: {hint localize "STR_NOTF_EatMSG_3";player setFatigue 1;};
			};
		};
	};
	
	_fnc_water = 
	{
		if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";}
		else
		{
			life_thirst = life_thirst - 10;
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";};
			switch(life_thirst) do 
			{
				case 30: {hint localize "STR_NOTF_DrinkMSG_1";};
				case 20: {hint localize "STR_NOTF_DrinkMSG_2"; player setFatigue 1;};
				case 10: {hint localize "STR_NOTF_DrinkMSG_3"; player setFatigue 1;};
			};
		};
	};
	
	[] spawn {
	while {true} do
	{
		enableSentences false;
		sleep 20;
	};
};
		
	while{true} do
	{
		sleep 800;
		[] call _fnc_water;
		sleep 800;
		[] call _fnc_food;
	};
};

[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint localize "STR_NOTF_MaxWeight";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};

[] spawn  
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do 
	{
		sleep 0.5;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 5;
					life_hunger = life_hunger - 5;
					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};

[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 8);
		life_maxWeight = life_maxWeightT + _load;
		waitUntil {backpack player != _bp};
		if(backpack player == "") then 
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};

[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_inv_uran4 != 0) then {
			player forceWalk true;
			player setFatigue 1;
			hint "Uran jest ciężki!";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};
[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_inv_uran5 != 0) then {
			player forceWalk true;
			player setFatigue 1;
			hint "Uran jest ciężki";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};
[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_inv_uranip != 0) then {
			player forceWalk true;
			player setFatigue 1;
			hint "Uran jest ciężki!";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};

[] spawn  {
	while{true} do
	{
		waitUntil {(player getVariable "missingOrgan")};
		life_max_health = .50;
		while{(player getVariable "missingOrgan")} do {
			life_thirst =  50;
			life_hunger =  50;
			if(damage player < (1 - life_max_health)) then {player setDamage (1 - life_max_health);};
			"dynamicBlur" ppEffectEnable true;
			"dynamicBlur" ppEffectAdjust [2];
			"dynamicBlur" ppEffectCommit 1;
			sleep 5;
		};
		"dynamicBlur" ppEffectEnable false;
		life_max_health = 1;
	};
};

[] spawn
{
	if(playerside == civilian) then {
		while {true} do
		{
			private["_damage"];
			sleep 1;
			while {((player distance (getMarkerPos "uran_1") < 150) && (player getVariable["Revive",TRUE]))} do
			{
				if(uniform player == "U_C_Scientist") then
				{
					hint "!!! Nosisz Kombinezon przeciw promieniowaniu! !!";
					sleep 15;
				}else
				{
					hint "!!! UWAGA !!! Strefa Promieniotwórcza !!!";
					_damage = damage player;
					_damage = _damage + 0.1;
					player setDamage (_damage);
					[] call life_fnc_hudUpdate;
					sleep 10;
				};
			};
		};
	};
};
// DODANE - OKRUT - Wieksza ilość stref napromieniowanych

//Oczyszczanie uranu
[] spawn
{
	if(playerside == civilian) then {
		while {true} do
		{
			private["_damage"];
			sleep 1;
			while {((player distance (getMarkerPos "beruf_1_1_2_1_2_2") < 150) && (player getVariable["Revive",TRUE]))} do
			{
				if(uniform player == "U_C_Scientist") then
				{
					hint "!!! Nosisz Kombinezon przeciw promieniowaniu! !!";
					sleep 15;
				}else
				{
					hint "!!! UWAGA !!! Strefa Promieniotwórcza !!!";
					_damage = damage player;
					_damage = _damage + 0.1;
					player setDamage (_damage);
					[] call life_fnc_hudUpdate;
					sleep 10;
				};
			};
		};
	};
};

//Przetwarzanie uranu
[] spawn
{
	if(playerside == civilian) then {
		while {true} do
		{
			private["_damage"];
			sleep 1;
			while {((player distance (getMarkerPos "beruf_1_1_2_1_2_4") < 150) && (player getVariable["Revive",TRUE]))} do
			{
				if(uniform player == "U_C_Scientist") then
				{
					hint "!!! Nosisz Kombinezon przeciw promieniowaniu! !!";
					sleep 15;
				}else
				{
					hint "!!! UWAGA !!! Strefa Promieniotwórcza !!!";
					_damage = damage player;
					_damage = _damage + 0.1;
					player setDamage (_damage);
					[] call life_fnc_hudUpdate;
					sleep 10;
				};
			};
		};
	};
};

//Wzbogacanie uranu
[] spawn
{
	if(playerside == civilian) then {
		while {true} do
		{
			private["_damage"];
			sleep 1;
			while {((player distance (getMarkerPos "beruf_1_1_2_1_2_5") < 150) && (player getVariable["Revive",TRUE]))} do
			{
				if(uniform player == "U_C_Scientist") then
				{
					hint "!!! Nosisz Kombinezon przeciw promieniowaniu! !!";
					sleep 15;
				}else
				{
					hint "!!! UWAGA !!! Strefa Promieniotwórcza !!!";
					_damage = damage player;
					_damage = _damage + 0.1;
					player setDamage (_damage);
					[] call life_fnc_hudUpdate;
					sleep 10;
				};
			};
		};
	};
};

//Produkcja pretow paliwowych
[] spawn
{
	if(playerside == civilian) then {
		while {true} do
		{
			private["_damage"];
			sleep 1;
			while {((player distance (getMarkerPos "beruf_1_1_2_1_2_6") < 150) && (player getVariable["Revive",TRUE]))} do
			{
				if(uniform player == "U_C_Scientist") then
				{
					hint "!!! Nosisz Kombinezon przeciw promieniowaniu! !!";
					sleep 15;
				}else
				{
					hint "!!! UWAGA !!! Strefa Promieniotwórcza !!!";
					_damage = damage player;
					_damage = _damage + 0.1;
					player setDamage (_damage);
					[] call life_fnc_hudUpdate;
					sleep 10;
				};
			};
		};
	};
};

//Produkcja brudnego uranu
[] spawn
{
	if(playerside == civilian) then {
		while {true} do
		{
			private["_damage"];
			sleep 1;
			while {((player distance (getMarkerPos "beruf_1_1_2_1_2_3") < 150) && (player getVariable["Revive",TRUE]))} do
			{
				if(uniform player == "U_C_Scientist") then
				{
					hint "!!! Nosisz Kombinezon przeciw promieniowaniu! !!";
					sleep 15;
				}else
				{
					hint "!!! UWAGA !!! Strefa Promieniotwórcza !!!";
					_damage = damage player;
					_damage = _damage + 0.1;
					player setDamage (_damage);
					[] call life_fnc_hudUpdate;
					sleep 10;
				};
			};
		};
	};
};

