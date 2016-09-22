//
//  NetworkHelper.m
//  Network
//
//  Created by huangJiong on 16/9/20.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import "NetworkHelper.h"
#import <MBProgressHUD.h>
#import "UIViewController+Network.h"
#import <Login.pbobjc.h>
#import "AFManager.h"

@implementation NetworkHelper

+ (void)showLoading:(BOOL)loading {
    if (loading) {
        UIViewController *vc = [UIViewController currentViewController];
        [MBProgressHUD showHUDAddedTo:vc.view animated:YES];
    }
}

+ (void)hiddenLoading:(BOOL)loading {
    if (loading) {
        UIViewController *vc = [UIViewController currentViewController];
        [MBProgressHUD hideHUDForView:vc.view animated:YES];
    }
}

+ (void)saveLoginData:(PLogin *)loginData {
    if (loginData == nil) {
        return;
    }
    NSString *uuid = loginData.uuid;
    NSString *token = loginData.token;
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    [userDef setObject:uuid forKey:@"uuid"];
    [userDef setObject:token forKey:@"token"];
    [userDef synchronize];
    NSString *cookies = [NSString stringWithFormat:@"token=%@;uuid=%@;", token, uuid];
    [[AFManager sharedManager].requestSerializer setValue:cookies forHTTPHeaderField:@"Cookie"];
}




@end
