#include <iostream>
using namespace std;

int main() {
	string article1;
	while(cin >> article1) {
		string article2 = "";
		for(int i = article1.length()-2; i >= 0; i-=2) {
			article2 += article1.substr(i, 2);
		}
		if(article1 == article2) {
			cout << "�^��" << endl;
		} else {
			cout << "�D�^��" << endl;
		}
	}
}
