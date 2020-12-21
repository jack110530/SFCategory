//
//  UIImage+gif.h
//  DingDongApp
//
//  Created by 黄山锋 on 2020/11/13.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (gif)

+ (UIImage *)sf_gifWithData:(NSData *)data;

+ (UIImage *)sf_gifNamed:(NSString *)name;

- (UIImage *)sf_imageByScalingAndCroppingToSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
