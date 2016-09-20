//
//  NetworkHelper.m
//  Network
//
//  Created by huangJiong on 16/9/20.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import "NetworkHelper.h"
#import <GPBMessage.h>

@implementation NetworkHelper

+ (GPBMessage *)checkPbObj:(GPBMessage *)pbObj pbClass:(Class)pbClass {
    NSString *expectClass = NSStringFromClass(pbClass);
    NSString *realClass = NSStringFromClass(pbObj.class);
    if ([expectClass isEqualToString:realClass]) {
        return pbObj;
    }
    return nil;
}

@end
