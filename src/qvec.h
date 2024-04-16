#ifndef __QVEC_H__
#define __QVEC_H__

#include "defs.h"

typedef struct {
    int *vec;
    int zero_p;
    float m;
    size_t size;
} qvec_t;


#define __MAKE_VEC_NAME(name) __##name##_v

#define NEW_QVEC(name, _size, ... ) \
    int __MAKE_VEC_NAME(name)[_size] = __VA_ARGS__; \
    qvec_t name = (qvec_t) {\
        .vec = __MAKE_VEC_NAME(name), \
        .zero_p = 0, \
        .m = 0, \
        .size = _size, \
    };

#endif
