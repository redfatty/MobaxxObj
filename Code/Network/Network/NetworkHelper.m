//
//  NetworkHelper.m
//  Network
//
//  Created by huangJiong on 16/9/20.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import "NetworkHelper.h"
#import <GPBMessage.h>
#import <Result.pbobjc.h>
#import <MBProgressHUD.h>
#import "UIViewController+Network.h"

@implementation NetworkHelper

+ (GPBMessage *)parsePbOriginalData:(NSData *)data {
    PMessage *pMsg = [PMessage parseFromData:data error:nil];
    Class targetClass = NSClassFromString(pMsg.type);
    GPBMessage *targetObj = [targetClass parseFromData:pMsg.data_p error:nil];
    return targetObj;
}

+ (GPBMessage *)checkPbObj:(GPBMessage *)pbObj pbClass:(Class)pbClass {
    NSString *expectClass = NSStringFromClass(pbClass);
    NSString *realClass = NSStringFromClass(pbObj.class);
    if ([expectClass isEqualToString:realClass]) {
        return pbObj;
    }
    return nil;
}

+ (void)showLoading:(BOOL)loading {
    if (loading) {
        UIViewController *vc = [UIViewController currentViewController];
//        [MBProgressHUD showHUDAddedTo:vc.view animated:YES];
    }
}

+ (void)hiddenLoading:(BOOL)loading {
    if (loading) {
        UIViewController *vc = [UIViewController currentViewController];
//        [MBProgressHUD hideHUDForView:vc.view animated:YES];
    }
}




@end
