//
//  NetworkManager+Login.m
//  Network
//
//  Created by huangJiong on 16/9/20.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import "NetworkManager+Login.h"
#import <UIKit/UIKit.h>
#import <Login.pbobjc.h>
#import <Result.pbobjc.h>


@implementation NetworkManager (Login)

+ (void)requestSmsCodeWithPhone:(NSString *)phone
                           type:(NSInteger)type
                     completion:(PResultBlock)completion
                          error:(ErrorBlock)error {
    
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"phonecode"] = phone;
    params[@"type"] = @(type).stringValue;
    params[@"lang"] = @"zh-cn";
    params[@"appid"] = @"bbef2ab2b5d07b5583";
    
    [self post:URL_Login_SmsCode loadingUI:YES params:params configBody:NULL progress:NULL success:^(GPBMessage *pbObj) {
        
        if (!completion) {
            return;
        }
        PResult *presult = [PbHelper checkPbObj:pbObj expectClass:PResult.class];
        completion(presult);
    } failure:^(NSError *err) {
        
    }];
}

+ (void)loginWithAccount:(NSString *)account
                password:(NSString *)password
              completion:(LoginBlock)completion
                   error:(ErrorBlock)error {
    
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"account"] = account;//
    params[@"password"] = password;
    params[@"ostp"] = @"2";//
    params[@"osv"] = [UIDevice currentDevice].systemVersion;//
    params[@"model"] = [UIDevice currentDevice].model;//设备型号
    params[@"imei"] = @"12345797894645";//手机取IMEI，获取不到,无IMEI用WIFI的MAC地址,
    params[@"channel"] = @"0";//
    params[@"appid"] = @"bbef2ab2b5d07b5583";//

    [self get:URL_Login loadingUI:YES params:params progress:NULL success:^(GPBMessage *pbObj) {
        if (!completion) {
            return;
        }

        PResult *failResult = [PbHelper checkPbObj:pbObj expectClass:PResult.class];
        PLogin *plogin = [PbHelper checkPbObj:pbObj expectClass:PLogin.class];
        completion(failResult ,plogin);
    } failure:^(NSError *err) {
        
    }];
}

@end
