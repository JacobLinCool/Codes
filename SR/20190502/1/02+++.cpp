#include <iostream>
using namespace std;

// �p������H�ƤΦ����ǤH�b���� 

int main() {
	int tmp, in[1000] = {0}, times[1000] = {0}, n=0;
	string type;
	while(cin >> tmp >> type) {
		if(type == "in") {
			if(!in[tmp]) {
				in[tmp] = 1;
				times[tmp]++;
				n++;
				cout << "---" << endl;
				cout << tmp << "����" << times[tmp] << "���J��" << endl;
				cout << "�ثe������" << n << "�H:" << endl;
				for(int i = 0; i < 1000; i++) {
					if(in[i]) {
						cout << i << "����	";
					}
				}
				cout << endl; 
			} else {
				cout << tmp << "�������w�g�J��" << endl; 
			}
		}
		if(type == "out") {
			if(in[tmp]) {
				in[tmp] = 0;
				n--;
				cout << "---" << endl;
				cout << tmp << "��������" << endl;
				cout << "�ثe������" << n << "�H:" << endl;
				for(int i = 0; i < 1000; i++) {
					if(in[i]) {
						cout << i << "����	";
					}
				}
				cout << endl; 
			} else {
				cout << "���~: " << tmp << "�������b����" << endl;
			}
		}
		
	}
}
