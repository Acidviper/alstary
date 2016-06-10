/*
	File: fn_chopShopMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens & initializes the chop shop menu.
*/
if(life_action_inUse) exitWith {hint localize "STR_NOTF_ActionInProc"};
disableSerialization;
private["_nearVehicles","_shop","_control"];
_nearVehicles = nearestObjects [getMarkerPos (_this select 3),["Car","Truck","Air"],25];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
life_chopShop = (_this select 3);
//Error check
if(([civilian,getPos player,100] call life_fnc_nearUnits)) exitWith {titleText["Musisz być sam, żeby sprzedać pojazd.","PLAIN"]};
if((vehicle player) != player) exitWith {"Nie możesz być w pojeździe."};
if(player distance _shop > 5) exitWith {hint format ["Musisz stać bliżej!"];};
if(playerSide != civilian) exitWith {titleText["Nie jesteś Cywilem","PLAIN"]};
if(count _nearVehicles == 0) exitWith {titleText[localize "STR_Shop_NoVehNear","PLAIN"];};
if(!(createDialog "Chop_Shop")) exitWith {hint localize "STR_Shop_ChopShopError"};





_control = ((findDisplay 39400) displayCtrl 39402);
{
	if(alive _x) then {
		_className = typeOf _x;
		_displayName = getText(configFile >> "CfgVehicles" >> _className >> "displayName");
		_picture = getText(configFile >> "CfgVehicles" >> _className >> "picture");
		_ind = [_className,(call life_chopshop_sell)] call TON_fnc_index;
		
		if(_ind != -1 && count crew _x == 0) then {
			_price = ((call life_chopshop_sell) select _ind) select 1;
			_control lbAdd _displayName;
			_control lbSetData [(lbSize _control)-1,str(_forEachIndex)];
			_control lbSetPicture [(lbSize _control)-1,_picture];
			_control lbSetValue [(lbSize _control)-1,_price];
		};
	};
} foreach _nearVehicles;