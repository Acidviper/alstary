/*
	File: fn_schutzSirene.sqf
*/	
if (life_schutz) exitWith {hint "Syreny były niedawno używane!"};	
private["_source"];
_source = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _source) exitWith {};
if(playerSide == west) then
{
	[player,"schutzsirene"] call life_fnc_globalSound;	
	life_schutz = true;
};
if(playerSide == civilian) then
{
	hint "Nie możesz używać syren.";	
};
if(playerSide == independent) then
{
	hint "Nie możesz uzywać syren";	
};
sleep 900;
life_schutz = false;