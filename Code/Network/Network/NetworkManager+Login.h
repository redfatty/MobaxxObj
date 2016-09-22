//
//  NetworkManager+Login.h
//  Network
//
//  Created by huangJiong on 16/9/20.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import "NetworkManager.h"

@interface NetworkManager (Login)

+ (void)requestSmsCodeWithPhone:(NSString *)phone
                           type:(NSInteger)type
                     completion:(PResultBlock)completion
                          error:(ErrorBlock)error;

+ (void)loginWithAccount:(NSString *)account
                password:(NSString *)password
              completion:(LoginBlock)completion
                   error:(ErrorBlock)error;

+ (void)autoLoginWithCompletion:(LoginBlock)completion
                          error:(ErrorBlock)error;



@end
