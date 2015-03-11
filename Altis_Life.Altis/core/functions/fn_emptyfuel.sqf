/*
      Created by Mokomoko
      Date: 04.08.2014
      Related Forum Post: http://www.altisliferpg.com/topic/4812-tutorial-how-to-increase-the-fuel-usage/
      Edited by Phil
*/

private["_vehicleToFuel","_velocityOfVehicle","_fuelConsumption"];

while{true} do
{
	if(vehicle player != player) then
	{
    _vehicleToFuel = (vehicle player);

    
    if(isEngineOn _vehicleToFuel && ((driver _vehicleToFuel) == player) && (_vehicleToFuel != player) ) then
    {
        _velocityOfVehicle = sqrt(((velocity _vehicleToFuel select 0)^2)+((velocity _vehicleToFuel select 1)^2))*3.6;
        
        
			switch (typeOf (_vehicleToFuel)) do {
			
			//Karts
            case "C_Kart_01_Blu_F":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;}; 
			case "C_Kart_01_Fuel_F":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;}; 
			case "C_Kart_01_Red_F":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;}; 
			case "C_Kart_01_Vrana_F":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;}; 
			
			//Kleinwagen
			case "RDS_Lada_Civ_01":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0002;}; 
			case "RDS_Lada_Civ_02":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0002;}; 
			case "RDS_Lada_Civ_04":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0002;}; 
			case "RDS_S1203_Civ_01":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0002;};
			case "RDS_S1203_Civ_02":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0002;};
			case "RDS_Golf4_Civ_01":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;};
			case "C_Van_01_transport_F":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0001;}; 
			case "cl3_civic_vti_black":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;}; 
			case "cl3_civic_vti_cardinal":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;}; 
			case "cl3_civic_vti_dark_green":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;};
			case "cl3_civic_vti_grey":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;};
			case "cl3_civic_vti_light_blue":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;}; 
			case "cl3_golf_mk2_babyblue":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;}; 
			case "cl3_golf_mk2_babypink":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;}; 
			case "cl3_golf_mk2_black":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;}; 
			case "cl3_golf_mk2_red":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;};
			case "cl3_golf_mk2_green":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;};
			case "cl3_golf_mk2_silver":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;};
 			
			//Mittelklassewagen
			case "RDS_Octavia_Civ_01":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;}; 
			case "C_Offroad_01_F":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;}; 
			case "C_SUV_01_F":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;}; 
			case "cl3_insignia_black":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0004;};
			case "cl3_insignia_cardinal":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0004;};
			case "cl3_insignia_grey":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0004;};
			case "cl3_insignia_marina_blue":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0004;}; 
			case "cl3_polo_gti_black":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0004;}; 
			case "cl3_polo_gti_blue":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0004;}; 
			case "cl3_polo_gti_burgundy":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0004;};
			case "cl3_polo_gti_navy_blue":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0004;};
			case "cl3_polo_gti_orange":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0004;}; 
			case "cl3_polo_gti_white":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0004;}; 
			case "cl3_e60_m5_black":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;}; 
			case "cl3_e60_m5_burgundy":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;}; 
			case "cl3_e60_m5_navy_blue":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;};
			case "cl3_e60_m5_gold":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;};
			case "cl3_e60_m5_silver":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;}; 	
			case "cl3_z4_2008_black":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;};
			case "cl3_z4_2008_cardinal":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;}; 
			case "cl3_z4_2008_navy_blue":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;}; 
			case "cl3_z4_2008_orange":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;}; 
			case "cl3_z4_2008_silver":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;};
			case "DAR_M3CivGrey":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;};
			case "DAR_M3CivWhite":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;}; 
			case "DAR_TahoeCivRed":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;}; 
			case "DAR_TahoeCivBlue":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;}; 
			case "DAR_TahoeCivSilver":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;}; 
			case "SAL_AudiCivRed":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0004;};
			case "SAL_AudiCivSilver":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0004;};
			case "SAL_77TRANSAMCiv":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;}; 
			
			//Luxuswagen
			case "cl3_458_red":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0008;}; 
			case "cl3_458_yellow":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0008;};
			case "cl3_458_navy_blue":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0008;};
			case "cl3_e63_amg_burgundy":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0006;}; 
			case "cl3_e63_amg_silver":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0006;}; 
			case "cl3_dbs_volante_orange":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0007;}; 
			case "cl3_dbs_volante_red":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0007;}; 
			case "cl3_dbs_volante_silver":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0007;};
			case "cl3_dbs_volante_burgundy":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0007;};
			case "cl3_dbs_volante_black":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0007;}; 
			case "Jonzie_Viper":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0009;};
			
			//LKWs
			case "RDS_Ikarus_Civ_01":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0002;}; 
			case "I_Truck_02_transport_F":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0002;};
			case "I_Truck_02_covered_F":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0002;};
			case "O_Truck_03_transport_F":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;}; 
			case "O_Truck_03_covered_F":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;}; 
			case "B_Truck_01_transport_F":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0001;};
			
			//Cops
			case "DAR_CVPIAux":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;}; 
			case "cl3_reventon_clpd":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0007;};
			case "DAR_ChargerPoliceState":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0004;};
			case "DAR_ChargerPoliceStateSlick":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0004;}; 
			
			//Mafia
			case "cl3_458_black":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0008;}; 
			case "CUP_Volha_Black":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0001;};
			case "DAR_4x4":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0004;};
			case "DAR_MK27T":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0004;}; 	
			case "DAR_TahoeCivBlack":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;}; 
			case "SAL_AudiCivBlack":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0004;};
			case "cl3_e63_amg_black":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0006;};	

			//negKarma
			case "B_G_Offroad_01_armed_F":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;}; 	
			case "B_G_Offroad_01_F":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;}; 
			case "DAR_MK27":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0004;};
			case "LandRover_ACR":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;};				
			
			//posKarma
			case "LandRover_TK_CIV_EP1":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;};
			case "O_Truck_03_device_F":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;};
			case "B_Truck_01_box_F":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0004;};

			//Donator
			case "cl3_r8_spyder_2tone1":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0009;}; 
			case "cl3_r8_spyder_2tone2":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0009;};
			case "cl3_r8_spyder_2tone3":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0009;};
			case "cl3_r8_spyder_2tone4":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0009;}; 
			case "cl3_r8_spyder_2tone5":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0009;}; 
			case "cl3_r8_spyder_flame":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0008;}; 
			case "cl3_r8_spyder_flame1":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0008;}; 
			case "cl3_r8_spyder_flame2":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0008;};
			case "cl3_458_2tone1":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0009;};
			case "cl3_458_2tone2":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0009;}; 
			case "cl3_458_2tone3":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0009;};
			case "cl3_458_2tone4":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0009;}; 
			case "cl3_458_2tone5":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0009;};
			case "cl3_458_flame":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0009;};
			case "cl3_458_flame1":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0009;}; 
			case "cl3_458_flame2":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0009;};
			case "cl3_e60_m5_lime":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;}; 
			case "cl3_e63_amg_orange":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0006;};
			case "cl3_e60_m5_camo":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;};
			case "cl3_dbs_volante_camo_urban":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0008;}; 
			case "cl3_taurus_camo":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0008;};
			case "cl3_458_babypink":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0009;};

			//Air
			case "B_Heli_Transport_01_F":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;};
			case "O_Heli_Transport_04_bench_F":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;}; 
			case "B_Heli_Light_01_F":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;};
			case "I_Heli_Transport_02_F":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;};
			case "B_Heli_Transport_03_unarmed_F":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0006;};
			case "O_Heli_Light_02_unarmed_F":{_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;};
			
			//Air1
			case "GNT_C185":{_fuelConsumption = _velocityOfVehicle/100000 - 0.002;};
			case "GNT_C185F":{_fuelConsumption = _velocityOfVehicle/100000 - 0.002;}; 
			case "bwi_a3_t6a":{_fuelConsumption = _velocityOfVehicle/100000 - 0.002;};
			case "bwi_a3_t6a_1":{_fuelConsumption = _velocityOfVehicle/100000 - 0.002;};
			case "bwi_a3_t6a_2":{_fuelConsumption = _velocityOfVehicle/100000 - 0.002;};
			case "bwi_a3_t6a_3":{_fuelConsumption = _velocityOfVehicle/100000 - 0.002;};		
			case "bwi_a3_t6a_4":{_fuelConsumption = _velocityOfVehicle/100000 - 0.002;};
			case "bwi_a3_t6a_6":{_fuelConsumption = _velocityOfVehicle/100000 - 0.002;};
			case "bwi_a3_t6a_7":{_fuelConsumption = _velocityOfVehicle/100000 - 0.002;};
			case "bwi_a3_t6a_8":{_fuelConsumption = _velocityOfVehicle/100000 - 0.002;};
			case "bwi_a3_t6a_9":{_fuelConsumption = _velocityOfVehicle/100000 - 0.002;};	
			case "ivory_yak42d_1":{_fuelConsumption = _velocityOfVehicle/100000 - 0.002;};	
	

			
            default {_fuelConsumption = _velocityOfVehicle/100000 + 0.0001;}
			};
        
        if(_fuelConsumption > 0.002) then
        {
            _fuelConsumption = 0.002;
        };
        _vehicleToFuel setFuel ((fuel _vehicleToFuel)-_fuelConsumption);
        
        //hint format["Benzinverbrauch: %1L/km",_fuelConsumption*10000/2];

        if(fuel _vehicleToFuel < 0.2 && fuel _vehicleToFuel > 0.18) then
        {
            hint "Dein Tank ist gleich leer!";
        }
        else
        {
            if(fuel _vehicleToFuel < 0.03) then
            {
                hint "Hoffentlich kannst du laufen! Dein Tank ist nämlich LEER.";
            };
        };
    };
	}
	else
	{
	sleep 20;
	};
	
    sleep 2;
};