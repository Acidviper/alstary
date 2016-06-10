/*
File : fn_copShowLicense.sqf
Create : Black Lagoon
Edit : Noldy and CYNX
Link : http://www.global-gamer.com/home/wbb/index.php/Thread/509-Turorial-Polizeimarke-zeigen/

Beschreibung : Fuegt einen 'Polizeiausweis' hinzu, den man ueber scrollen Zivilisten zeigen kann
*/

private["_target", "_message","_coplevel","_rang"];

_target = cursorTarget;

if(playerSide != west) exitWith
{
	hint "Nie jesteś Policjantem!";
};

if( isNull _target) then {_target = player;};

if( !(_target isKindOf "Man") ) then {_target = player;};

if( !(alive _target) ) then {_target = player;};

_coplevel = call life_coplevel;

switch ( _coplevel ) do {
	case 1: { _rang = "Kadet"; };
	case 2: { _rang = "Posterunkowy"; };
	case 3: { _rang = "Sierżant"; };
	case 4: { _rang = "Porucznik"; };
	case 5: { _rang = "Kapitan"; };
    case 6: { _rang = "Komendant"; };
	default { _rang =  "Error";};
};

_message = format["<img size='10' color='#FFFFFF' image='textures\cop\marke.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1.8'>%2</t><br/><br/><t color='#336699' size='1.6'>Policja</t>", name player, _rang];

[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;