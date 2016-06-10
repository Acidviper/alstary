/*
	File: fn_searchClient.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Searches the player and he returns information back to the player.
*/
private["_cop","_inv","_var","_val","_robber"];
_cop = [_this,0,Objnull,[objNull]] call BIS_fnc_param;
if(isNull _cop) exitWith {};
_inv = [];
_robber = false;
_prim = if(primaryWeapon player != "") then { getText(configFile >> "CfgWeapons" >> (primaryWeapon player) >> "DisplayName")} else {"None"};
_sec = if(handgunWeapon player != "") then { getText(configFile >> "CfgWeapons" >> (handgunWeapon player) >> "DisplayName")} else {"None"};
_vest = if(vest player != "") then { getText(configFile >> "CfgWeapons" >> (vest player) >> "DisplayName")} else {"None"};
_uni = if(uniform player != "") then { getText(configFile >> "CfgWeapons" >> (uniform player) >> "DisplayName")} else {"None"};
//Illegal items
{
	_var = [_x select 0,0] call life_fnc_varHandle;
	_val = missionNamespace getVariable _var;
	if(_val > 0) then
	{
		_inv pushBack [_x select 0,_val];
		[false,(_x select 0),_val] call life_fnc_handleInv;
	};
} foreach life_illegal_items;

if(!life_use_atm) then 
{
	life_cash = 0;
	_robber = true;
};

if(!life_use_atm_2) then 
{
	life_cash = 0;
	_robber = true;
};

[[player,_inv,_robber,_prim,_sec,_vest,_uni,_bp],"life_fnc_copSearch",_cop,false] spawn life_fnc_MP;