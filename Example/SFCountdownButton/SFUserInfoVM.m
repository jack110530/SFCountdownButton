//
//  SFUserInfoVM.m
//  XXMarket
//
//  Created by 黄山锋 on 2020/12/22.
//

#import "SFUserInfoVM.h"
#import "SFUserInfoView.h"

@interface SFUserInfoVM ()

@end

@implementation SFUserInfoVM

#pragma mark - config
- (void)configWithView:(UIView *)view
                    vc:(UIViewController *)vc
                 model:(NSObject *)model {
    self.infoView = (SFUserInfoView *)view;
    self.userModel = (SFUserModel *)model;
    // MARK: 数据绑定
    RAC(self.infoView, isSign) = [RACObserve(self, userModel) map:^id _Nullable(id  _Nullable value) {
        return @(value != nil);
    }];
    RAC(self.infoView, avatarImg) = RACObserve(self, userModel.avatar.url);
    RAC(self.infoView, sex) = RACObserve(self, userModel.sex);
    RAC(self.infoView, username) = RACObserve(self, userModel.username);
    RAC(self.infoView, tel) = RACObserve(self, userModel.mobilePhoneNumber);
    
    // MARK: 响应
    @weakify(self)
    // 点击头像
    self.infoView.clickToUserInfoBlock = ^{
        @strongify(self)
        
    };
    // 点击登录
    self.infoView.clickToLoginBlock = ^{
        @strongify(self)
        
    };
    // 点击
    self.infoView.clickToCouponBlock = ^{
        @strongify(self)
        
    };
}



@end
