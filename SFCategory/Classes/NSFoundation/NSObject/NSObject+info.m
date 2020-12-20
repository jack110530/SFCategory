//
//  NSObject+info.m
//  DingDongApp
//
//  Created by 黄山锋 on 2020/11/11.
//

#import "NSObject+info.h"

@implementation NSObject (info)

+ (NSString *)sf_className {
    return NSStringFromClass(self);
}


@end
