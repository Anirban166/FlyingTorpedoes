#include <cmath>
#include <cstring>
#include "config.hpp"
#include <algorithm>
#include <stdexcept>
#include <gtest/gtest.h>
#include "../Utils/Missile.h"
#include "../Utils/MissileSilo.h"
// memory, thread, vector, and iostream imported from Missile.h

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
double sqrtFunc(double x) { if(x < 0) throw std::runtime_error("Stop being"); return sqrt(x); }

TEST(SquareRootTest, BasicSignTest)
{	
	double value = -3;
	ASSERT_THROW(sqrtFunc(value), std::runtime_error);
	value = 3; ASSERT_NO_THROW(sqrtFunc(value));
}

TEST(TestVectors, BasicVectorTest)
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

class TrajectoryValidator
{
	public:
		TrajectoryValidator(int low, int high);
		bool inRange(int rangeValue);
	private:
		int xlow, xhigh;	
};

TrajectoryValidator::TrajectoryValidator(int low, int high):xlow{low}, xhigh{high} {}
bool TrajectoryValidator::inRange(int rangeValue)
{
	return xlow <= rangeValue && rangeValue <= xhigh;
}

class TrajectoryValidatorFixture : public testing::TestWithParam<std::tuple<int, bool>>
{
	protected:
 		TrajectoryValidator xTrajectoryValidator{5, 10};
};

TEST_P(TrajectoryValidatorFixture, TestInRange)
{
  std::tuple<int, bool> tuple = GetParam();

  int parameter = std::get<0>(tuple);
  bool expectedValue = std::get<1>(tuple);

  std::cout << "Parameter = " << parameter << "; Expected value = " << expectedValue << '\n';

  bool isInside = xTrajectoryValidator.inRange(parameter);

  ASSERT_EQ(expectedValue, isInside);
}

// INSTANTIATE_TEST_CASE_P is deprecated, use 'SUITE' instead of 'CASE' instead:
INSTANTIATE_TEST_SUITE_P(InRangeTrue, TrajectoryValidatorFixture, 
testing::Values(std::make_tuple(-50, false), std::make_tuple(4, false), std::make_tuple(5, true),
                std::make_tuple(6, true), std::make_tuple(7, true), std::make_tuple(9, true),
                std::make_tuple(10, true), std::make_tuple(11, false), std::make_tuple(100, false)));

int main(int argc, char *argv[]) 
{
	std::cout << projectName << " Version " << projectVersion << '\n';
	GameLoop();
	
	testing::InitGoogleTest(&argc, argv);
	return RUN_ALL_TESTS();
}