#include <macro.h>
/*
	fn_hideMe.sqf
	Author: Kevin Webb
	
	Description: For dat undercover work!
*/
if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

if(player getVariable["invis",false]) then {
	[[player],"life_fnc_adminInvisReveal",false,false] spawn life_fnc_MP;
	player setVariable["invis",false,true];
	player allowDamage true;
	hint "Visible state returned to normal.";
} else {
	[[player],"life_fnc_adminInvisHide",false,false] spawn life_fnc_MP;
	player setVariable["invis",true,true];
	player allowDamage false;
	hint "Invisibility Activated!";
};