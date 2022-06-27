#pragma once
#include <memory>
#include <thread>
#include <vector>
#include <iostream>
template <typename... T>
void print(T &&...args)
{
  ((std::cout << args), ...);
}

class Missile
{
	private:
		bool m_IsVisible{true};

	public:
		void SetVisible(bool visible);
		bool IsVisible() const;
		Missile();
		~Missile();
		void UpdateTrajectory();
};