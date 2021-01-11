//
//  SFCountdownButtonDemo.m
//  SFCountdownButton_Example
//
//  Created by 黄山锋 on 2021/1/11.
//  Copyright © 2021 jack110530. All rights reserved.
//

#import "SFCountdownButtonDemo.h"
#import <SFCountdownButton/SFCountdownButton.h>

@interface SFCountdownButtonDemo ()

@property (nonatomic,strong) SFCountdownButton *countdownBtn;

@end

@implementation SFCountdownButtonDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"SFCountdownButtonDemo";
    self.countdownBtn = [[SFCountdownButton alloc]initWithFrame:CGRectMake(100, 100, 100, 30)];
    self.countdownBtn.during = 10;
    [self.countdownBtn ready];
    [self.countdownBtn addTarget:self action:@selector(clickGetCodeBtnEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.countdownBtn];
}
// 点击获取验证码
- (void)clickGetCodeBtnEvent:(SFCountdownButton *)sender {
    [sender start];
}

@end
