//
//  UIView+transition.h
//  DingDongApp
//
//  Created by 黄山锋 on 2020/11/12.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (transition)

/// 动态添加
/// @param subview 子视图
/// @param transition 动画类型
/// @param duration 动画时间
-(void)sf_addSubview:(UIView *)subview
          transition:(UIViewAnimationTransition)transition
            duration: (NSTimeInterval)duration;


/// 动态移除
/// @param transition 动画类型
/// @param duration 动画时间
-(void)sf_removeFromSuperviewWithTransition:(UIViewAnimationTransition)transition
                                   duration: (NSTimeInterval)duration;

@end

NS_ASSUME_NONNULL_END
