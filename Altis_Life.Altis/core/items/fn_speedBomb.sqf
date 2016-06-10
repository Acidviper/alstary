    /*
    File: fn_speedBomb.sqf
    Author: Fuzz
    Description:
    Attaches a speed bomb to a vehicle.
    */
    private["_unit"];
    _unit = cursorTarget;
     
    if((!(_unit isKindOf "LandVehicle"))&&(!(_unit getVariable ["restrained",false]))) exitWith {hint "You cannot add a speed bomb unit to this"};
    if(player distance _unit > 7) exitWith {hint "Musisz być w zasiegu 7m!"};
    if(!([false,"speedbomb",1] call life_fnc_handleInv)) exitWith {};
    closeDialog 0;
     
    life_action_inUse = true;
     
    player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
    sleep 1.5;
    waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};
     
    life_action_inUse = false;
    if(player distance _unit > 7) exitWith {titleText["Nie jesteś w pobliżu!","PLAIN"];};
     
    titleText["Podłożyłeś SpeedBombe","PLAIN"];
    [[getPlayerUID player,profileName,"54"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	[[0,format[localize "STR_ISTR_speedNOTF",profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
    [_unit] spawn
    {
    _veh = _this select 0;
    waitUntil {(speed _veh) > 70};
    [player,"bombarm"] call life_fnc_globalSound;
    hint "SpeedBomba zostałą podłożona!";
    { [[2,"SpeedBomba została akywowana, jeśli zowlnisz poniżej 20km/h zdetonujesz bombe!"],"life_fnc_broadcast",_x,false] spawn BIS_fnc_MP; } foreach (crew _veh);
    waitUntil {(speed _veh) < 30};
    serv_killed = [player,"1090"];
    publicVariableServer "serv_killed";
    _test = "Bo_Mk82" createVehicle [0,0,9999];
    _test setPos (getPos _veh);
    _test setVelocity [100,0,0];
    hint "SpeedBomba zostałą zdetonowana!";
    };