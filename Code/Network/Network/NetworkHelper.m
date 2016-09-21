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




@end
