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
            cout << "��";
        }
        else {
            cout << "��";
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
    int x;
    while(1) {
        x = rand() % 361;
        if(map[x]==0) break;
    }
    apple = x;
    map[x] = 3;
}

int main(void) {
    srand( (int)time(NULL));//���m�üƪ�
    int k;  //�����A������@�ӫ���
	init_map();
    new_apple();
 	draw_map();

    do {
//		������A�h���ܤ�V
        k = _getch();  //_getch means get a char ��L����Aa b c d...�]�N�O�@�Ӧr�� �A���O��V�����S��A�|�e�X��Ӧr���A�䤤�Ĥ@�ӬO�S��r��224
        if (k == 224) {           // ����Ĥ@�Ӧr���A�Y�O224�A��ܬO��V��
            k = _getch();       // Ū���ĤG�Ӧr���A�ǥѧP�_�O���Ӥ�V��A��V��ڤw�g���A�w�q�b�̤W�� �A�ҥH�A�i�H������

            if(k == KEY_UP) sdir = -19;
            else if(k == KEY_DOWN) sdir = 19;
            else if(k == KEY_LEFT) sdir = -1;
            else sdir = 1;

            shead += sdir;

            if(map[shead] == 1) {
                cout << "hit wall, game over";
                return 1;
            }
            vector<int>::iterator it = find(snk.begin(), snk.end(), shead);
            if(it != snk.end()) {
                cout << "bite self, game over";
                return 1;
            }

            if(map[shead] == 3) new_apple();
            else {
                stail = snk.front();
                snk.erase(snk.begin());
                map[stail] = 0;
            }
            snk.push_back(shead);
            map[shead] = 2;
            draw_map();
        }

    } while (k != 27);          // ����L���W�誺ESC�A�i�H�����{��

    return 0;
}
