stsea=false;	//true - if want to | - | ability to move players, else - false ;
_stk=false;      //false - if want to disable "kiliing by hands" else true :

if(sta)then{sta=false;};
sleep 2;
asidsea=_this select 1;
_sid=_this select 0 select 0;
_sid1=_this select 0 select 1;
_sid2=_this select 0 select 2;
sta=true;
ea=objnull;
aa=[true,objnull];
aa1=[objnull];
aa2=[objnull];
while{sta}do{

_e=cursorTarget;
if(ea!=_e)then{
	ea=_e;
	_lsid=side _e;
	if(!isnull (aa2 select 0))then{
		aa2 select 0 removeAction (aa2 select 1);
        aa2=[objnull];
	};
	if((_lsid==(asidsea select 0))or(_lsid==(asidsea select 1))or(_lsid==(asidsea select 2)))then{
		aa2=[_e,_e addaction ["Get in squad",{
				_this select 0 removeaction (_this select 2);
				[_this select 0] join group (_this select 1);
			},[],0]];
	};
	if(aa select 0)then{
		if(!isnull (aa select 1))then{
			aa select 1 removeAction (aa select 2);
			aa=[true,objnull];
		};
	    if(!isnull (aa1 select 0))then{
			aa1 select 0 removeAction (aa1 select 1);
	        aa1=[objnull];
	    };
		if(_e isKindOf "man")then{
			if(_stk)then{
			if((_lsid==_sid)or(_lsid==_sid1)or(_lsid==_sid2)or(_lsid==sideEnemy))then{
				aa1 = [_e,_e addaction ["Kill",{
					if((alive (_this select 0))and((_this select 0 distance (_this select 1))<2.5))then{
						_this select 0 setdamage 1;
						_this select 0 removeAction (_this select 2);
                        aa1=[objnull];
					};
				},[],11]];
			};
    		};
			aa = [true,_e,_e addaction ["Ciągnij",{
				_le=_this select 0;
				_le removeaction (_this select 2);
				_lu=_this select 1;
//1~w;
/*
                if((_lu distance _le)>2.1)then{
                    hint"The object to far";
                    aa=[true,objnull];
                    aa1=[objnull];
                }else{
*/
//1~w;
				if(alive _le)then{
					_lsid=side _le;
					if((_lsid==(asidsea select 0))or(_lsid==(asidsea select 1))or(_lsid==(asidsea select 2))or(_lsid==civilian))then{
                    if(if(stsea)then{(!isPlayer _le)}else{true})then{
					//_this select 3;
					_le attachto [_lu, [0,1,0]];
					aa = [false,_lu,_lu addaction ["Upuść",{
						_this select 0 removeaction (_this select 2);
						detach (_this select 3);
						aa=[true,objnull];
					},_le,10],_le];
					waitUntil {(!alive _lu) or (!alive _le) or (aa select 0)};
					if(!(aa select 0))then{
						aa select 1 removeAction (aa select 2);
						detach (aa select 3);
						aa=[true,objnull];
					};
                    }else{
                        hint"Players can't be moved (According to settings)";
                        aa select 1 removeAction (aa select 2);
                        aa=[true,objnull];
                    };
                    }else{
                        hint"Units of the side can't be moved (According to settings)";
                        aa select 1 removeAction (aa select 2);
                        aa=[true,objnull];
                    };
				}else{
					_lu playAction "grabDrag";
					_lu forceWalk true;
					["a", "onEachFrame",{
						_le=_this select 0;
						_lu=_this select 1;
						_le setPos (_lu modelToWorld [0,1,0]);
						_le setdir (getDir _lu + 180);
						_le switchMove "AinjPpneMrunSnonWnonDb";
					},[_le,_lu]] call BIS_fnc_addStackedEventHandler;
					aa=[false,_lu,_lu addAction ["Upuść",{
						_this select 0 removeaction (_this select 2);
						["a", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
						_this select 3 switchMove "AinjPpneMstpSnonWrflDb_release";
						_this select 0 forceWalk false;
						_this select 0 playMove "amovpknlmstpsraswrfldnon";
						aa=[true,objnull];
					},_le,10],_le,_lu];
					waitUntil{(!alive _lu)or(aa select 0)or(animationState _lu=="acinpknlmstpsraswrfldnon_acinpercmrunsraswrfldnon")};
					if(animationState _lu=="acinpknlmstpsraswrfldnon_acinpercmrunsraswrfldnon")then{
						["a", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
						["a", "onEachFrame",{
							_le=_this select 0;
							_lu=_this select 1;
							_le setPos (_lu modelToWorld [-0.18,0.15,0]);
							_le setdir (getDir _lu + 180);
							_le switchMove "AinjPfalMstpSnonWrflDf_carried_dead";
						},[_le,_lu]] call BIS_fnc_addStackedEventHandler;
						waitUntil{(!alive _lu)or(aa select 0)};
					};
					if(!(aa select 0))then{
			    		aa select 1 removeAction (aa select 2);
						["a", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
						aa select 3 switchMove "AinjPpneMstpSnonWrflDb_release";
						aa select 4 forceWalk false;
						aa select 4 playMove "amovpknlmstpsraswrfldnon";
						aa=[true,objnull];
					};
				};
//1;
//				};
//1;
			},[],3,true,true,"","_this distance _target<2.1"]];
		}else{
			//R3F;
		};
	};
};
sleep 0.2;

};
