#include <string>
#include "config.hpp"
#include <algorithm>
#include <gtest/gtest.h>
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

// Temporary test functions 
bool isNegative(int x) { return x < 0; }
int countNegatives(std::vector<int> const& inputVector)
{
	return std::count_if(inputVector.begin(), inputVector.end(), isNegative);
}

TEST(TestCountNegatives, BasicVectorTest)
{
	std::vector<int> inputVector{-3, 4, 2, 0, -6, -9}, emptyVector{}; // Arrange
	int count = countNegatives(inputVector); // Act
	ASSERT_EQ(3, count); count = countNegatives(emptyVector); ASSERT_EQ(0, count); // Assert
}

TEST(TestStrings, BasicStringTest)
{
	char inputString[] = "xy"; 
	for(auto & c: inputString) c = toupper(c);
	ASSERT_STREQ("XY", inputString);
	// ASSERT_EQ works on pointers for C Strings (use this only for std::string)
	std::string str(inputString);
	std::transform(str.begin(), str.end(), str.begin(), ::tolower);
	ASSERT_EQ("xy", str);
}

int main(int argc, char *argv[]) 
{
	std::cout << projectName << " Version " << projectVersion << '\n';
	GameLoop();
	
	testing::InitGoogleTest(&argc, argv);
	return RUN_ALL_TESTS();
}