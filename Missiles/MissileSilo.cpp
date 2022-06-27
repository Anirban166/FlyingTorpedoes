#include "MissileSilo.h"

MissilePointer MissileSilo::AcquireMissile() 
{
	for(auto &missile : missileVector) 
	{
		if(!missile->IsVisible()) 
		{
			missile->SetVisible(true);
			return missile; // An existing instance.
		}
	}
	print("[Surface > Air] Creating a new instance!\n");
	auto missile = std::make_shared<Missile>();
	missileVector.push_back(missile);
	return missile;
}

void MissileSilo::ReleaseMissile(const MissilePointer& missile) 
{
	for(auto &m : missileVector) 
	{
		if(m == missile) m->SetVisible(false);
	}
}