//
//  UIImageView+image.m
//  DingDongApp
//
//  Created by 黄山锋 on 2020/11/13.
//

#import "UIImageView+image.h"

@implementation UIImageView (image)

//
///// 设置图片（默认加载本地占位图）
///// @param img 图片名称
//-(void)sf_setImageWithImg:(id)img {
//    [self sf_setImageWithImg:img placeholder:SFPlaceholderImage];
//}
//
///// 设置图片
///// @param img 图片名称
///// @param placeholder 本地占位图
//-(void)sf_setImageWithImg:(id)img placeholder:(NSString *)placeholder {
//    UIImage *placeholderImage = [UIImage imageNamed:placeholder];
//    if (SFObjectIsEmpty(img)) {
//        self.image = placeholderImage;
//        return;
//    }
//    if ([img isKindOfClass:[UIImage class]]) {
//        self.image = img;
//        return;
//    }
//    if ([img isKindOfClass:[NSString class]]) {
//        if (SFStringIsEmpty(img)) {
//            self.image = placeholderImage;
//            return;
//        }
//        //网络图片
//        if ([img hasPrefix:@"http://"] || [img hasPrefix:@"https://"]) {
//            if ([img hasSuffix:@".gif"]) {
//                [self sd_setImageWithURL:[NSURL URLWithString:img] placeholderImage:placeholderImage];
//            }else{
//                [self sd_setImageWithURL:[NSURL URLWithString:img] placeholderImage:placeholderImage];
//            }
//            return;
//        }
//        //本地图片
//        UIImage *localImage;
//        if ([img hasSuffix:@".gif"]) {
//            NSArray *arr = [img componentsSeparatedByString:@".gif"];
//            NSString *gifName = arr[0];
//            localImage = [UIImage gifNamed:gifName];
//        }else{
//            localImage = [UIImage imageNamed:img];
//        }
//        if (localImage) {
//            self.image = localImage;
//        }else{
//            self.image = placeholderImage;
//        }
//        return;
//    }
//}

@end
