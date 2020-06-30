//
//  ObjCRuntimeTests.m
//  ObjCRuntimeTests
//
//  Created by 张鹏 on 2019/8/14.
//  Copyright © 2019 dancewithpeng@gmail.com. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <ObjCRuntime/ObjCRuntime.h>
#import "FirstType.h"

@interface ObjCRuntimeTests : XCTestCase

@end

@implementation ObjCRuntimeTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testSwizzle {
    FirstType *obj = [[FirstType alloc] init];    
    [obj bar];
    
    [FirstType classBar];
}

@end
