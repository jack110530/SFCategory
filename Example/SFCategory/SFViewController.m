//
//  SFViewController.m
//  SFCategory
//
//  Created by jack110530 on 12/19/2020.
//  Copyright (c) 2020 jack110530. All rights reserved.
//

#import "SFViewController.h"
#import <SFCategory/SFCategory.h>
#import "SFTestCell.h"

@interface SFViewController ()
@end

@implementation SFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeClose];
    btn.clickDuring = 3;
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:btn];
}
- (void)click {
    NSLog(@"dddd");
}


@end
