#include <iostream>

using namespace std;

int main() {
	int a;
	while(cin >> a) {
		int x=0, y=0, z=0, u=0, t=0;
		while(a>=50) {
			x++;
			a = a-50;
		}
		while(a>=25) {
			y++;
			a = a-25;
		}
		while(a>=10) {
			z++;
			a = a-10;
		}
		while(a>=5) {
			u++;
			a = a-5;
		}
		while(a) {
			t++;
			a--;
		}
		cout << "50��X" << x << "\n25��X" << y << "\n10��X" << z << "\n5��X" << u << "\n1��X" << t << endl << x+y+z+u+t << endl;
	}
	
	return 0;
}
