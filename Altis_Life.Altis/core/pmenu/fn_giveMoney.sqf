/*
	File: fn_giveMoney.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gives the selected amount of money to the selected player.
*/
private["_unit","_amount"];
_amount = ctrlText 2018;
ctrlShow[2001,false];
if((lbCurSel 2022) == -1) exitWith {hint "No one was selected!";ctrlShow[2001,true];};
_unit = lbData [2022,lbCurSel 2022];
_unit = call compile format["%1",_unit];
if(isNil "_unit") exitWith {ctrlShow[2001,true];};
if(_unit == player) exitWith {ctrlShow[2001,true];};
if(isNull _unit) exitWith {ctrlShow[2001,true];};

//A series of checks *ugh*
if(!life_use_atm) exitWith {hint "Obrabowales bank i nie mozesz jeszcze nikomu przekazywac pieniedzy.";ctrlShow[2001,true];};
if(!([_amount] call TON_fnc_isnumber)) exitWith {hint "Nie podales ilosci.";ctrlShow[2001,true];};
if(parseNumber(_amount) <= 0) exitWith {hint "Musisz podac ilosc.";ctrlShow[2001,true];};
if(parseNumber(_amount) > life_cash) exitWith {hint "Nie masz tyle!";ctrlShow[2001,true];};
if(isNull _unit) exitWith {ctrlShow[2001,true];};
if(isNil "_unit") exitWith {ctrlShow[2001,true]; hint "Wybrany Gracz jest poza zasiegiem";};
hint format["Dales $%1 dla %2",[(parseNumber(_amount))] call life_fnc_numberText,_unit getVariable["realname",name _unit]];
life_cash = life_cash - (parseNumber(_amount));
[0] call SOCK_fnc_updatePartial;
[[_unit,_amount,player],"life_fnc_receiveMoney",_unit,false] spawn life_fnc_MP;
[] call life_fnc_p_updateMenu;
_toLog = format ["1|%1 (%4) dał $%2 graczowi %3 (%5)", name player, [(parseNumber(_amount))] call life_fnc_numberText, name _unit, getPlayerUID player, getPlayerUID _unit];
	[[_toLog],"Arma3Log"] call life_fnc_MP;

ctrlShow[2001,true];