/*
	File: fn_progressBaren.sqf
	Author: Herman "Mordin" Othelius
	Template: Tonics crap :P
	Description: Should pop up a progressbar :)
*/
private["_cpRate","_title","_progressBar","_titleText","_cp","_ui","_object","_rndmrk","_mrkstring"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_object = _this Select 0;
_cops = (west countSide playableUnits);  
//Setup the progress bar
_cpRate = 0.0045;
disableSerialization;
_title = "Wyciąganie Więznia";
if(vehicle player != player) exitWith {hint "Musisz wyjść z pojazdu!";};
if(!alive player) exitWith {};
if(life_inv_boltcutter < 1) exitWith {hint "Potrzebujesz przecinaka do zamków!";};
if(playerSide != civilian) exitWith {hint "Tylko dla Cywili!";};
if(vehicle player != player) exitWith {hint "Wyjdź z Pojazdu!";};
if(_unit getVariable["inbreakout",false]) exitWith {hint "Ktoś już próbuje się włamać!";};
_unit setVariable["lastbreakout",time,true];
_unit setVariable["inbreakout",true,true];

if (time - life_lastPrison < 2700) exitWith { hint "Więzienie jest zablokowane. Spróbuj za kilka minut"; };
life_lastPrison = time;
publicVariable "life_lastPrison";


life_action_inUse = true;

//Setup the progress bar
disableSerialization;
_title = "Wyciąganie Więznia";
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;

[[2,"Ktoś próbuje wyciągnąć więznia!"],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
[[0,"Ktoś próbuje wyciągnąć więznia!"],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
[[2,"Ktoś próbuje wyciągnąć więznia! Szybko powstrzymaj go!"],"life_fnc_broadcast",west,false] spawn life_fnc_MP; //Give the cops a hint
[[1,"Ktoś próbuje wyciągnąć więznia! Szybko powstrzymaj go!"],"life_fnc_broadcast",west,false] spawn life_fnc_MP; //Give the cops a hint
[[0,"Ktoś próbuje wyciągnąć więznia! Szybko powstrzymaj go!"],"life_fnc_broadcast",west,false] spawn life_fnc_MP; //Give the cops a hints

while {true} do
{
		
			if(animationState player != "AinvPknlMstpsnonWnonDnon_medic_1" ) then {
				player action ["SwitchWeapon", player, player, 100];
				player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
				player playActionNow "stop";
				player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
				player playActionNow "stop";
				player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
			};
	sleep 2.087;
	if(isNull _ui) then {
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNamespace getVariable "life_progress";
		_progressBar = _ui displayCtrl 38201;
		_titleText = _ui displayCtrl 38202;
	};
   
	_cP = _cP + _cpRate;
	_progressBar progressSetPosition _cP;
	_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
	if(_cP >= 1 OR !alive player) exitWith {};
	if(life_istazed) exitWith {}; //Tazed
	if(life_interrupted) exitWith {};	
};
_unit setVariable["inbreakout",false,true];

//Kill the UI display and check for various states
5 cutText ["","PLAIN"];
player playActionNow "stop";
if(!alive player OR life_istazed) exitWith {life_action_inUse = false;};
if((player getVariable["restrained",false])) exitWith {life_action_inUse = false;};
if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};
life_action_inUse = false;


_object setPos (getMarkerPos "jail_breakout");
[[getPlayerUID player,profileName,"902"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;