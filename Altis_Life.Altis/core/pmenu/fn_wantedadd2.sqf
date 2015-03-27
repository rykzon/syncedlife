//fn_wantedadd2.sqf

private["_display","_list","_side"];
disableSerialization;
waitUntil {!isNull (findDisplay 9900)};
_display = findDisplay 9900;
_list = _display displayCtrl 9902;

//Purge List
lbClear _list;


{
    _side = switch(side _x) do {case west: {"Cop"}; case civilian : {"Civ"}; default {"Unknown"};};
    _list lbAdd format["%1 - %2", name _x,_side];
    _list lbSetdata [(lbSize _list)-1,str(_x)];
} foreach playableUnits;


_list2 = _display displayCtrl 9991;
lbClear _list2;


//_index = lbAdd [_list2, "Name"];
//lbSetData [_list2, _index, "pfad/zum/bild.paa"];
//lbSetValue [_list2, _index, "pfad/zum/bild.paa"];

_text = "Fahren ohne Fuehrerschein $25000";
_data = "1";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Versuchter Diebstahl e.Zivilfahrzeugs $";
_data = "2";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Diebstahl/Fuehren e.fremden Zivilfahrzeugs $1";
_data = "3";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Fahren ohne Licht $1";
_data = "4";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Ueberhoehte Geschwindigkeit(10kmh) $2500";
_data = "5";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Gefaehrliche Fahrweise $1";
_data = "6";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Versuchter Diebstahl e.Polizeifahrzeugs $5000";
_data = "7";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Diebstahl von Polizeifahrzeugen $25000";
_data = "8";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];


_text = "Landen in einer Verbotszone $25000";
_data = "9";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Fahren von illegalen Fahrzeugen $50000";
_data = "10";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Unfallverursacher/Fahrerflucht nach Unfall $35000";
_data = "11";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Fahrerflucht vor der Polizei $1";
_data = "12";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Überfahren eines anderen Spielers $1";
_data = "13";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Illegale Strassensperren $1";
_data = "14";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Widerstand gegen die Staatsgewalt $1";
_data = "15";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Nicht befolgen e.pol.Anordnung $1";
_data = "16";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Beamtenbeleidigung $1";
_data = "17";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Belaestigung eines Polizisten $1";
_data = "18";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Betreten der pol.Sperrzone $1";
_data = "19";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Toeten eines Polizisten $1";
_data = "20";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Beschuss auf Polizei/Beamte/Eigentum $1";
_data = "21";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Zerstörung von Polizeieigentum $15000";
_data = "22";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Drogendelikte $50000";
_data = "23";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Waffenbesitz ohne Lizenz $5000";
_data = "24";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Mit gez.Waffe durch Stadt $2500";
_data = "25";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Besitz einer verbotenen Waffe $10000";
_data = "26";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Schusswaffengebrauch innerhalb Städte $10000";
_data = "27";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Geiselnahme $50000";
_data = "28";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Überfall auf Personen/Fahrzeuge $10000";
_data = "29";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Bankraub $100000";
_data = "30";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Mord $125000";
_data = "31";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Raubueberfall $75000";
_data = "32";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Angriff durch Rebellen $40000";
_data = "33";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Angriff/Belagerung von Hauptstädten $25000";
_data = "34";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Vers.Landung in einer Flugverbotszone $1500";
_data = "35";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Fliegen/Schweben unterhalb 150m ü.Stadt $2000";
_data = "36";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Ausbruch aus dem Gefaengnis $25000";
_data = "37";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Fliegen ohne Fluglizenz $25000";
_data = "38";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Dauerhaft stoerendes Hupen $1000";
_data = "39";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Handel mit exotischen Guetern $25000";
_data = "40";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Ruecksichtsloses Fahren $10000";
_data = "41";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Ruecksichtsloses Fahren(Todesfolge) $60000";
_data = "42";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];


_text = "Fliegen ohne Positionslichter $5000";
_data = "43";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];


_text = "Illegales Waffenbesitz $25000";
_data = "44";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Offenes Tragen von Waffen in Oeffentlichkeit $15000";
_data = "45";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Tankstellenraub (Kavala) $50000";
_data = "46";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Tankstellenraub (Stadion) $50000";
_data = "47";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Tankstellenraub (Agios) $50000";
_data = "48";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Tankstellenraub (Lakka) $50000";
_data = "49";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Tankstellenraub (Anthrakia) $50000";
_data = "50";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Tankstellenraub (DP14) $50000";
_data = "51";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Tankstellenraub (Sofia) $50000";
_data = "52";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];


