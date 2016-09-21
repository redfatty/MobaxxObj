//
//  PbHelper.m
//  Base
//
//  Created by huangJiong on 16/9/21.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import "PbHelper.h"
#import "Result.pbobjc.h"


@implementation PbHelper

+ (GPBMessage *)parsePbOriginalData:(NSData *)data {
    PMessage *pMsg = [PMessage parseFromData:data error:nil];
    Class targetClass = NSClassFromString(pMsg.type);
    GPBMessage *targetObj = [targetClass parseFromData:pMsg.data_p error:nil];
    return targetObj;
}

+ (GPBMessage *)checkPbObj:(id)pbObj expectClass:(Class)expectClass {
    if ([pbObj isMemberOfClass:expectClass]) {
        return pbObj;
    }
    return nil;
}

@end
