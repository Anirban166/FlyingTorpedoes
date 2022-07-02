#pragma once
#include "Missile.h"

using MissilePointer = std::shared_ptr<Missile>;
class MissileSilo
{
	private:
		inline static std::vector<MissilePointer> missileVector{};
		MissileSilo() = default;

	public:
		static MissilePointer AcquireMissile();
		static void ReleaseMissile(const MissilePointer & missile);
};