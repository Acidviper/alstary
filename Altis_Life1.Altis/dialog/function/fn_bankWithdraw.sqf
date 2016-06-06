/*
	COPY PASTE TIME
*/
private["_val"];
_val = parseNumber(ctrlText 2702);
if(_val > 999999) exitWith {hint localize "STR_ATM_WithdrawMax";};
if(_val < 0) exitwith {};
if(!([str(_val)] call life_fnc_isnumeric)) exitWith {hint localize "STR_ATM_notnumeric"};
if(_val > life_atmcash) exitWith {hint localize "STR_ATM_NotEnoughFunds"};
if(_val < 100 && life_atmcash > 999999) exitWith {hint localize "STR_ATM_WithdrawMin"}; //Temp fix for something.

life_cash = life_cash + _val;
life_atmcash = life_atmcash - _val;
hint format [localize "STR_ATM_WithdrawSuccess",[_val] call life_fnc_numberText];
[] call life_fnc_atmMenu;
[6] call SOCK_fnc_updatePartial;

[[format ["1|%1 wyciągnął %2$ z BANKU. %1 ma teraz %3$ w BANKU",player getVariable["realname",name player],[_val] call life_fnc_numberText,[life_atmcash] call life_fnc_numberText]],"Arma3Log",false] call life_fnc_MP;