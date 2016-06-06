/*

	When player uses bomb

*/

private["_done_struggle","_bomb"]; 
 
 _done_struggle = false;
 
 if(life_action_inUse) exitWith {};
 life_action_inUse = true;
 
 if(playerSide == west) then
 {
	titleText ["Patrzysz na bombe ...", "PLAIN"]; 
	sleep 3;
 }
 else
 {
	[[0,format["!! %1 próbuje zdetonować Bombe! !!", name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
 };
 
while { !_done_struggle } do 
{
	if(!(alive player) || [0,20] call life_fnc_randomRound == 10 ) then
	{ 
		_done_struggle = true; 
	}
	else
	{
		if(playerSide == west) then
		{
			titleText ["Patrzysz gdzie jest zapalnik ...", "PLAIN"]; 		
		}
		else
		{
			titleText ["Cos nie pasuje z ta kula wybuchowa", "PLAIN"]; 		
		};	
		
		sleep 1;
	};	
};

if(!(alive player) && playerSide == civilian) exitWith
{
	[[0,format["%1 zdetonował bombe", name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
};

//Stuff
if(playerSide == civilian) then
{
	[[getPlayerUID player,name player,"",["Terrorismus",600000]],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	[[0,format["!!! %1 zapalił wybuchającą kule !!!", name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
};

//Boom
 life_action_inUse = false;
 
 //alt: R_60mm_HE
 _bomb = "M_Mo_82mm_AT_LG" createVehicle (position player);
 _bomb = "R_60mm_HE" createVehicle (position player);
 _bomb = "M_Mo_82mm_AT_LG" createVehicle (position player);
 _bomb = "R_60mm_HE" createVehicle (position player);