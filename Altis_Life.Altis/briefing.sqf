waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","Serverregeln"];
player createDiarySubject ["hotkeys","Tastenbelegungen"];

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
			"Custom Change Log",
				"
					Aktuelle Änderungen findet ihr in unserem Forum: synced-gaming.de.
				"
		]
	];

		player createDiaryRecord ["serverrules",
		[
			"
			Unsere Regeln findet ihr auf unserer Homepage: synced-gaming.de
			
			"
		]
	];
	
	
					
	
	player createDiaryRecord ["hotkeys",
		[
				"
					Aktion 10 : (Win Taste) Farmen und jegliche Spieler/Fahrzeug Interaktionen.
					1 : Spitzhacke.
					3 : Redgull.
					0 : Lautstärke hoch/runter.
					Numpad 1/2 : Liegestütze/Kniebeuge.
					Z : Spielermenü
					U : Fahrzeug auf/abschließen
					F : Sirene(cop)
					T : Kofferraum
					Shift + R : Fesseln/Verhaften
					Shift + G : Niederschlagen
					Shift + H : Waffe holstern.
					Strg + H : Waffe ziehen.
				"
		]
	];


	