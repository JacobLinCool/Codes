#include <iostream>
using namespace std;

int main() {
	int tmp, in[1000] = {0};
	string type;
	while(cin >> tmp >> type) {
		if(type == "in") {
			if(!in[tmp]) {
				in[tmp] = 1;
			} else {
				cout << tmp << "�������w�g�J��" << endl; 
			}
		}
		if(type == "out") {
			if(in[tmp]) {
				in[tmp] = 0;
			}
		}
		
	}
}
