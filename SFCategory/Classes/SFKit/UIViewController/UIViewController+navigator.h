//
//  UIViewController+navigator.h
//  DingDongApp
//
//  Created by 黄山锋 on 2020/11/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, SFTranslationType) {
    SFTranslationTypeRoot = 0,
    SFTranslationTypePush,
    SFTranslationTypePresent,
};

@interface UIViewController (navigator)

#pragma mark - 导航栏转场操作
- (void)back;
- (void)push:(UIViewController *)vc;
- (void)present:(UIViewController *)vc;
- (void)configBackIconWithPop:(NSString *)popIcon dismiss:(NSString *)dismissIcon;

#pragma mark - 导航栏item配置
- (UIBarButtonItem *)setLeftItemWithTitle:(NSString *)title;
- (UIBarButtonItem *)setRightItemWithTitle:(NSString *)title;
- (UIBarButtonItem *)setLeftItemWithIcon:(NSString *)icon;
- (UIBarButtonItem *)setRightItemWithIcon:(NSString *)icon;
- (NSArray<UIBarButtonItem *> *)setLeftItemWithTitles:(NSArray<NSString *> *)titles;
- (NSArray<UIBarButtonItem *> *)setRightItemWithTitles:(NSArray<NSString *> *)titles;
- (NSArray<UIBarButtonItem *> *)setLeftItemWithIcons:(NSArray<NSString *> *)icons;
- (NSArray<UIBarButtonItem *> *)setRightItemWithIcons:(NSArray<NSString *> *)icons;
/// 点击导航栏左侧item
- (void)clickLeftItemEvent:(UIBarButtonItem *)item;
/// 点击导航栏右侧item
- (void)clickRightItemEvent:(UIBarButtonItem *)item;

@end

NS_ASSUME_NONNULL_END
