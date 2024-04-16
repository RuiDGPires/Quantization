#include "defs.h"
#include "qvec.h"
#include <stdio.h>

NEW_QVEC(weights, 5, {1,2,3,4,5})

int main(int argc, char *argv[]) {
    for (usize i = 0; i < weights.size; i++) {
        printf("%u\n", weights.vec[i]);
    }

    return 0; 
}
