//
//  SFUserInfoVM.h
//  XXMarket
//
//  Created by 黄山锋 on 2020/12/22.
//

#import "SFBaseVM.h"
@class SFUserInfoView;

NS_ASSUME_NONNULL_BEGIN

@interface SFUserInfoVM : SFBaseVM
@property (nonatomic, weak) SFUserInfoView *infoView;
@property (nonatomic, strong) SFUserModel *userModel;
@end

NS_ASSUME_NONNULL_END
