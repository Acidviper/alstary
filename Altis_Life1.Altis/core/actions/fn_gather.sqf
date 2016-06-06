/*
	File: fn_gather.sqf
	Author: John "Paratus" VanderZwet
	
	Description:
	Master gathering script, to replace all inferior scripts!
*/

private["_sum","_stones","_originalPos"];

_item = [_this select 3,0,"",[""]] call BIS_fnc_param;
_count = [_this select 3,1,1,[1]] call BIS_fnc_param;

if (life_gathering) exitWith {hint "Wait a moment before gathering again."};

_stones = ["diamond","copperore","ironore","rock","sand","salt","schwefelu","holzu","silberu","zinnu","uran1"];

if (life_inv_pickaxe < 1 && _item in _stones) exitWith { hint "Musisz posiadac kilof aby wydobywac ten surowiec."; };
_itemName = [([_item,0] call life_fnc_varHandle)] call life_fnc_varToStr;

titleText[format["Zbieram %1...",_itemName],"PLAIN"];
_originalPos = getPos player;
life_action_in_use = true;
life_gathering = true;

while {life_carryWeight < life_maxWeight} do
{
	if (!(alive player)) exitWith {};
	if (speed player > 1 || player distance _originalPos > 2 || !life_action_in_use) exitWith { titleText["Zbieranie anulowano. Nie mozesz sie ruszac kiedy zbierasz","PLAIN"]; };
	if (life_carryWeight >= life_maxWeight) exitWith { titleText [format["Zbieranie zakonczono. Nie zmiescisz wiecej %1.", _itemName],"PLAIN"]; };
	_sum = [_item,_count,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
		
	if(_sum > 0) then
	{
		sleep 4;
		if (!life_action_in_use) exitWith {};
		if(!([true,_item,_count] call life_fnc_handleInv)) exitWith
		{
			titleText [format["Zbieranie zakonczono. Nie zmiescisz wiecej %1.", _itemName],"PLAIN"];
		};
		titleText [format["Zebrano %1 %2. [%3/%4]",_count,_itemName,life_carryWeight,life_maxWeight],"PLAIN"];
		titleFadeOut 1;
	};
};

life_action_in_use = false;
life_gathering = false;



_toLog = format ["4|%1 (%2) zebrał %3x %4.", name player,getPlayerUID player,_count,_itemName];
	[[_toLog],"Arma3Log"] call life_fnc_MP;