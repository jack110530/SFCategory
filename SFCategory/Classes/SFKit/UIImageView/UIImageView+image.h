//
//  UIImageView+image.h
//  DingDongApp
//
//  Created by 黄山锋 on 2020/11/13.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (image)

/// 设置图片（默认加载本地占位图）
/// @param img 图片名称
-(void)sf_setImageWithImg:(id)img;

/// 设置图片
/// @param img 图片名称
/// @param placeholder 本地占位图
-(void)sf_setImageWithImg:(id)img placeholder:(NSString *)placeholder;

@end

NS_ASSUME_NONNULL_END
