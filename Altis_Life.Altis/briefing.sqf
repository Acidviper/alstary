waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["serverrules","Regulamin Serwera"];
player createDiarySubject ["policerules","Police Procedures/Rules"];
player createDiarySubject ["safezones","Safe Zones"];
//player createDiarySubject ["civrules","Civ Zasady"];
player createDiarySubject ["illegalitems","Nielegalki"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Controls"];
player createDiarySubject ["aktual","Aktualizacje"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
								"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"Zmiany",
				"
					Zmiany możesz znaleźć na forum :)
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Eventy", 
				"
				Wszelkie informacje na temat eventów na naszym TS<br/>
				"
		]
	];
	
	player createDiaryRecord["safezones",
		[
			"Bezpieczne Strefy",
				"
					Jeśli celowo niszysz pojazdy (np. powodujesz wybuchy), kradniesz, lub zabijasz w strefie zostaniesz ukarany banem.<br/><br/>
					
					Każdy resp pojazdów (sklep lub garaż)<br/>
					Każdy sklep z bronią<br/>
					Każdy posterunek policji<br/>
					Baza rebeliantów<br/>
					Sklepy <br/><br/>
				"
		]
	];
					
	
	player createDiaryRecord ["serverrules",
		[
			"Banowanie", 
				"
				Powody za które zostaniesz zbanowany.<br/><br/>
				
				1. Hackowanie<br/>
				2. Oszukiwanie<br/>
				3. Wykorzystywanie (Spójrz na 'Wykorzystywanie')<br/>
				4. Bycie wyrzucanym 3 lub więcej razy.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Interakcje z policją", 
				"
				Przedmioty na tej liście mogą spowodować usunięcie/zbanowanie z serwera zależy od admina.<br/><br/>
				
				1. Cywile mogą być aresztowani w poszukiwaniu plecaków/pojazdów policyjnych . Ciągle dokonywanie tego czynu skutkuje wyrzuceniem z serwera.<br/>
				2. Cywile mogą być aresztowani jeśli podążają za policja w celu podawania informacji innym graczą.<br/>
				3. Cywile/Rebelianci chcący zabić gracza w mieście lub innym miejscu bez żadnej interakcji dokonują w tym czasie RDMa . Sprawdź sekcję RDM.<br/>
				4. Podążanie za polcją i jej uszkadzanie uznawanie jest jako griefing, skutkuje to usunięciem z serwera.<br/>
				5. Ciągłe blokowanie/przeszkadzanie policji w pracy, skutkuje usunięciem z serwera.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Łodzie", 
				"
				Przemioty na tej liście skutkują banem lub wyrzuceniem z serwera.<br/><br/>
				
				1. Ciągle posuwanie łodzi bez zezwolenia.<br/>
				2. Posuwanie ludzi z zamiarem zranienia/zabicia. To nie jest RP to tylko wada mechaniki.<br/>
				3. Celowe bieganie przy nurkach/łodziach.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Lotnictwo", 
				"
				 Przedmioty na tej liście skutkują banem lub wyrzuceniem z serwera, zależy od administratora.<br/><br/>
				
				1. Celowe niszczenie helikopterem innych helikopterów, budynków, pojazdów.<br/>
				2. Latanie poniżej 150 metrów nad miastem. Jest to nielegalne, co więcej jest to ryzyko uderzenia w miasto, jest to wbrew regulaminowi.<br/>
				3. Kradzież pojazdu bez żadnego ostrzeżenia i czasu aby właściciel mógł zamknąć pojazd. Jeśli wyląduja nie zamykając pojazdu wporządku(nie dotyczy miast), lecz jeśli dopiero wysiedli bez czasu na zamknięcie pojazdu, w żadnym wypadku nie możesz go zabrać .<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Pojazdy", 
				"
				Przedmioty na tej liście skutkują banem lub wyrzuceniem z serwera, zależy od administratora.<br/><br/>
				
				1. Celowe rozjeżdżanie (VDM).<br/>
				2. Celowe wpadanie komuś pod koła.<br/>
				3. Celowe wjeżdżanie w inny pojazd powodując wybuch.<br/>
				4. Celowe wchodzenie właścicielowi do samochodu bez jego zezwolenia i żadnego powodu.<br/>
				5. Kradzież pojazdów tylko po to, aby je zniszczyć.<br/>
				6. Kupowanie wielu pojazdów, aby dokonąć czynów wyżej podanych.<br/>
				7. Jedyny powód dzięki któremu możesz strzelać z pojazdu jest odgrywanie scenariuszu RP.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Zasady komunikacji", 
				"
				Przedmioty na tej liście skutkują banem lub wyrzuceniem z serwera, zależy od administratora.<br/><br/>
				
				1. Kanał ogólny może być tylko używaniy do pisania (puszczanie muzyki,rozmowa itp. są niedozwolone).<br/>
				2. Spamowanie na obojętnie którym kanale.<br/>
				4. Policjanci muszą być na kanałach policyjnych ZAWSZE gdy są na serwerze.<br/>
				5. Cywil nie może być na żadnym z kanałów policyjnych(teampspeak).<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"RDM", 
				"
				Przedmioty na tej liście skutkują banem lub wyrzuceniem z serwera, zależy od administratora.<br/><br/>
				
				1. Zabijanie bez żadnego powodu / interakcji.<br/>
				2. Powodowanie buntu nie jest powodem, aby zabijać cywili nawet policjantów!.<br/>
				3. Policjanci mogą rozpocząć strzelanine bez interakcji jeśli gracz jest poszukiwany!.<br/>
				4. Jeśli zostaniesz zabity w środku strzelaniny(nie uczestnicząc w niej) to nie jest RDM!.<br/>
				5. Zabicie innej osoby w celu obrony własnej nie jest RDM'em.<br/>
				6. Strzelanie do graczy bez czasu na reakcje oznaczane jest jako RDM.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"Zasady odrodzenia", 
				"
				Zasady odrodzenia dotyczą wszystkich cywili/rebeliantów jak i graczy .<br/><br/>
				
				Przedmioty na tej liście skutkują banem lub wyrzuceniem z serwera, zależy od administratora.<br/><br/>

				1. Jeśli zginiesz musisz zaczekać 15minut, aby wrócić na miejsce akcji.<br/>
				2. Jeśli zginiesz podczas akcji twoje czyny zostają usunięte lecz nie możesz się mścić.<br/>
				3. Jeśli zostałeś zabity bez powodu(RDM) nie dotyczy zasad odrodzenia(nie dotyczy prowadzanych akcji).<br/>
				4. Jeśli zabijesz się celowo nie jest to nowe życie.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Nie bądź ujem!", 
				"

				Bądź uczciwym graczem. Graj rp to nie będziesz miał problemów z administracją.<br/>
				"
		]
	];
	
// Police Section
	player createDiaryRecord ["policerules",
		[
			"Krytyczne negocjacje",
				"
				Negocjacje muszą być prowadzone z sierżantem lub osobą z wyrzszym stopniem.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Bank",
				"
				1. Dom miliardera jest niedostępny dla cywili chyba że dostniesz pozwolenie. Jeśli cywil zostanie złapany na terenie banku będzie źle :C.
				2. Helikoptery latające nad Domem miliardera mogą być poproszone o opuszczenie strefy powietrznej banku.<br/>
				2. Jeśli bank jest rabowany wszyscy policjanci powinni udać się do banku w celu zatrzymania tego procesu.<br/>
				3. Policjanci w poblirzu powinni udać się do banku w celu pomocy, a mniejsze uczynki mogą zostać odpuszczone.<br/>
				4. Policjanci nie powinni ślepo strzelać w ściany banku.<br/>
				5. Policja powinna wyprowadzić cywili z miejsca rabunku.<br/>
				6. Każdy cywil próbujący zatrzymać policjantów mogą zostać aresztowani/zabici.<br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Helikoptery",
				"
				1. Żaden helikopter(poza medycznym) nie może wylądować w kavali bez zezwolenia najwyższego rangą policjanta. (Czytaj dział rangi.)<br/>
				Kavala: szpital (037129).<br/>
				Athira: Boisko (138185) lub za DMV (140188).<br/>
				Pyrgos: Pola(170127)<br/>
				Sofia: naprzeciwko do sklepu z pojazdami (258214) Na południowy wschód od garaży (257212)<br/>
				
				2. Helikoptery nie powinny lądować na drogach.<br/>
				3. Policja może zakazać lądowania w danym miejscu lecz nie może być to na długi okres czasu.<br/>
				4. Helikoptery nie mogą latać poniżej 150m nad miastem bez pozwolenia.<br/>
				5. Helikoptery nie mogą latać nad miejscem operacji prowadzonej przez policję(grozi zestrzeleniem bez uprzedzenia).<br/><br/>

				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Nielegalne strefy", 
				"
				1. Strefy gangów nie są nielegalne. Chyba że jest tam prowadzona takowa czynność.<br/>
				2. Nie wchodź do nielegalnej strefy jeśli jest częśia nalotu. Czytaj .<br/>
				3. Jeśli złapiesz kogoś w nielegalnej strefie zadzwoń po wsparcie.<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Patrolowanie", 
				"
				1.Policja może partolować każde miejsce :D <br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Checkpoints", 
				"
				Policja może ustawiać blokady drogowe w celu zwiększenia bezpieczeństwa na drogach lub zastrzymania poszukiwanego.<br/><br/>
				
				1. Checkpoint powinien składać się z 2 lub więcej policjantów oraz 2 lub więcej aut.<br/>
				2. Checkpoint powinien znajdować się minimum 300m od nielegalnego miejsca.<br/>
				4. Checkpointy nie są oznaczone na mapie.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Pojazdy", 
				"
				1. Pojazdy nie powinny być zostawiane na pastwe losu.<br/>
				2. Jeśli auto wygląda na porzucone lub zniszczone policjant może je odcholować bez pytania.<br/>
				3. Łodzie powinny być zacumowane przy brzegu.<br/>
				4. Każdy pojazd powinien mieć włączone światła.<br/>
				5. Odcholowywaniem zajmuje się policja, pomoaga to w zachowaniu płynności serwera.<br/>
				6. Jeśli odcholowywujesz pojazd napisz najpierw do właściciela pojazdu czy jest gdzieś w pobliżu.<br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Prędkość", 
				"
				Prędkości które .<br/><br/>
				
				Wewnątrz dużych miast:<br/>
				małe drogi: 50km/h<br/>
				główne drogi: 65km/h<br/>
				Poza miastem:<br/>
				małe drogi: 80km/h<br/>
				główne drogi: 110km/h<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"miasta", 
				"
				1. Policjantci mogą patrolować większe miasta - Kavala, Athira, Pyrgos i Sofie.<br/>
				2. Polcja może zatrzymać każde auto do kontroli.<br/>
				3. Policja nie może ciągle siedzieć w jednym miejscu w mieście.<br/>
				4. Wejście na komisariat policji jest czynem nielegalnym, chyba że cywil ma jakiś ważny powód.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Aresztowanie i nagradzanie mandatem",
				"
				Aresztowanie.<br/><br/>

				1. Nie możesz wsadzić do areszu kogoś kto zapłacił mandat.<br/>
				2. Musisz powiedzieć poszukiwanemu za co zostanie aresztowany zanim to zrobisz.<br/>
				3. Jeżeli cywil jest poszukiwany możesz go aresztować lecz nie zabijać, chyba że to on spróbuje cię zabić.<br/><br/>


				Mandaty.<br/><br/>

				1. Mandaty powinny zostawać wydawanie słusznie i zgodnie taryfikatorem.<br/>
				2. Mandaty powinny być wystawiane za coś co osoba zrobiła nie odwrotnie.<br/>
				4. Dawanie zawyżonych mandatów grozi wydaleniem z policji.<br/><br/>
				
				Jeśli czegoś nie będziesz pewien zapytaj się osoby z wyższą rangą lecz nie naprzykszaj się.<br/><br/>
				
				Taryfikator możesz znaleźć na teamspeaku oraz forum<br/><br/>
				"
		]
	];
		
	player createDiaryRecord ["policerules",
		[
			"Bronie", 
				"
				Policja nie może wspomagać cywili bronią ani amunicją ! Dostarczanie broni grozi banem.<br/><br/>

				Legalne przedmioty dostępne z licencją:<br/>
				1. P07<br/>
				2. Rook<br/>
				3. ACP-C2<br/>
				4. Zubr<br/>
				5. 4-five<br/>
				6. PDW2000<br/><br/>

				Każda inna broń (Włączając P07 z tłumikiem [Przeznaczone dla policji]) jest nielegalna.<br/><br/>

				1. Każdy cywil musi mieć broń schowaną(CTRL+H).<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Używanie paralizatorów",
				"
				Taser (P07 z tłumikiem) jest na chwile obecną jedynią bronią nie powodującą śmierci.<br/><br/>

				1. Taser powinnien być używany przeciwko ludzią nie spełniających poleceń.<br/>
				2. Nie strzelaj Taserem w przypadkowe miejsca bez jakiego kolwiek powodu.<br/>
				3. Tasera użyć możesz w przypaku jeśli ktoś łamie prawo/regulamin, nie używaj go od tak.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Rangi Policyjne",
				"
				Policjant z najwyższą rangą akutualnie na serwerze(nie dotyczy klaudi) dowodzi jednostkami o niższej radze(KAŻDY POLCJANT NIŻEJ RANGĄ MUSI SIE GO SŁUCHAĆ) i to on odpowiada za każde złamanie regulaminu.<br/><br/>

				Rangi policyjne:<br/>
                1. Kmoendnat<br/>
				2. Kapitan<br/>
				3. AT<br/>
				4. Porucznik<br/>
				5. Sierżant<br/>
				6. Patrolowy<br/>
				7. Kadet<br/><br/>

				Policjant najniższy rangą musi patrolować miasto i jego obręby. Wyjątkiem jest wezwanie, jeśli inny policjant będzie zajęty wtedy może wyjechać daleko poza miasto<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Używanie broni śmiercionośnej",
				"
				1. Używanie broni jest dozwolone w celu obrony własnej lub innych ludzi.<br/>
				2. Używanie broni .<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Regulamin TeamSpek'a",
				"
				1. Każdy policjant musi być na TeamSpeaku(kanale policji) w przeciwnym wypadku będzie wyrzucony z serwera.<br/>
				2. Przed wejściem do gry najpierw wejdź na TeamSpeak'a!.<br/><br/>
				"
		]
	];
	
	
	
// Illegal Items Section
	player createDiaryRecord ["illegalitems",
		[
			"Regulamin rebeli",
				"
				1. Nie atakuj nikogo bez żadnego powodu poza czerwoną strefą.<br/><br/>
				2. Nie rebeliańci nie są bogami serwera więc za takie się nie uważaj :)<br/>
				3. Zawsze zanim kogoś zaatakujesz wyślij mu sms albo powiedz co ma robić.<br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Regulamin Gangu",
				"
				1. Bycie w gangu nie jest nielegalne. Staje się dopiero gdy dokonywane są nielegalne czynności przez daną grupe.<br/>
				2. Bycie na terenie gangu nie jest nielegalne. Staje się gdy dokonywane są nielegalne czynności.<br/>
				3. Gangi mogą przejmować kontrole nad kryjówkami. Inny gang może zaatakować go w celu jej odbicia.<br/>
				4. Aby zadeklarować wojne pomiędzy gangami, lider musi napisać na kanale globalnym o tym gdy są aktywni wszyscy członkowie obu gangów. Aby stworzyć wojne na dłuższy okres czasu musi być to uwzględnione z adminem.<br/>
				5. Gangi nie powinny zabijać nieuzbrojonych cywili, chyba że są w gangu i stoją na terenie kryjówki.<br/>
				6. Gangi nie powinny zabijać cywili, zabicie cywila bez powdu to rdm! chyba że był na terenie prowadzonej akcji.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Nielegalne pojazdy",
				"
				Cywil w posiadaniu jednego z tych pojazdów łamie prawo.<br/><br/>

				1. Ifrit<br/>
				2. Hunter<br/>
				3. <br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Nielegalne bronie",
				"
				Cywil nie może posiadać takiej broni przy sobie ani w pojeździe.<br/><br/>

				1. MX Series<br/>
				2. Katiba Series<br/>
				3. TRG Series<br/>
				4. Mk.20 Series<br/>
				5. Mk.18 ABR<br/>
				6. SDAR Rifle<br/>
				7. Sting SMG<br/>
				8. Silenced P07 (Taser)<br/>
				9. Ładunki wybuchowe<br/><br/>
				"
		]
	];
	player createDiaryRecord ["Nielegalne przedmioty",
		[
			"Nielegalne przedmioty",
				"
				Te przedmioty są nielegalne:<br/><br/>
				1. Żółwie<br/>
				2. Kokaina<br/>
				3. Heroina<br/>
				4. Cannabis<br/>
				5. Marihuana<br/><br/>
				"
		]
	];

	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"Klawiszologia",
				"
				Y: Otwiera menu gracza<br/>
				U: Otwiera i zamyka pojazd<br/>
				F: Syreny policyjne (Jeśli jesteś policjantem)<br/>
				T: Bagażnik pojazdu<br/>
				Lewy Shift + R: Aresztowanie (Wyłącznie policja)<br/>
				Lewy Shift + R: Powalenie (Wyłącznie cywile, używane w celu rabunku)<br/>
				Lewy Windows: Główny klawisz interakcji, gathering, interacting with cars (repair,etc) and for cops to interact with civilians. Can be rebound to a single key like H by pressing ESC->Configure->Controls->Custom->Use Action 10<br/>
				Lewy Shift + L: Aktywuje syreny policyjne (wyłącznie jako policjant).<br/>
				Lewy Shift + H: Chowa twój pistolet<br/>
                Lewy Shift + P: Zatyczki do uszów
				"
		]
	];

	// Aktualizacje

	player createDiaryRecord ["aktual",
		[
			"28-02-2016-OkruT",
				"
				Zmiany w systemie Marketu<br/><br/>
				Dodanie stref skażonych:<br/>
				- Oczyszczanie Uranu<br/>
				- Przetwórka Uranu<br/>
				- Produkcja Brudnego Uran<br/>
				- Wzbogacanie Uranu<br/>
				- Produkcja Prętów<br/><br/>
				Dodanie nowych ikon dla Uranu<br/>
				Poprawa czytelności mapy<br/>
				Poprawa misji kuriera<br/>
				Poprawa paska statusu<br/>
				"
		]
	];

		player createDiaryRecord ["aktual",
		[
			"2-03-2016-OkruT",
				"
				Dodanie SMS do Cywili<br/>
				Poprawa paska statusu<br/>
				"
		]
	];