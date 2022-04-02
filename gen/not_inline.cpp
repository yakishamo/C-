#include <iostream>

int inc(int &a) {
	return ++a;
}

int main(void) {
	int a = 5;
	std::cout << inc(a) << std::endl;
	std::cout << a << std::endl;
	return 0;
}

