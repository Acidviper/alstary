/*
	File: fn_jailMe.sqf
	Author Bryan "Tonic" Boardwine
	
	Description:
	Once word is received by the server the rest of the jail execution is completed.
*/
private["_ret","_bad","_time","_bail","_esc","_countDown","_time"];
_ret = [_this,0,[],[[]]] call BIS_fnc_param;
_bad = [_this,1,false,[false]] call BIS_fnc_param;
_time = [_this,2,15,[0]] call BIS_fnc_param; //##80

_time = time + (_time * 60); //x Minutes

//if(_bad) then { _time = time + 1100; } else { _time = time + (15 * 60); }; //##80 (time loaded from DB)

_clothings = ["U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_stripped","U_C_Poloshirt_tricolour","U_C_Poloshirt_salmon","U_C_Poloshirt_redwhite","U_C_Commoner1_1"];

["U_C_WorkerCoveralls",true] call life_fnc_handleItem;
waitUntil {uniform player == "U_C_WorkerCoveralls"};
[player, true] call life_fnc_updateClothing;
removeVest player;
removeHeadgear player;
removebackpack player;

if(count _ret > 0) then { life_bail_amount = (_ret select 3); } else { life_bail_amount = 20000; /*_time = time + (10 * 60); */};
_esc = false;
_bail = false;

if(_time <= 0) then { _time = time + (15 * 60); hintC "Proszę powiadomić o tym Admina: JAIL_FALLBACK_15, czas na zero!"; };

[_bad,_time] spawn
{
	life_canpay_bail = false;
	life_bail_amount = life_bail_amount * 5;
	if(_this select 0) then
	{
		//sleep (10 * 60);
		//50% of time
		sleep ( (_this select 1) * 0.5 );
	}
		else
	{
		//sleep (5 * 60);
		//20% of time
		sleep ( (_this select 1) * 0.2 );
	};
	life_canpay_bail = nil;
};

while {true} do
{
	if((round(_time - time)) > 0) then
	{
		_countDown = if(round (_time - time) > 60) then {format["%1 Minut (y)",round(round(_time - time) / 60)]} else {format["%1 Sekund(y)",round(_time - time)]};
		if(isNil "life_canpay_bail") then
		{
			hintSilent format["==Więzienie==\n\nPozostały Czas:\n %1\n\nOpcja Kaucji: %3\nKaucja: $%2",_countDown,[life_bail_amount] call life_fnc_numberText];
		}
		else
		{
			hintSilent format["==Więzienie==\n\nPozostały Czas:\n %1\n",_countDown];
		};
		
	};
	
	if(player distance (getMarkerPos "jail_marker") > 180) exitWith
	{
		_esc = true;
	};
	
	if(life_bail_paid) exitWith
	{
		_bail = true;
	};
	
	if((round(_time - time)) < 1) exitWith {hint ""};
	if(!alive player && ((round(_time - time)) > 0)) exitWith
	{
	
	};
	sleep 1;
};


switch (true) do
{
	case (_bail) :
	{
		life_is_arrested = false;
		life_bail_paid = false;
		life_bail_amount = 0;
		[] call life_fnc_hudUpdate;
		titleText["Wplaciles kaucje i jestes wolny.","PLAIN"];
		serv_wanted_remove = [player];
		player setPos (getMarkerPos "jail_release");
		[[getPlayerUID player],"life_fnc_wantedRemove",false,false] spawn life_fnc_MP;
		[(_clothings call BIS_fnc_selectRandom),true] call life_fnc_handleItem;
		[5] call SOCK_fnc_updatePartial;
	};
	
	case (_esc) :
	{
		life_is_arrested = false;
		hint "Uciekles z wiezienia. Twoje przewinienia pozostaly i doszla ucieczka z wiezienia.";
		[[0,format["%1 uciekł z więzienia!",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		[[getPlayerUID player,profileName,"901"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		[5] call SOCK_fnc_updatePartial;
	};
	
	case (alive player && !_esc && !_bail) :
	{
		life_is_arrested = false;
		life_bail_amount = 0;
		[] call life_fnc_hudUpdate;
		titleText["Odsiedziales wyrok i zostales uwolniony.","PLAIN"];
		[[getPlayerUID player],"life_fnc_wantedRemove",false,false] spawn life_fnc_MP;
		player setPos (getMarkerPos "jail_release");
		[0,true] call life_fnc_updatePlayerBounty;
		[(_clothings call BIS_fnc_selectRandom),true] call life_fnc_handleItem;
		[5] call SOCK_fnc_updatePartial;
	};
};