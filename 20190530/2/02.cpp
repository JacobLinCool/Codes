#include <iostream>
using namespace std;

int F(int n) {
	if(n == 0) return 0;
	if(n == 1) return 1;
	return F(n-1) + F(n-2);
}

int main() {
	int n;
	while(cin >> n) {
		cout << F(n) << endl;
	}
}
