#include <iostream>
using namespace std;

int main() {
	int x[3];
	char c[2];
	while(cin >> x[0] >> c[0] >> x[1] >> c[1] >> x[2] >> c[2] >> x[3]) {
		if(x[0]==140&&x[1]==131&&x[2]==149) {
			cout << "login successfully" << endl;
		} else {
			cout << "access denied" << endl;
		}
	}
}
