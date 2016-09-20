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
#import "AFManager.h"


@interface NetworkManager ()

@end

@implementation NetworkManager

#pragma mark - get
+ (void)get:(NSString *)url
     params:(NSDictionary *)params
    success:(void (^)(GPBMessage *))success
    failure:(void (^)(NSError *))failure {
    
    [[AFManager sharedManager] GET:url parameters:params progress:NULL success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
       if (success) {
           GPBMessage *pbObj = [NetworkHelper parsePbOriginalData:responseObject];
           success(responseObject);
       }
        
    } failure:^(NSURLSessionDataTask * _Nullable task,
                NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
}

+ (void)post:(NSString *)url
      params:(NSDictionary *)params
     success:(void (^)(GPBMessage *))success
     failure:(void (^)(NSError *))failure {
    
    [[AFManager sharedManager] POST:url parameters:params progress:NULL success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        if (success) {
            GPBMessage *pbObj = [NetworkHelper parsePbOriginalData:responseObject];
            success(pbObj);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
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
