/*
	File: fn_onTakeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Blocks the unit from taking something they should not have.
*/
private["_unit","_item"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_container = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_item = [_this,2,"",[""]] call BIS_fnc_param;

if(isNull _unit OR _item == "") exitWith {}; //Bad thingies?

switch(playerSide) do
{
	case west: {}; //Blah
	case civilian: {
		//Currently stoping the civilians from taking the indep clothing from medics.
		if(_item in ["U_I_CombatUniform"]) then {
			[_item,false,false,false,false] call life_fnc_handleItem;
		};
	};
	case independent: {};
};

_itemInfo = ([_item] call life_fnc_fetchCfgDetails) select 1;
_toLog = format ["5|%1 (%2) podniósł %3", name player, getPlayerUID player, _itemInfo];
[[_toLog],"Arma3Log"] call life_fnc_MP;
[] call life_fnc_updateClothing;