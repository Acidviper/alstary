/*
	File: fn_jailHungry.sqf
	Edited by: Sven 'sleuny' Leunig - BHP
	
	Description:
	Addaction zum Ernähren im Gefängnis
*/
private["_jailhungry"];
_jailhungry = _this select 3;

switch (_jailhungry) do
{
	case "wasser":
	{
			life_thirst = 100;
			[] call life_fnc_hudUpdate;
			player setFatigue 0;
			hint "Ciepła woda mineralna .... mimo wszystko, nie umieram z pragnienia";
	};
	
	case "bohnen":
	{
			life_hunger = 100;
			[] call life_fnc_hudUpdate;
			player setFatigue 0;
			hint "Ziarna nie były najlepsze, ale już lepiej";
	};

	case "reis":
	{
			life_hunger = 100;
			[] call life_fnc_hudUpdate;
			player setFatigue 0;
	};
};