waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
/*

File: fn_statusBar.sqf

Author: Some French Guy named Osef I presume, given the variable on the status bar

Edited by: [midgetgrimm]

Description: Puts a small bar in the bottom right of screen to display in-game information



*/

4 cutRsc ["StatusBar","PLAIN"]; 
//systemChat format["[GL v3.1.4] Loading game server info...", _rscLayer];

[] spawn {
	sleep 5;
	_counter = 180;
	_timeSinceLastUpdate = 0;
	while {true} do
	{
		sleep 1;
		_counter = _counter - 1;
		((uiNamespace getVariable "StatusBar")displayCtrl 1000)
	//STARE
	/*ctrlSetText
    format["FPS: %1 | Policja: %2 | Cywile: %3 | Medycy: %4 | BANK: %6 | Forum: altisland.pl  | TS: ts3.altisland.pl", round diag_fps, 
    west countSide playableUnits, civilian countSide playableUnits,
    independent countSide playableUnits,[life_cash] call life_fnc_numberText,[life_atmcash] call   
    life_fnc_numberText,mapGridPosition player, _counter];*/
    //STATUS BAR Z P1X
    ctrlSetStructuredText parseText format["|| <t color='#c8d2d6'>FPS: %1</t> | <t color='#4682ba'>Policja: %2</t> | <t color='#d345a6'>Cywile: %3</t> | <t color='#fde003'>Medycy: %4</t> | <t color='#80bc00'>Gotówka: %5</t> | <t color='#0ae40a'>Konto: %6</t> | <t color='#e29400'>Pozycja: %7</t> | <t color='#e2edff'>UP: %8</t> ||", round diag_fps, 
    west countSide playableUnits, civilian countSide playableUnits,
    independent countSide playableUnits,[life_cash] call life_fnc_numberText,[life_atmcash] call   
    life_fnc_numberText,mapGridPosition player,[serverTime,"HH:MM:SS"] call BIS_fnc_secondsToString,_counter];
	}; 
};