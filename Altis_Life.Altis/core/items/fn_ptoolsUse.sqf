/*
        File: fn_ptoolsUse.sqf
        Author: blaster, Thanks to tonic for code model
       
        Description:
        Main functionality for prospecting tools in mining.
*/
 
closeDialog 0;
private["_mine","_item1","_item2","_item3","_item4","_item5","_item6","_item7","_item8","_item9","_item10","_item11","_item12","_item13","_msg"];
_mine = "";
 
switch (true) do {
        case (player distance (getMarkerPos "cocaine_1") < 40): {_mine = ["cannabis",3,"cocaine",5,"zuckeru",2,"traubenu",1,"tabaku",1,"salt",2,"diamond",1];};
       
      default {_mine = ""};
};
 
if {_mine = ""} exitWith {hint localize "STR_ISTR_Pick_NotNear"};
if(vehicle player != player) exitWith {hint localize "STR_ISTR_Pick_MineVeh"};
 
sleep 2;
 
switch (count(_mine)) do {
        case 2: {
                // _item1 = [([localize ([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1)];
                _itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1;
                _msg = format["Risultati campione: \n%1: %2",(_item1 select 0),(_item1 select 1)];
        };
        case 4: {
                _itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1;
                _itemName = [([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3;
                _msg = format["Risultati campione: \n%1: %2 \n%3: %4",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1)];
        };
        case 6: {
                _itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1;
                _itemName = [([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3;
                _itemName = [([_mine,4] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 5;
                _msg = format["Risultati campione: \n%1: %2 \n%3: %4 \n%5: %6",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1),(_item3 select 0),(_item3 select 1)];
                };
        case 8: {
                _itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1;
                _itemName = [([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3;
                _itemName = [([_mine,4] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 5;
                _itemName = [([_mine,6] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 7;
                _msg = format["Risultati campione: \n%1: %2 \n%3: %4 \n%5: %6 \n%7: %8",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1),(_item3 select 0),(_item3 select 1),(_item4 select 0),(_item4 select 1)];
        };
        case 10: {
                _itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1;
                _itemName = [([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3;
                _itemName = [([_mine,4] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 5;
                _itemName = [([_mine,6] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 7;
                _itemName = [([_mine,8] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 9;
                _msg = format["Risultati campione: \n%1: %2 \n%3: %4 \n%5: %6 \n%7: %8 \n%7: %8",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1),(_item3 select 0),(_item3 select 1),(_item4 select 0),(_item4 select 1),(_item5 select 0),(_item5 select 1)];
        };
        case 12: {
                _itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1;
                _itemName = [([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3;
                _itemName = [([_mine,4] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 5;
                _itemName = [([_mine,6] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 7;
                _itemName = [([_mine,8] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 9;
                _itemName = [([_mine,10] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 11;
                _msg = format["Risultati campione: \n%1: %2 \n%3: %4 \n%5: %6 \n%7: %8 \n%9: %10 \n%11: %12",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1),(_item3 select 0),(_item3 select 1),(_item4 select 0),(_item4 select 1),(_item5 select 0),(_item5 select 1),(_item6 select 0),(_item6 select 1)];
        };
        case 14: {
                _itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1;
                _itemName = [([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3;
                _itemName = [([_mine,4] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 5;
                _itemName = [([_mine,6] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 7;
                _itemName = [([_mine,8] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 9;
                _itemName = [([_mine,10] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 11;
                _itemName = [([_mine,12] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 13;
                _msg = format["Risultati campione: \n%1: %2 \n%3: %4 \n%5: %6 \n%7: %8 \n%9: %10 \n%11: %12 \n%13: %14",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1),(_item3 select 0),(_item3 select 1),(_item4 select 0),(_item4 select 1),(_item5 select 0),(_item5 select 1),(_item6 select 0),(_item6 select 1),(_item7 select 0),(_item7 select 1)];
        };
        case 16: {
                _itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1;
                _itemName = [([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3;
                _itemName = [([_mine,4] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 5;
                _itemName = [([_mine,6] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 7;
                _itemName = [([_mine,8] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 9;
                _itemName = [([_mine,10] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 11;
                _itemName = [([_mine,12] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 13;
                _itemName = [([_mine,14] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 15;
                _msg = format["Risultati campione: \n%1: %2 \n%3: %4 \n%5: %6 \n%7: %8 \n%9: %10 \n%11: %12 \n%13: %14 \n%15: %16",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1),(_item3 select 0),(_item3 select 1),(_item4 select 0),(_item4 select 1),(_item5 select 0),(_item5 select 1),(_item6 select 0),(_item6 select 1),(_item7 select 0),(_item7 select 1),(_item8 select 0),(_item8 select 1)];
        };
        case 18: {
                _itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1;
                _itemName = [([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3;
                _itemName = [([_mine,4] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 5;
                _itemName = [([_mine,6] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 7;
                _itemName = [([_mine,8] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 9;
                _itemName = [([_mine,10] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 11;
                _itemName = [([_mine,12] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 13;
                _itemName = [([_mine,14] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 15;
                _itemName = [([_mine,16] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 17;
                _msg = format["Risultati campione: \n%1: %2 \n%3: %4 \n%5: %6 \n%7: %8 \n%9: %10 \n%11: %12 \n%13: %14 \n%15: %16 \n%17: %18",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1),(_item3 select 0),(_item3 select 1),(_item4 select 0),(_item4 select 1),(_item5 select 0),(_item5 select 1),(_item6 select 0),(_item6 select 1),(_item7 select 0),(_item7 select 1),(_item8 select 0),(_item8 select 1),(_item9 select 0),(_item9 select 1)];
        };
        case 20: {
                _itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1;
                _itemName = [([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3;
                _itemName = [([_mine,4] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 5;
                _itemName = [([_mine,6] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 7;
                _itemName = [([_mine,8] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 9;
                _itemName = [([_mine,10] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 11;
                _itemName = [([_mine,12] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 13;
                _itemName = [([_mine,14] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 15;
                _itemName = [([_mine,16] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 17;
                _itemName = [([_mine,18] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 19;
                _msg = format["Risultati campione: \n%1: %2 \n%3: %4 \n%5: %6 \n%7: %8 \n%9: %10 \n%11: %12 \n%13: %14 \n%15: %16 \n%17: %18 \n%19: %20",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1),(_item3 select 0),(_item3 select 1),(_item4 select 0),(_item4 select 1),(_item5 select 0),(_item5 select 1),(_item6 select 0),(_item6 select 1),(_item7 select 0),(_item7 select 1),(_item8 select 0),(_item8 select 1),(_item9 select 0),(_item9 select 1),(_item10 select 0),(_item10 select 1)];
        };
        case 22: {
                _itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1;
                _itemName = [([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3;
                _itemName = [([_mine,4] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 5;
                _itemName = [([_mine,6] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 7;
                _itemName = [([_mine,8] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 9;
                _itemName = [([_mine,10] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 11;
                _itemName = [([_mine,12] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 13;
                _itemName = [([_mine,14] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 15;
                _itemName = [([_mine,16] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 17;
                _itemName = [([_mine,18] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 19;
                _itemName = [([_mine,20] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 21;
                _msg = format["Risultati campione: \n%1: %2 \n%3: %4 \n%5: %6 \n%7: %8 \n%9: %10 \n%11: %12 \n%13: %14 \n%15: %16 \n%17: %18 \n%19: %20 \n%21: %22",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1),(_item3 select 0),(_item3 select 1),(_item4 select 0),(_item4 select 1),(_item5 select 0),(_item5 select 1),(_item6 select 0),(_item6 select 1),(_item7 select 0),(_item7 select 1),(_item8 select 0),(_item8 select 1),(_item9 select 0),(_item9 select 1),(_item10 select 0),(_item10 select 1),(_item11 select 0),(_item11 select 1)];
        };
        case 24: {
                _itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1;
                _itemName = [([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3;
                _itemName = [([_mine,4] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 5;
                _itemName = [([_mine,6] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 7;
                _itemName = [([_mine,8] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 9;
                _itemName = [([_mine,10] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 11;
                _itemName = [([_mine,12] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 13;
                _itemName = [([_mine,14] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 15;
                _itemName = [([_mine,16] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 17;
                _itemName = [([_mine,18] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 19;
                _itemName = [([_mine,20] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 21;
                _itemName = [([_mine,22] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 23;
                _msg = format["Risultati campione: \n%1: %2 \n%3: %4 \n%5: %6 \n%7: %8 \n%9: %10 \n%11: %12 \n%13: %14 \n%15: %16 \n%17: %18 \n%19: %20 \n%21: %22 \n%23: %24",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1),(_item3 select 0),(_item3 select 1),(_item4 select 0),(_item4 select 1),(_item5 select 0),(_item5 select 1),(_item6 select 0),(_item6 select 1),(_item7 select 0),(_item7 select 1),(_item8 select 0),(_item8 select 1),(_item9 select 0),(_item9 select 1),(_item10 select 0),(_item10 select 1),(_item11 select 0),(_item11 select 1),(_item12 select 0),(_item12 select 1)];
        };
        case 26: {
                _itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1;
                _itemName = [([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3;
                _itemName = [([_mine,4] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 5;
                _itemName = [([_mine,6] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 7;
                _itemName = [([_mine,8] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 9;
                _itemName = [([_mine,10] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 11;
                _itemName = [([_mine,12] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 13;
                _itemName = [([_mine,14] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 15;
                _itemName = [([_mine,16] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 17;
                _itemName = [([_mine,18] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 19;
                _itemName = [([_mine,20] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 21;
                _itemName = [([_mine,22] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 23;
                _itemName = [([_mine,24] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 25;
                _msg = format["Risultati campione: \n%1: %2 \n%3: %4 \n%5: %6 \n%7: %8 \n%9: %10 \n%11: %12 \n%13: %14 \n%15: %16 \n%17: %18 \n%19: %20 \n%21: %22 \n%23: %24 \n%25: %26",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1),(_item3 select 0),(_item3 select 1),(_item4 select 0),(_item4 select 1),(_item5 select 0),(_item5 select 1),(_item6 select 0),(_item6 select 1),(_item7 select 0),(_item7 select 1),(_item8 select 0),(_item8 select 1),(_item9 select 0),(_item9 select 1),(_item10 select 0),(_item10 select 1),(_item11 select 0),(_item11 select 1),(_item12 select 0),(_item12 select 1),(_item13 select 0),(_item13 select 1)];
        };
};
 
hint _msg;