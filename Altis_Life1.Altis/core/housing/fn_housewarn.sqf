/*
	File: fn_housewarn.sqf
	Author: Arkensor
	
	Description:
	Add variable to house, or to databse
*/
private["_house","_uid","_housePos","_houseName"];
_house = nearestBuilding (getPosATL player);
_uid = getPlayerUID player;
_housePos = getPos _house;
_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
if(!(_house in life_vehicles)) exitWith {hint localize "STR_ISTR_Box_NotinHouse"};

if(_house getVariable["Secured",false]) exitWith {hint "Dom jest już zabezpieczony";};

if(([false,"housewarn",1] call life_fnc_handleInv)) then {
_house setVariable["Secured",true,true];
hint "Zainstalowani i aktywowano system bezpieczeństwa";
closeDialog 0;

[[_uid,_house],"TON_fnc_houseWarn",false,false] spawn life_fnc_MP;

deleteMarkerLocal format["house_%1",(_house getVariable "uid")];

_marker = createMarkerLocal [format["house_%1",(_house getVariable "uid")],_housePos];
_marker setMarkerTextLocal format["%1 [System Alarmowy]",_houseName];
_marker setMarkerColorLocal "ColorBlue";
_marker setMarkerTypeLocal "loc_Lighthouse"

};