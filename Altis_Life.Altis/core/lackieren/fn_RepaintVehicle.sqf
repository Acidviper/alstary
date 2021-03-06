/*
File: fn_RepaintVehicle.sqf
Author: MooN-Gaming

Description: Does the active repaint man....read the title!
*/
private["_veh","_color","_color_index"];
if(!isNull (findDisplay 2300)) then {
_veh = nearestObject [position player, "LandVehicle"];
_color = lbcursel 2303;
_color_index = lbValue[2303,_color];
closeDialog 0;

if(_color_index == 0) exitWith {};

_baseprice = 10000;  //Price for repaint
_vehicleData = _veh getVariable["vehicle_info_owners",[]];
if(life_cash < _basePrice) exitWith {hint "Nie masz wystarczajaco pieniedzy!"};

if(isNil {_vehicleData}) exitWith {hint "Pojazd cheatera?."};
if (!(_veh in life_vehicles)) exitwith {hint "Nie jestes wlascicielem!"};

		life_action_inUse = true;
		_displayName = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "displayName");
		_upp = format["Maluje %1",_displayName];
		//Setup our progress bar.
		disableSerialization;
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNameSpace getVariable "life_progress";
		_progress = _ui displayCtrl 38201;
		_pgText = _ui displayCtrl 38202;
		_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
		_progress progressSetPosition 0.01;
		_cP = 0.01;
		
		while{true} do
		{
			if(animationState player != "AinvPknlMstpsnonWnonDnon_medic_1" ) then {
		player action ["SwitchWeapon", player, player, 100];
		player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
		player playActionNow "stop";
		player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
		player playActionNow "stop";
		player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
	};				
			sleep 0.29;
			//[player,"spraycan"] call life_fnc_globalSound; //Just if you have global sounds!

			_cP = _cP + 0.01;
			_progress progressSetPosition _cP;
			_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];			
			if(_cP >= 1) exitWith {};
			if(!alive player) exitWith {};
			if(player != vehicle player) exitWith {};
			if(life_interrupted) exitWith {};
		};
		
		life_action_inUse = false;
		5 cutText ["","PLAIN"];
		player playActionNow "stop";
		if(life_interrupted) exitWith {life_interrupted = false; titleText["Anulowano","PLAIN"]; life_action_inUse = false;};
		if(player != vehicle player) exitWith {titleText["Musisz wyjsc z pojazdu aby go przemalowac!","PLAIN"];};
	
		life_cash = life_cash - _basePrice;
		//Send toDB
		[[_veh,_color_index],"TON_fnc_vehicleRepaint",false,false] spawn life_fnc_MP;
		
		//Color vehicle locally
		[[_veh,_color_index],"life_fnc_colorVehicle",true,false] spawn life_fnc_MP;
		
		[] call SOCK_fnc_updateRequest; //Sync silently because it's obviously silently..
};