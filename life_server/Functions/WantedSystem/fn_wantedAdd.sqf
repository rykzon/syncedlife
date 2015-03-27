        private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
    case "187V": {_type = ["Überfahren mit Todesfolge",6500]};
    case "187": {_type = ["Mord",60000]};
    case "901": {_type = ["Gefängnisflucht",4500]};
    case "261": {_type = ["Raub",5000]};
    case "261A": {_type = ["Versuchter Raub",3000]};
    case "215": {_type = ["Versuchter Autodiebstahl",2000]};
    case "213": {_type = ["Verwenden illegaler Sprengstoff",10000]};
    case "211": {_type = ["Raub/Diebstahl",1000]};
    case "207": {_type = ["Entführung",3500]};
    case "207A": {_type = ["Versuchte Entführung",2000]};
    case "487": {_type = ["Autodiebstahl",1500]};
    case "488": {_type = ["Diebstahl",700]};
    case "480": {_type = ["Fahrerflucht",1300]};
    case "481": {_type = ["Drogenbesitz",1000]};
    case "482": {_type = ["Versuchter Drogenhandel",5000]};
    case "483": {_type = ["Drogenhandel",9500]};
    case "503": {_type = ["Handel mit exotischen Gütern",25000]};
    
    case "1": {_type = ["Fahren ohne Fuehrerschein",25000]};
    case "2": {_type = ["Versuchter Diebstahl Fahrzeugs",3500]};
    case "3": {_type = ["Diebstahl/Führen e.fremden Zivilfahrzeugs",5000]};
    case "4": {_type = ["Fahren ohne Licht",1]};
    case "5": {_type = ["Überhöhte Geschwindigkeit",2500]};
    case "6": {_type = ["Gefährliche Fahrweise",2500]};
    case "7": {_type = ["Versuchter Diebstahl e.Polizeifahrzeugs",5000]};
    case "8": {_type = ["Diebstahl von Polizeifahrzeugen",25000]};
    case "9": {_type = ["Landen in einer Verbotszone",25000]};
    case "10": {_type = ["Fahren von illegalen Fahrzeugen",50000]};
    case "11": {_type = ["Unfallverursacher/Fahrerflucht nach Unfall",35000]};
    case "12": {_type = ["Fahrerflucht vor der Polizei",7500]};
    case "13": {_type = ["Überfahren eines anderen Spielers",25000]};
    case "14": {_type = ["Illegale Strassensperren",5000]};
    case "15": {_type = ["Widerstand gegen die Staatsgewalt",15000]};
    case "16": {_type = ["Nicht befolgen e.pol.Anordnung",5000]};
    case "17": {_type = ["Beamtenbeleidigung",1]};
    case "18": {_type = ["Belästigung eines Polizisten",8000]};
    case "19": {_type = ["Betreten der pol.Sperrzone",1]};
    case "20": {_type = ["Töten eines Polizisten",25000]};
    case "21": {_type = ["Beschuss auf Polizei/Beamte/Eigentum",15000]};
    case "22": {_type = ["Zerstörung von Polizeieigentum",15000]};
    case "23": {_type = ["Drogendelikte",50000]};
    case "24": {_type = ["Waffenbesitz ohne Lizenz",5000]};
    case "25": {_type = ["Mit gez.Waffe durch Stadt",2500]};
    case "26": {_type = ["Besitz einer verbotenen Waffe",10000]};
    case "27": {_type = ["Schusswaffengebrauch innerhalb Stadt",10000]};
    case "28": {_type = ["Geiselnahme",50000]};
    case "29": {_type = ["Überfall auf Personen/Fahrzeuge",10000]};
    case "30": {_type = ["Bankraub",100000]};
    case "31": {_type = ["Mord",125000]};
    case "32": {_type = ["Raubüberfall",75000]};
    case "33": {_type = ["Folter",40000]};
    case "34": {_type = ["Angriff/Belagerung von Hauptstädten",25000]};
    case "35": {_type = ["Vers.Landung in einer Flugverbotszone",1500]};
    case "36": {_type = ["Fliegen/Schweben unterhalb 150m ü.Stadt",2000]};
    case "37": {_type = ["Ausbruch aus dem Gefaengnis",25000]};
    case "38": {_type = ["Fliegen ohne Fluglizenz",25000]};
    case "39": {_type = ["Dauerhaft störendes Hupen",1000]};
    case "40": {_type = ["Handel mit exotischen Gütern",25000]};
	case "41": {_type = ["Ruecksichtsloses Fahren",10000]};
	case "42": {_type = ["Ruecksichtsloses Fahren(Todesfolge)",60000]};
	case "43": {_type = ["Fliegen ohne Positionslichter",5000]};
	case "44": {_type = ["Illegales Waffenbesitz",25000]};
	case "45": {_type = ["Offenes Tragen von Waffen ab oeffentlichen orten",15000]};
    case "46": {_type = ["Tankstellenraub (Kavala)",50000]};
	case "47": {_type = ["Tankstellenraub (Stadion)",50000]};
	case "48": {_type = ["Tankstellenraub (Agios)",50000]};
	case "49": {_type = ["Tankstellenraub (Lakka)",50000]};
	case "50": {_type = ["Tankstellenraub (Anthrakia)",50000]};
	case "51": {_type = ["Tankstellenraub (DP14)",50000]};
	case "52": {_type = ["Tankstellenraub (Sofia)",50000]};
    default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call TON_fnc_index;

if(_index != -1) then
{
    _data = life_wanted_list select _index;
    _crimes = _data select 2;
    _crimes pushBack (_type select 0);
    _val = _data select 3;
    life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
}
    else
{
    life_wanted_list pushBack [_name,_uid,[(_type select 0)],(_type select 1)];
};

diag_log format["WANTED_LIST = %1", life_wanted_list];

_gesuchter = [life_wanted_list] call DB_fnc_mresArray;
_query = format["UPDATE wanted set list = '%1'", _gesuchter];


waitUntil {sleep (random 0.3); !DB_Async_Active};
_queryResult = [_query,1] call DB_fnc_asyncCall;