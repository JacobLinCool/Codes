#include <iostream>
#include <string>
#include <algorithm>

using namespace std;

int main() {
	string a, b;
	while(cin >> a >> b) {
		transform(a.begin(), a.end(), a.begin(), ::toupper);
		transform(b.begin(), b.end(), b.begin(), ::toupper);
		if(a == b) {
			cout << "�۲�";
		} else {
			cout << "���۲�";
		}
		cout << endl;
	}
	
	return 0;
}
