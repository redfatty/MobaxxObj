//
//  MWUserInfo.h
//  Base
//
//  Created by huangJiong on 16/9/22.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MWUserInfo : NSObject
@property (nonatomic, copy) NSString *uuid;
@property (nonatomic, copy) NSString *token;

+ (instancetype)sharedInstance;

@end
