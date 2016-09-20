//
//  NetworkManager.m
//  Network
//
//  Created by huangJiong on 16/9/15.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import "NetworkManager.h"
#import <AFNetworking.h>
#import <Result.pbobjc.h>
#import "NetworkHelper.h"


@interface NetworkManager ()

@end

@implementation NetworkManager

#pragma mark - get
+ (void)get:(NSString *)url
     params:(NSDictionary *)params
    success:(void (^)(GPBMessage *))success
    failure:(void (^)(NSError *))failure {
    
    [self.afManager GET:url parameters:params progress:NULL success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        //解析,并回调
        [self parseResponseData:responseObject callback:success];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);//失败
    }];
}

+ (void)post:(NSString *)url
      params:(NSDictionary *)params
     success:(void (^)(GPBMessage *))success
     failure:(void (^)(NSError *))failure {
    
    [[self afManager] POST:url parameters:params progress:NULL success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        [self parseResponseData:responseObject callback:success];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}

+ (void)parseResponseData:(NSData *)data callback:(void(^)(GPBMessage *))callback {
    PMessage *pMsg = [PMessage parseFromData:data error:nil];
    Class targetClass = NSClassFromString(pMsg.type);
    GPBMessage *targetObj = [targetClass parseFromData:pMsg.data_p error:nil];
    callback(targetObj);
}

+ (AFHTTPSessionManager *)afManager {
    static AFHTTPSessionManager *afManager = nil;
    if (afManager == nil) {
        NSURL *baseURL = [NSURL URLWithString:URL_BASE];
        afManager = [[AFHTTPSessionManager alloc] initWithBaseURL:baseURL];
        afManager.requestSerializer = [AFHTTPRequestSerializer serializer];
        afManager.requestSerializer.timeoutInterval = 15;
        afManager.responseSerializer = [AFHTTPResponseSerializer serializer];
        afManager.securityPolicy.allowInvalidCertificates = YES;
        afManager.securityPolicy.validatesDomainName = NO;
    }
    return afManager;
}

+ (BOOL)checkNetwrokReachable {
    AFNetworkReachabilityManager *mgr = [AFNetworkReachabilityManager sharedManager];
    [mgr startMonitoring];
    BOOL reachable = mgr.reachable;
    if (!reachable) {
        UIWindow *window = [UIApplication sharedApplication].keyWindow;
        UIViewController *ctrl = window.rootViewController;
        UIAlertController *alertCtrl = [UIAlertController alertControllerWithTitle:@"提示" message:@"网络错误, 请检查您的网络再重试." preferredStyle:UIAlertControllerStyleAlert];
        [alertCtrl addAction:[UIAlertAction actionWithTitle:@"知道了" style:UIAlertActionStyleCancel handler:NULL]];
        [ctrl presentViewController:alertCtrl animated:YES completion:NULL];
    }
    
    return mgr.reachable;
}


@end
