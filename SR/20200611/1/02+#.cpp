#include <conio.h>
#include <iostream>
#include <vector>
#include <algorithm>
#include <time.h>
#include <windows.h>
using namespace std;
//�w�q��V��
#define KEY_UP 72
#define KEY_DOWN 80
#define KEY_LEFT 75
#define KEY_RIGHT 77
//�����a��,0�O�ť�,1�O��,2�O����,3�Oī�G
int map[361]={0};  //�@�}�l361�泣�]��0
int sdir;  //������i��V
int shead,stail;  //�������A���y��
vector<int> snk;  //�����U�`����y��
int apple;  //����ī�G�y��
//�Ĥ@�D�A�a��ø�s�A0�Υզ�����ܡA��l�ζ¦���
void draw_map() {
    system("cls");
    for(int i = 0; i < 361; i++) {
        if(map[i] == 0) {
            cout << "�� ";
        }
        else {
            cout << "�� ";
        }
        if(i%19 == 18) {
            cout << "\n";
        }
    }
}
//�ĤG�D�A�]�w��ɻP�[�J�D�A�]�w�@�}�l��m 175 176 177�A�D���N���O2
void init_map() {
    for(int i = 0; i < 19; i++) map[i] = 1;
    for(int i = 343; i < 362; i++) map[i] = 1;
    for(int i = 0; i < 362; i++) {
        if(i%19 == 0 || i%19 == 18) map[i] = 1;
    }
    for(int i = 175; i < 178; i++) {
        map[i] = 2;
        snk.push_back(i);
    }
    shead = 177;
    sdir = 1;
}
//�ĤT�D�A�[�Jī�G �Aī�G���N�X�O3
void new_apple() {

}

int main(void)
{

	init_map();
	new_apple();
	draw_map();

    return 0;
}
