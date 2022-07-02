#include "Missile.h"

void Missile::SetVisible(bool visible) 
{
	m_IsVisible = visible;
}

bool Missile::IsVisible() const 
{
	return m_IsVisible;
}

Missile::Missile()  {}
Missile::~Missile() {}
void Missile::UpdateTrajectory() {}