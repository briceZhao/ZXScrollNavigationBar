//
//  HomeViewController.m
//  ZXScrollNavigationBar
//
//  Created by brice Mac on 2017/5/2.
//  Copyright © 2017年 briceZhao. All rights reserved.
//

#define MAS_SHORTHAND
#define MAS_SHORTHAND_GLOBALS

#import "HomeViewController.h"
#import <UIViewController+ZXExtension.h>
#import <Masonry.h>

@interface HomeViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) UITableView *tableView;

@end

@implementation HomeViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.zx_interactiveNavigationBarHidden = YES;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINavigationItem *item = [[UINavigationItem alloc]initWithTitle:@"ScrollingNavigationBar"];
    [self.navigationBar pushNavigationItem:item animated:NO];
    [self.navigationBar setTranslucent:NO];
    [self.navigationBar setBarTintColor:[UIColor whiteColor]];
    [self.view addSubview:self.navigationBar];
    
    UIView *top = [[UIView alloc]init];
    top.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:top];
    [top makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.navigationBar.bottom).offset(1);
        make.left.right.equalTo(self.view);
        make.height.equalTo(40);
    }];
    
    UITableView *tableView = [[UITableView alloc]init];
    self.tableView = tableView;
    [self.view addSubview:tableView];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [self.tableView makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(top.bottom);
        make.left.bottom.right.equalTo(self.view);
    }];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"re"];
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    //跟随滚动的核心方法
    [self followScrollView:self.tableView];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"re" forIndexPath:indexPath];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewController *vc = [[UITableViewController alloc]init];
    
    [self.navigationController pushViewController:vc animated:YES];
}


@end




