//
//  SFViewController.m
//  SFCategory
//
//  Created by jack110530 on 12/19/2020.
//  Copyright (c) 2020 jack110530. All rights reserved.
//

#import "SFViewController.h"

@interface SFViewController ()
{}
@property (nonatomic,strong) UIView *animationView;
@end

@implementation SFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.animationView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    self.animationView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.animationView];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeClose];
    btn.frame = CGRectMake(100, 300, 50, 50);
    [btn addTarget:self action:@selector(test:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)test:(UIButton *)sender {
    sender.selected = !sender.selected;
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
//    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.animationView cache:YES];
//    CGAffineTransform transform = CGAffineTransformIdentity;
    self.animationView.transform = CGAffineTransformTranslate(self.animationView.transform, 100, 100);
    [UIView commitAnimations];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
