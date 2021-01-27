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

@interface SFViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) UITableView *tableView;
@end

@implementation SFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:(UITableViewStylePlain)];
    [self.view addSubview:self.tableView];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView sf_registerCell:[SFTestCell class]];
    self.tableView.rowHeight = 100;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SFTestCell *cell = [tableView sf_dequeueCell:[SFTestCell class] indexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"indexPath:%@",indexPath];
    return cell;
}

@end
