/*
	File: fn_removeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/
private["_data","_value","_obj","_pos","_ind"];
disableSerialization;
_data = lbData[2005,(lbCurSel 2005)];
_value = ctrlText 2010;
if(_data == "") exitWith {hint "Nie wybrales przedmiotu.";};
if(!([_value] call TON_fnc_isnumber)) exitWith {hint "Nie podales prawidlowej ilosci."};
if(parseNumber(_value) <= 0) exitWith {hint "Musisz podac ilosc jaka chcesz usunac."};
_ind = [_data,life_illegal_items] call TON_fnc_index;
if(_ind != -1 && ([west,getPos player,100] call life_fnc_nearUnits)) exitWith {titleText["Nie mozesz wyrzucic tego przedmiotu, poniewaz w poblizu Ciebie jest policjant","PLAIN"]};
if(player != vehicle player) exitWith {titleText["Nie mozesz usunac przedmiotu kiedy jestes w pojezdzie.","PLAIN"]};
if(!([false,_data,(parseNumber _value)] call life_fnc_handleInv)) exitWith {hint "Nie moglem usunac takiej ilosci?"};
_type = [_data,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hint format["Usunales %1 %2 z Twojego ekwipunku.",(parseNumber _value), _type];
	
[] call life_fnc_p_updateMenu;