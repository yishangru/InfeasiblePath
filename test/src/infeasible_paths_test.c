#import <stdio.h>
#import <stdlib.h>

int main() {
    int w = 1;
    int y = 3;

    // This is inside a branch in the example, but these
    // variables have to be initalized later...
    int v = 0;
    int x = 0;
    int z = 0;
    if ((rand() & 1) == 1) {
        v = 5;
        x = y + 1;
    }
    printf("post first branch\n");
    while (1) {
        // block 6
        if ((rand() & 1) == 1) {
            if (v == 5) {
                break;
            }
            printf("x is %d\n", x);
            v = w;
        } else {
            y = w + 1;
        }
        if (v > 0) {
            z = x + y;
            break;
        }
        w = rand();
        x = 2*w;
    }
    printf("result was %d\n", w+y+v+x+z);
    return 0;
}





