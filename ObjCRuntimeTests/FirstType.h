//
//  FirstType.h
//  ObjCRuntimeTests
//
//  Created by 张鹏 on 2019/8/14.
//  Copyright © 2019 dancewithpeng@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FirstType : NSObject

- (void)bar;

+ (void)classBar;

@end

@interface FirstType (Swizzle)

@end

NS_ASSUME_NONNULL_END
