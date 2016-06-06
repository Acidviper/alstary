/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Syncs changes to containers in houses?
*/
private["_unit","_item","_house","_container"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_container = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_item = [_this,2,"",[""]] call BIS_fnc_param;

if(isNull _unit OR _item == "") exitWith {}; //Bad thingies?

_itemInfo = ([_item] call life_fnc_fetchCfgDetails) select 1;
_toLog = format ["5|%1 (%2) has the item %3 filed", name player, getPlayerUID player, _itemInfo];
[[_toLog],"Arma3Log"] call life_fnc_MP;