#include <iostream>

using namespace std;
int main(void) {
	int a = 5;
	int b = 6;
	int *p = &a;
	int &q = b;
	cout << a << endl;
	cout << b << endl;
	cout << *p << endl;
	cout << q << endl;
	cout << p << endl;
	cout << &q << endl;
	return 0;
}
