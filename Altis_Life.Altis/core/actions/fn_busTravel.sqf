private ["_action","_teleMan"];
if(!alive player) exitWith {hint"Nie żyjesz.. dafuq";};
//if(playerSide != east) exitWith {hint"Not for municipal workers";};
if (vehicle player != player) exitWith {hint "Wyjdź z pojazdu";};
if(life_cash < 8000) exitWith {hint "Nie masz przy sobie $8000!!";};



_teleMan = _this select 3;


_action = [
			"Czy jesteś pewien, że chcesz wsiąść do Taxi ?",
			"Podróz Taxi",
			"Tak",
			"Nie"
		] call BIS_fnc_guiMessage;
		
if(_action) then {

		life_cash = life_cash - 8000;
		
		switch (_teleMan) do
		{
			case "Bus_Kavala": 
			{
					titleText ["Zasnałeś w Taxi","BLACK",2];
					sleep 2;
					player setPos (getMarkerPos "Respawn_west");
					_handle = [] spawn life_fnc_teleTimer;
					waitUntil {scriptDone _handle};
					player setPos (getMarkerPos "Bus_Kavala");
					disableUserInput false;
					titleText ["Obudziłeś się","BLACK IN"];
			};
			case "Bus_Athira":
			{
					titleText ["Zasnałeś w Taxi","BLACK",2];
					sleep 2;
					player setPos (getMarkerPos "respawn_civilian");
					_handle = [] spawn life_fnc_teleTimer;
					waitUntil {scriptDone _handle};
					player setPos (getMarkerPos "Bus_Athira");
					disableUserInput false;
					titleText ["Obudziłeś się","BLACK IN"];
			};
			case "Bus_Sofia":
			{
					titleText ["Zasnałeś w Taxi","BLACK",2];
					sleep 2;
					player setPos (getMarkerPos "Respawn_west");
					_handle = [] spawn life_fnc_teleTimer;
					waitUntil {scriptDone _handle};
					player setPos (getMarkerPos "Bus_Sofia");
					disableUserInput false;
					titleText ["Obudziłeś się","BLACK IN"];
			};
			case "Bus_Pyrgos":
			{
					titleText ["Zasnałeś w Taxi","BLACK",2];
					sleep 2;
					player setPos (getMarkerPos "respawn_civilian");
					_handle = [] spawn life_fnc_teleTimer;
					waitUntil {scriptDone _handle};
					player setPos (getMarkerPos "Bus_Pyrgos");
					disableUserInput false;
					titleText ["Obudziłeś się","BLACK IN"];
			};
		};
} else {
			hint"Dziękujemy za korzystanie z Taxi!";
};