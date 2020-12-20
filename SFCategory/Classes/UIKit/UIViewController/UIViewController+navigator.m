//
//  UIViewController+navigator.m
//  DingDongApp
//
//  Created by 黄山锋 on 2020/11/26.
//

#import "UIViewController+navigator.h"
#import <objc/runtime.h>

@implementation UIViewController (navigator)

#pragma mark - 导航栏转场操作
// 判断当前控制器所处状态
- (SFTranslationType)getCurrentTranslationType {
    SFTranslationType type;
    if (self.navigationController) {
        NSArray *vcs = self.navigationController.viewControllers;
        NSInteger idx = [vcs indexOfObject:self];
        if (idx == 0) {
            type = SFTranslationTypeRoot;
        }else{
            type = SFTranslationTypePush;
        }
    }else{
        if (self.presentingViewController) {
            type = SFTranslationTypePresent;
        }else{
            type = SFTranslationTypeRoot;
        }
    }
    return type;
}
- (void)configBackIcon {
    SFTranslationType type = [self getCurrentTranslationType];
    switch (type) {
        case SFTranslationTypeRoot:
        {
            // nothing
        }
            break;
        case SFTranslationTypePush:
        {
            self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[[UIImage imageNamed:SFPopBackIcon] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
        }
            break;
        case SFTranslationTypePresent:
        {
            self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[[UIImage imageNamed:SFDismissBackIcon] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
        }
            break;
            
        default:
            break;
    }
}
- (void)back {
    SFTranslationType type = [self getCurrentTranslationType];
    switch (type) {
        case SFTranslationTypeRoot:
        {
            // nothing
        }
            break;
        case SFTranslationTypePush:
        {
            [self.navigationController popViewControllerAnimated:YES];
        }
            break;
        case SFTranslationTypePresent:
        {
            [self dismissViewControllerAnimated:YES completion:nil];
        }
            break;
            
        default:
            break;
    }
}
- (void)push:(UIViewController *)vc {
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)present:(UIViewController *)vc {
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:vc animated:YES completion:nil];
}



#pragma mark - 导航栏item配置
- (UIBarButtonItem *)setLeftItemWithTitle:(NSString *)title {
    NSArray *items = [self setLeftItemWithTitles:@[title]];
    return items.firstObject;
}
- (UIBarButtonItem *)setRightItemWithTitle:(NSString *)title {
    NSArray *items = [self setRightItemWithTitles:@[title]];
    return items.firstObject;
}
- (UIBarButtonItem *)setLeftItemWithIcon:(NSString *)icon {
    NSArray *items = [self setLeftItemWithIcons:@[icon]];
    return items.firstObject;
}
- (UIBarButtonItem *)setRightItemWithIcon:(NSString *)icon {
    NSArray *items = [self setRightItemWithIcons:@[icon]];
    return items.firstObject;
}
- (NSArray<UIBarButtonItem *> *)setLeftItemWithTitles:(NSArray<NSString *> *)titles {
    NSArray *items = [self titleItemsWithTitles:titles sel:@selector(clickLeftItemEvent:)];
    self.navigationItem.leftBarButtonItems = items;
    return items;
}
- (NSArray<UIBarButtonItem *> *)setRightItemWithTitles:(NSArray<NSString *> *)titles {
    NSArray *items = [self titleItemsWithTitles:titles sel:@selector(clickRightItemEvent:)];
    self.navigationItem.rightBarButtonItems = items;
    return items;
}
- (NSArray<UIBarButtonItem *> *)setLeftItemWithIcons:(NSArray<NSString *> *)icons {
    NSArray *items = [self iconItemsWithIcons:icons sel:@selector(clickLeftItemEvent:)];
    self.navigationItem.leftBarButtonItems = items;
    return items;
}
- (NSArray<UIBarButtonItem *> *)setRightItemWithIcons:(NSArray<NSString *> *)icons {
    NSArray *items = [self iconItemsWithIcons:icons sel:@selector(clickRightItemEvent:)];
    self.navigationItem.rightBarButtonItems = items;
    return items;
}
- (NSArray<UIBarButtonItem *> *)titleItemsWithTitles:(NSArray<NSString *> *)titles sel:(SEL)sel {
    NSMutableArray *items = [NSMutableArray array];
    for (int i = 0; i < titles.count; i++) {
        NSString *title = titles[i];
        UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithTitle:title style:UIBarButtonItemStylePlain target:self action:sel];
        [item setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:15], NSFontAttributeName, nil] forState:UIControlStateNormal];
        [item setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:15], NSFontAttributeName, nil] forState:UIControlStateHighlighted];
        item.tag = i;
        [items addObject:item];
    }
    return items.copy;
}
- (NSArray<UIBarButtonItem *> *)iconItemsWithIcons:(NSArray<NSString *> *)icons sel:(SEL)sel {
    NSMutableArray *items = [NSMutableArray array];
    for (int i = 0; i < icons.count; i++) {
        NSString *icon = icons[i];
        UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithImage:[[UIImage imageNamed:icon] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:sel];
        item.tag = i;
        [items addObject:item];
    }
    return items.copy;
}
/// 点击导航栏左侧item
- (void)clickLeftItemEvent:(UIBarButtonItem *)item {
    
}
/// 点击导航栏右侧item
- (void)clickRightItemEvent:(UIBarButtonItem *)item {
    
}



@end
