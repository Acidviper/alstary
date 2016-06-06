private["_uiDisp","_time","_timer"];
disableSerialization;
_music = ["fasttravel"] call BIS_fnc_selectRandom;
player say3d _music;
_time = time + 30;
disableUserInput true;
while {true} do
{
	if((round(_time - time)) > 0) then {
		_countDown = [(_time - time),"MM:SS"] call BIS_fnc_secondsToString;    
		hintSilent parseText format["<t size='2.5'><t color='#00DDFF'>Czas Podróży</t></t><br/><t size='5'><t color='#00FF00'>%1</t></t><br/>",_countDown];
	};
	
	if((round(_time - time)) < 1) exitWith {hint "";disableUserInput false;};
	if(!alive player && ((round(_time - time)) > 0)) exitWith {disableUserInput false;};
	sleep 0.1;
}; 