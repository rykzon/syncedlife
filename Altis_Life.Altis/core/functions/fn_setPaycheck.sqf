#include <macro.h>
/*
Author: Rene

Description:

Sets base Paycheck based on jobs/licenses/other stuff


*/
private ["_karma"];


_karma = [] call life_fnc_getKarma;

switch(true) do
{
	case _karma >= 10000: 
	{
	life_paycheck = 2000;
	};
	case _karma >= 5000:
	{
	life_paycheck = 1200;
	};
	case _karma >= 3000:
	{
	life_paycheck = 800;
	};
};