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
  loadingUI:(BOOL)loadingUI
     params:(id)params
   progress:(ProgressBlock)progress
    success:(GpbBlock)success
    failure:(ErrorBlock)failure {
    
    [NetworkHelper showLoading:loadingUI];
    
    [[AFManager sharedManager] GET:url parameters:params progress:^(NSProgress * _Nonnull uploadProgress) {
        //进度
        if (progress) {
            progress(uploadProgress);
        }
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        //成功
       [NetworkHelper hiddenLoading:loadingUI];
        
       if (success) {
           GPBMessage *pbObj = [PbHelper parsePbOriginalData:responseObject];
           success(pbObj);
       }
        
    } failure:^(NSURLSessionDataTask * _Nullable task,
                NSError * _Nonnull error) {
        //失败
        [NetworkHelper hiddenLoading:loadingUI];
        
        if (failure) {
            failure(error);
        }
    }];
}

+ (void)post:(NSString *)url
   loadingUI:(BOOL)loadingUI
      params:(id)params
  configBody:(ConfigBodyBlock)configBody
    progress:(ProgressBlock)progress
     success:(GpbBlock)success
     failure:(ErrorBlock)failure {

    [NetworkHelper showLoading:loadingUI];
    
    if (configBody) {
        //一.有表单数据
        [[AFManager sharedManager] POST:url parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
            //配置body
            configBody(formData);
        } progress:^(NSProgress * _Nonnull uploadProgress) {
            //进度
            if (progress) {
                progress(uploadProgress);
            }
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            //成功
            [NetworkHelper hiddenLoading:loadingUI];
            
            if (success) {
                GPBMessage *pbObj = [PbHelper parsePbOriginalData:responseObject];
                success(pbObj);
            }
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            //失败
            [NetworkHelper hiddenLoading:loadingUI];
            
            if (failure) {
                failure(error);
            }
        }];
    } else {
        //二.没有表单数据
        [[AFManager sharedManager] POST:url parameters:params progress:^(NSProgress * _Nonnull uploadProgress) {
            //进度
            if (progress) {
                progress(uploadProgress);
            }
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            
            NSLog(@"请求成功成功成功了");
            //成功
            [NetworkHelper hiddenLoading:loadingUI];
            if (success) {
                GPBMessage *pbObj = [PbHelper parsePbOriginalData:responseObject];
                success(pbObj);
            }

        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            //失败
            [NetworkHelper hiddenLoading:loadingUI];
            if (failure) {
                failure(error);
            }
        }];
    }
}

+ (void)delette:(NSString *)url
      loadingUI:(BOOL)loadingUI
         params:(id)params
        success:(GpbBlock)success
        failure:(ErrorBlock)failure {
    
    [NetworkHelper showLoading:loadingUI];
    
    [[AFManager sharedManager] DELETE:url parameters:params success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        [NetworkHelper hiddenLoading:loadingUI];
        
        if (success) {
            GPBMessage *pbObj = [PbHelper parsePbOriginalData:responseObject];
            success(pbObj);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        [NetworkHelper hiddenLoading:loadingUI];
        
        if (failure) {
            failure(error);
        }
    }];
}

+ (void)put:(NSString *)url
  loadingUI:(BOOL)loadingUI
     params:(id)params
    success:(GpbBlock)success
    failure:(ErrorBlock)failure {
    
    [NetworkHelper showLoading:loadingUI];
    
    [[AFManager sharedManager] PUT:url parameters:params success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        [NetworkHelper hiddenLoading:loadingUI];
        
        if (success) {
            GPBMessage *pbObj = [PbHelper parsePbOriginalData:responseObject];
            success(pbObj);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        [NetworkHelper hiddenLoading:loadingUI];
        
        if (failure) {
            failure(error);
        }
    }];
}

+ (void)setupCookies {
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    NSString *uuid = [userDef stringForKey:@"uuid"];
    NSString *token = [userDef stringForKey:@"token"];
    NSString *cookies = [NSString stringWithFormat:@"token=%@;uuid=%@;", token, uuid];
    [[AFManager sharedManager].requestSerializer setValue:cookies forHTTPHeaderField:@"Cookie"];
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
