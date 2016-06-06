/*
	File: empVehicles.sqf
	Author: © 2014 nano2K - written for we-are-friendly.de
*/
private["_index","_vehicle"];
disableSerialization;
if(!isNull (findDisplay 3494)) then {
	if(nn_empInUse) exitWith { hint "Aktywuj EMP tuż przed pojazdem"; };
	if(!([false,"empmodul",1] call life_fnc_handleInv)) exitWith { hint "Musisz posiadać baterie EMP, aby aktywować ładunek."; };
	nn_empInUse = true;
	_index = lbCurSel (2902);
	_vehicle = nn_last_vehicles select _index;
	if(isNull _vehicle) exitWith {};
	(vehicle player) say3D "empacsound";
	[[_vehicle], "life_fnc_vehicleEmpd",crew _vehicle,false] spawn life_fnc_MP;
	sleep (10 * 60);
	nn_empInUse = false;
};
