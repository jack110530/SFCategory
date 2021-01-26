//
//  SFTestCell.m
//  SFCategory_Example
//
//  Created by 黄山锋 on 2021/1/26.
//  Copyright © 2021 jack110530. All rights reserved.
//

#import "SFTestCell.h"
#import <SFCategory/SFCategory.h>

@interface SFTestCell ()

@end

@implementation SFTestCell

+ (BOOL)sf_loadFromNib {
    return NO;
}
+ (NSString *)sf_reuseIdentifier {
    return [self sf_className];
}

@end
