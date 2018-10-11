#include <stdio.h>
int testb(int a) {
    int x = a -1;
    return x;
}
int testa(int a,int b, int c1,int c2,int c3,int c4,int c5,int c6,int c7, int c8,int c9) {
//int testa(int a,int b) {
    int x = a + b;

    int k[5]={1,2,3,4,5};
    int y = testb(x);
    return y;
}
int testc(int a[]) {
    a[0] = 1;
    a[1] = 2;
}
int main() {
    printf("aapcs64\n");
    int a = testa(1,3,1,2,3,4,5,6,7,8,9);
    printf("a = %d\n",a);
    int k[5]={1,2,3,4,5};
    testc(k);
    return 0;
}
