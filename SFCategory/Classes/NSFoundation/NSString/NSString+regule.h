//
//  NSString+regule.h
//  DingDongApp
//
//  Created by 黄山锋 on 2020/12/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (regule)

/// 是否为有效的手机号
- (BOOL)sf_isValidMobileNumber;

/// 是否为有效的邮箱号
- (BOOL)sf_isValidEmail;

/// 是否为有效的金额（保留到小数点后两位）
- (BOOL)sf_isValidMoney;

/// 是否为有效的身份证号
- (BOOL)sf_isValidIdentityCard;

@end

NS_ASSUME_NONNULL_END
