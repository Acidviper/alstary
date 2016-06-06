private["_unit","_dText","_weed","_cocaine","_pbrau","_sprit","_heroin","_alk"];

_unit = cursorTarget;
if(isNull _unit) exitWith {};

hint "Badanie Narkotyków i Alkoholu...";
sleep 2;

if(player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint "Próba nie powiodła się."};

if(_unit getVariable["drug_weed",false]) then { _weed = "Pozytywny"; } else { _weed = "Negatywny"; };
if(_unit getVariable["drug_cocaine",false]) then { _cocaine = "Pozytywny"; } else { _cocaine = "Negatywny"; };
if(_unit getVariable["drug_pbrau",false]) then { _pbrau = "Pozytywny"; } else { _pbrau = "Negatywny"; };
if(_unit getVariable["drug_sprit",false]) then { _sprit = "Pozytywny"; } else { _sprit = "Negatywny"; };
if(_unit getVariable["drug_heroin",false]) then { _heroin = "Pozytywny"; } else { _heroin = "Negatywny"; };
if(_unit getVariable["drug_alk",false]) then { _alk = "Pozytywny"; } else { _alk = "Negatywny"; };

hint parseText format["<t color='#FF0000'><t size='1'>%1</t></t><br/><t color='#FFD700'>Marihuana: </t>%2<br/><t color='#FFD700'>Kokaina: </t>%3<br/><t color='#FFD700'>Likier: </t>%4<br/><t color='#FFD700'>Napoje Alkoholowe: </t>%5<br/><t color='#FFD700'>Heroina: </t>%6<br/><t color='#FFD700'>Alkohol: </t>%7<br/><br/><t color='#FF0000'>%8</t>"
,name _unit,_weed,_cocaine,_pbrau,_sprit,_heroin,_alk];