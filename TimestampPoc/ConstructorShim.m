#import <Foundation/Foundation.h>
#import <TimestampPoc-Swift.h>

extern void swift_constructor(void);

__attribute__((constructor))
static void call_swift_constructor(void) {
    swift_constructor();
}
