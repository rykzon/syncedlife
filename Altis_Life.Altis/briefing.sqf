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
			"synced changelog",
				"
					Aktuelle Änderungen findet ihr in unserem Forum: synced-gaming.de
				"
		]
	];

		player createDiaryRecord ["serverrules",
		[
			"Regeln",
				"
				Unsere Regeln findet ihr auf unserer Homepage: synced-gaming.de <br/>
				Informationen rund um den Server findet ihr in unserem Wiki: synced.vilayer.me/wiki/
				
				"
		]
	];
	
	
					
	
	player createDiaryRecord ["hotkeys",
		[
			"Tastenbelegung",
				"
					Aktion 10 : (Win Taste) Farmen und jegliche Spieler/Fahrzeug Interaktionen.<br/>
					1 : Spitzhacke.<br/>
					3 : Redgull.<br/>
					0 : Lautstärke hoch/runter.<br/>
					STRG+Numpad 1/2 : Liegestütze/Kniebeuge.<br/>
					Z : Spielermenü<br/>
					U : Fahrzeug auf/abschließen<br/>
					T : Kofferraum<br/>
					Shift + R : Fesseln/Verhaften<br/>
					Shift + G : Niederschlagen<br/>
					Shift + H : Waffe holstern.<br/>
					Strg + H : Waffe ziehen.<br/>
					Strg + T : Ergeben.
				"
		]
	];


	