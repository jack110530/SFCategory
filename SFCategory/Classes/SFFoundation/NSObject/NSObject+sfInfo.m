//
//  NSObject+sfInfo.m
//  SFCategory
//
//  Created by 黄山锋 on 2020/12/21.
//

#import "NSObject+sfInfo.h"

@implementation NSObject (sfInfo)
+ (NSString *)sf_className {
    return NSStringFromClass(self);
}
@end
