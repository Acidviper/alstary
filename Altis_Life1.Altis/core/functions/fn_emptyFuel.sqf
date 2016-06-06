/*
      Created by Mokomoko
      Date: 04.08.2014
      Related Forum Post: http://www.altisliferpg.com/topic/4812-tutorial-how-to-increase-the-fuel-usage/
*/

private["_vehicleToFuel","_velocityOfVehicle","_fuelConsumption","_fuelDisplay"];

while{true} do 
{
	_vehicleToFuel = (vehicle player);
	if(isEngineOn _vehicleToFuel && ((driver _vehicleToFuel) == player) && !(_vehicleToFuel isKindOf "Air") && (_vehicleToFuel != player) ) then
	{
		_velocityOfVehicle = sqrt(((velocity _vehicleToFuel select 0)^2)+((velocity _vehicleToFuel select 1)^2))*3.6;
		
		_fuelConsumption = _velocityOfVehicle/100000 + 0.0001;
		if(_fuelConsumption > 0.002) then
		{
			_fuelConsumption = 0.002;
		};
		_vehicleToFuel setFuel ((fuel _vehicleToFuel)-_fuelConsumption);
		_fuelDisplay = round(_fuelConsumption*100000/2)/10;

		if(fuel _vehicleToFuel < 0.2 && fuel _vehicleToFuel > 0.18) then
		{
			hint "Konczy ci sie paliwo! Znajdz stacje paliw!";
		}
		else
		{
			if(fuel _vehicleToFuel < 0.03) then
			{
				hint "Twoj bak jest pusty. Dalej jedziesz pieszo.";
			};
		};
	};
	sleep 2;
};