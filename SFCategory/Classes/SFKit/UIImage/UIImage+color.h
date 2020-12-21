//
//  UIImage+color.h
//  DingDongApp
//
//  Created by 黄山锋 on 2020/11/12.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (color)

/// 由颜色生成图片
/// @param color 颜色
+ (UIImage *)sf_imageWithColor:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
