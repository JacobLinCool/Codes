#include <iostream>
using namespace std;

int main() {
	int l;
	while(cin >> l) {
		for(int i = 0; i < l; i++) {
			if(i%2)
				cout << "��";
			else
				cout << "��";
		}
		cout << endl;
	}
}
