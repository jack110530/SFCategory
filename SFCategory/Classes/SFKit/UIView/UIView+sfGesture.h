//
//  UIView+sfGesture.h
//  SFCategory
//
//  Created by 黄山锋 on 2020/12/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (sfGesture)
/// 添加单击手势
/// @param target 对象
/// @param action 事件
- (void)sf_addSingleTapWithTarget:(nullable id)target
                        action:(nullable SEL)action;

/// 添加双击手势
/// @param target 对象
/// @param action 事件
- (void)sf_addDoubleTapWithTarget:(nullable id)target
                        action:(nullable SEL)action;

/// 添加长按手势
/// @param target 对象
/// @param action 事件
/// @param minDuration 最小时间
- (void)sf_addLongPressWithTarget:(nullable id)target
                        action:(nullable SEL)action
                   minDuration:(NSTimeInterval)minDuration;

@end

NS_ASSUME_NONNULL_END
