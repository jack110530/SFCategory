//
//  UIView+sfGesture.m
//  SFCategory
//
//  Created by 黄山锋 on 2020/12/21.
//

#import "UIView+sfGesture.h"

@implementation UIView (sfGesture)
/// 添加单击手势
/// @param target 对象
/// @param action 事件
- (void)sf_addSingleTapWithTarget:(nullable id)target
                        action:(nullable SEL)action {
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:target action:action];
    tap.numberOfTapsRequired = 1;
    [self addGestureRecognizer:tap];
}

/// 添加双击手势
/// @param target 对象
/// @param action 事件
- (void)sf_addDoubleTapWithTarget:(nullable id)target
                        action:(nullable SEL)action {
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:target action:action];
    tap.numberOfTapsRequired = 2;
    [self addGestureRecognizer:tap];
}

/// 添加长按手势
/// @param target 对象
/// @param action 事件
/// @param minDuration 最小时间
- (void)sf_addLongPressWithTarget:(nullable id)target
                        action:(nullable SEL)action
                   minDuration:(NSTimeInterval)minDuration {
    self.userInteractionEnabled = YES;
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc]initWithTarget:target action:action];
    longPress.minimumPressDuration = minDuration;
    [self addGestureRecognizer:longPress];
}
@end
