//
//  AFManager.h
//  Network
//
//  Created by huangJiong on 16/9/20.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface AFManager : AFHTTPSessionManager

+ (instancetype)sharedManager;

@end
