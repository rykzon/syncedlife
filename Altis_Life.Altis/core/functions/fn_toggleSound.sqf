/* Author Rykzon

Toggles between 100% and 30% sound volume

*/

switch(life_muted) do
{
	case true: 
	{
	2 fadeSound 1;
	life_muted = false;
	};
	
	case false: 
	{

	2 fadeSound 0.1;
	life_muted = true;

	};
	sleep 1;

};