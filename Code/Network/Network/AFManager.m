//
//  AFManager.m
//  Network
//
//  Created by huangJiong on 16/9/20.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import "AFManager.h"
#import "URLDefine.h"

@implementation AFManager

+ (instancetype)sharedManager {
    static AFHTTPSessionManager *afManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL *baseURL = [NSURL URLWithString:URL_BASE];
        afManager = [[AFHTTPSessionManager alloc] initWithBaseURL:baseURL];
        afManager.requestSerializer = [AFHTTPRequestSerializer serializer];
        afManager.requestSerializer.timeoutInterval = 15;
        afManager.responseSerializer = [AFHTTPResponseSerializer serializer];
        afManager.securityPolicy.allowInvalidCertificates = YES;
        afManager.securityPolicy.validatesDomainName = NO;
    });
    return afManager;
}

@end
