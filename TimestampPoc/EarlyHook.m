//
//  EarlyHook.m
//  TimestampPoc
//
//  Created by Matheus Fernandes on 26/09/25.
//

#import <Foundation/Foundation.h>
#import <TimestampPoc-Swift.h>

@interface EarlyHook: NSObject
@end

@implementation EarlyHook

+ (void)load {
    [Logger.shared mark:@"+load"];
}

@end
