#include <stdint.h>
#include <stdlib.h>
#include <math.h>
#include <stdio.h>


// Generates a full set of test vectors that tick the clock from 12.00 -> 1.00 -> 12.59

// from https://stackoverflow.com/a/68069409
char* toBinaryString(int n) {
    int num_bits = 4;
    char *string = malloc(num_bits + 1);

    for (int i = num_bits - 1; i >= 0; i--) {
        string[i] = (n & 1) + '0';
        n >>= 1;
    }
    string[num_bits] = '\0';
    return string;
}

// Clock, nReset, Tick, SyncMinIn, SyncHourIn, Di1, Di2, Di3, Di4, D3, D2, D1, D0, DP

void main() {

    printf("# Set 12:00\n");
    printf("C    0       0     0          0           1000                0001            1\n");
    printf("C    1       0     0          0           0100                0010            0\n");
    printf("C    1       0     0          0           0010                0000            1\n");
    printf("C    1       0     0          0           0001                0000            1\n\n");

    uint8_t passed12 = 0;
    uint8_t firstLoop = 1;
    
    for (uint8_t hour=12; hour<=12; hour++) {
        
        for (uint16_t minute=firstLoop?1:0; minute<60; minute++) {

            printf("# tick to %d:%d\n", hour, minute);

            // printf("C    1       1     0          0           %s                %s            1\n", hour<10?"0000":"1000", hour<10?"0000":"0001");
            // printf("C    1       0     0          0           0100                %s            0\n", toBinaryString(hour<10?hour:hour-10));
            printf("C    1       1     0          0           1000                %s            1\n", toBinaryString(floor(minute/10)));
            printf("C    1       0     0          0           0100                %s            1\n\n", toBinaryString(minute%10));

            printf("# check %d:%d\n", hour, minute);
            // printf("C    1       0     0          0           %s                %s            1\n", hour<10?"0000":"1000", hour<10?"0000":"0001");
            // printf("C    1       0     0          0           0100                %s            0\n", toBinaryString(hour<10?hour:hour-10));
            printf("C    1       0     0          0           1000                %s            1\n", toBinaryString(floor(minute/10)));
            printf("C    1       0     0          0           0100                %s            1\n\n", toBinaryString(minute%10));
        }

        firstLoop = 0;
    
        if (hour==12 && passed12==1) {
            break;
        } else if (hour==12) {
            hour = 0;
            passed12 = 1;
        }
    }

}