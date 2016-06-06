/*
	File: fn_welcomeNotification.sqf
	
	Description:
	Called upon first spawn selection and welcomes our player.
*/
format["Witaj %1 na Altis Life",profileName] hintC
	[
		parseText "<t size='1.5' color='#00FFFF'>ALTISLAND</t>",
		parseText "<t color='#ffff24'>FORUM I Regulamin www.altisland.pl</t>",
		parseText "<t color='#ffff24'>Zmiany :Wyższe ceny na złomowisku,
		Wyższe ceny za ryby!!!!!!
		Licencje nielegalne w innych miejscach :)
		Dodane punkty medyczne dla medyków</t>",
		parseText "<t color='#ffff24'>Regulamin Domu miliardera: na forum!!!</t>"
	];