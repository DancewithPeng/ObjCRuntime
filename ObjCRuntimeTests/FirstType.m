//
//  FirstType.m
//  ObjCRuntimeTests
//
//  Created by 张鹏 on 2019/8/14.
//  Copyright © 2019 dancewithpeng@gmail.com. All rights reserved.
//

#import "FirstType.h"
#import <ObjCRuntime/ObjCRuntime.h>

@implementation FirstType

- (void)bar {
    NSLog(@"原始的方法实现");
}

+ (void)classBar {
    NSLog(@"类方法的原始实现");
}

@end


@implementation FirstType (Swizzle)

+ (void)load {
    if (MethodExchange(self, @selector(bar), @selector(changedBar))) {
        NSLog(@"交换成功");
    } else {
        NSLog(@"交换失败");
    }

    if (ClassMethodExchange(self, @selector(classBar), @selector(changedClassBar))) {
        NSLog(@"类方法交换成功");
    } else {
        NSLog(@"类方法交换失败");
    }
}

- (void)changedBar {
    NSLog(@"这里是修改后的方法实现");
    [self changedBar];
}

+ (void)changedClassBar {
    NSLog(@"类方法的修改后实现");
}

@end
