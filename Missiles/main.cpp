#include "Missile.h"
#include "MissileSilo.h"

std::vector<std::shared_ptr<Missile>> missiles{};
namespace missileFunctions
{
	void Fire() 
	{
		for(auto &m : missiles)
		{
			missiles.push_back(MissileSilo::AcquireMissile());
		}
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
		std::this_thread::sleep_for(1s);
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
		if(counter > maximumFlightDuration) { missileFunctions::Heatseeker(); counter = 0; } 
		std::this_thread::sleep_for(1s);
	}
}

int main() 
{
	GameLoop();
}