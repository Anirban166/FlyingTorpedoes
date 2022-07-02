#include "config.hpp"
#include "../Utils/Missile.h"
#include "../Utils/MissileSilo.h"

std::vector<std::shared_ptr<Missile>> missiles{};
namespace missileFunctions
{
	void Fire() 
	{
		missiles.push_back(MissileSilo::AcquireMissile());
	}

	void Animate() 
	{
		for(auto &m : missiles) 
		{
			m->UpdateTrajectory();
		}
	}

	void Heatseeker() 
	{
		for(auto &m : missiles) 
		{
			m->SetVisible(false);
		}
		missiles.clear();
	}
}	

void GameLoop() 
{
	int counter{}, maximumFlightDuration = 5;
	while(true) 
	{
		++counter;
		if(counter == 1) missileFunctions::Fire();
		if(counter >= 1 && counter <= maximumFlightDuration) missileFunctions::Animate();
		if(counter > maximumFlightDuration) { missileFunctions::Heatseeker(); break; } 
	}
}

int main() 
{
	std::cout << projectName << " Version " << projectVersion << '\n';
	GameLoop();
}