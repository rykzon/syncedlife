/*
    File: fn_weed.sqf
    Author: Kuchiha

    Description:
    Marijuana effects.
*/

//Close inventory
closeDialog 0;

//Little hint then wait a litle before starting drugs effects
hint "Gute Nacht!";
sleep 3;	
player playMoveNow "Incapacitated";
"colorCorrections" ppEffectEnable true;
"colorCorrections" ppEffectAdjust [1,1,1,[0,0,0,0],[0,0,0,0],[0,0,0,0]];
"colorCorrections" ppEffectCommit 1; 
sleep 150;
"colorCorrections" ppEffectEnable false;