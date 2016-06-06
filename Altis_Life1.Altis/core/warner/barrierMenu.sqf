/*
	   Warner's Barrier Menu
		Author: Warnerm14
	http://lathanalife.enjin.com
	  File: barriermenu.sqf
*/
	
				placebarrier =  {  
					_pos = position player;
					_barrier = "RoadBarrier_F" createVehicle ([0,0,0]);
					_dir = getDir player;
					_barrier setpos _pos;
					_barrier setDir _dir;
				};    
			
				placecone =  {  
					_pos = position player;  
					_cone = "RoadCone_F" createVehicle ([0,0,0]);  
					_dir = getDir player;  
					_cone setpos _pos; 
					_cone setDir _dir; 
				}; 
			
				removebarrier =  {  
					_list = position player nearObjects ["RoadBarrier_F",1.5];
					_barrier = (_list select 0);
					deleteVehicle _barrier;
				}; 
			
				removecone =  {  
					_list = position player nearObjects ["RoadCone_F", 1];
					_cone = (_list select 0);
					deleteVehicle _cone; 
				}; 
				
				removebarriers = {
					player removeAction placeCone;
					player removeAction placeBarrier;
					player removeAction removeCone;
					player removeAction removeBarrier;
					player removeAction cancelBarrier;
					player removeAction header;
				};
	
	header = player addaction [("<t color=""#FF3300"">" + ("### Barierki ###") +"</t>"),""]; 
	placeCone = player addaction ["Połóż Pachołek",placecone]; 
	placeBarrier = player addaction ["Połóż Barierke",placebarrier]; 
	removeCone = player addaction ["Usuń Pachołek",removecone]; 
	removeBarrier = player addaction ["Usuń Barierke",removebarrier]; 
	cancelBarrier = player addaction [("<t color=""#FF3300"">" + ("### Anuluj ###") +"</t>"),removebarriers];
		
	player removeAction barrierMain;
