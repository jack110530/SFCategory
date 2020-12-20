//
//  UIView+frame.h
//  DingDongApp
//
//  Created by 黄山锋 on 2020/11/19.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (frame)
// 这里只写了x,y 其他的YY里面有
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@end

NS_ASSUME_NONNULL_END
