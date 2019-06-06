#include <iostream>
#include <algorithm> 
using namespace std;

int main(){
	int n, m;
	cin >> n;
	string a[n];
	for(int i = 0; i < n; i++) cin >> a[i];
	sort(a, a+n);
	cin >> m;
	for(int i = 0; i < m; i++) {
		string b;
		cin >> b;
		int f = 0, g=0, t=n-1, s; // g = �U��; t = �W��; s = �ҿ� 
		while(g <= t) {
			s = (int((t+g)/2));
			if(b == a[s]) {
				f = 1;
				break;
			} else if(b < a[s]) {
				t = s - 1;
			} else {
				g = s + 1;
			}
		}
		if(f) cout << "Y" << endl;
		else cout << "N" << endl;
	}
	return 0;
}
