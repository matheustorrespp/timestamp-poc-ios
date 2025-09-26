//
//  ConstructorShimC.c
//  TimestampPoc
//
//  Created by Matheus Fernandes on 26/09/25.
//

#include "ConstructorShimC.h"

extern void c_constructor(void);

__attribute__((constructor))
static void call_c_constructor(void) {
    c_constructor();
}
