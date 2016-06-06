private["_unit","_amount"];
if(playerSide != west) exitWith {hint "Myślisz że kim jesteś?"};
if((lbCurSel 2406) == -1) exitWith {hint "Musisz wybrać sprawcę."};
if((lbCurSel 2407) == -1) exitWith {hint "Musisz wybrać przestępstwo."};
_unit = lbData [2406,lbCurSel 2406];
_unit = call compile format["%1",_unit];
_amount = lbData [2407,lbCurSel 2407];
if(isNil "_unit") exitWith {};
if(side _unit == west) exitWith {hint "Nie można dodać policjanta jako przestępcy." };
if(isNull _unit) exitWith {};

[[1,"STR_Wanted_AddP", true, [_unit getVariable["realname",name _unit],_amount,getPlayerUID _unit]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;

[[getPlayerUID _unit,_unit getVariable["realname",name _unit],_amount],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
