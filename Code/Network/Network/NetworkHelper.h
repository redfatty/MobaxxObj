//
//  NetworkHelper.h
//  Network
//
//  Created by huangJiong on 16/9/20.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PLogin;

@interface NetworkHelper : NSObject

+ (void)showLoading:(BOOL)loading;
+ (void)hiddenLoading:(BOOL)loading;

+ (void)saveLoginData:(PLogin *)loginData;

@end
