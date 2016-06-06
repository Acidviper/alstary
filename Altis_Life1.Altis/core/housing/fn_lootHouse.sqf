/*
	File: fn_lootHouse.sqf
	Author: Fresqo
	Description:
	Searches for loot in broken houses and buildings.
	Props to whoever made the progress bar from the robshop function if it was MrKraken or PEpwnzya
*/
private["_loothouse","_lchance","_looting","_lootArr","_loot"];
_lchance = random (200); 					//INCREASE THIS TO MAKE LOOT HARDER TO GET
_loothouse = cursorTarget;
_lootArr = ["lockpick","tabakip","marijuana","fuelF","diamondc","water","redgull","skalpel","mullet","pbrau","donuts","baumwollep","traubenp"];			//ADD ANY Y MENU ITEMS YOU LIKE HERE
_loot = _lootArr select floor random count _lootArr;


if(isNull _loothouse) exitWith {};
if((_loothouse getVariable ["looted",false])) exitWith { hint "Ten budynek był już przeszukiwany !"};
if(playerSide != civilian) exitWith {hint "Nie możesz przeszukać tego budynku!"};

if (life_looting) exitWith { hint "Already looting building!" };
if !(alive player) exitWith {};

life_looting = true;
 
//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Przeszukiwanie budynku, stój blisko (5m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;
 
if(life_looting) then
{
	while{true} do
	{
		sleep 0.1;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["Przeszukiwanie budynku, stój blisko (5m) (%1%2)...",round(_cP * 100),"%"];

		if(_cP >= 1) exitWith {};
		if(player distance _loothouse > 5) exitWith {hint "Musisz być bliżej budynku żeby móc przeszukiwać!"};
		if!(alive player) exitWith {};
	};

	if!(alive player) exitWith { life_looting = false; };
	if(player distance _loothouse > 5) exitWith { hint "Musisz być bliżej budynku żeby móc przeszukiwać!";5 cutText ["","PLAIN"];life_looting = false; };
	5 cutText ["","PLAIN"];
			[[_loothouse],"TON_fnc_lootReset",false,false] spawn life_fnc_MP;
			if(_lchance <= 20) then 
			{ 
			hint parseText format["<t align='center'><t size='1'>GRATULACJE</t><br/><t color='#FFFF00'><t size='1.5'>ZNALAZŁEŚ JAKIŚ TOWAR!</t>"];
			[true,_loot,1] call life_fnc_handleInv;
			} else {hint"Nie ma nic ciekawego"};
	life_looting = false;	
};
