//
//  NetworkManager.h
//  Network
//
//  Created by huangJiong on 16/9/15.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <PbHelper.h>
#import "URLDefine.h"
#import "NetworkHelper.h"
#import "NetworkMacro.h"
@class GPBMessage;

@interface NetworkManager : NSObject

+ (void)get:(NSString *)url
  loadingUI:(BOOL)loadingUI
     params:(NSDictionary *)params
   progress:(ProgressBlock)progress
    success:(GpbBlock)success
    failure:(ErrorBlock)failure;

+ (void)post:(NSString *)url
   loadingUI:(BOOL)loadingUI
      params:(NSDictionary *)params
  configBody:(ConfigBodyBlock)configBody
    progress:(ProgressBlock)progress
     success:(GpbBlock)success
     failure:(ErrorBlock)failure;

+ (void)delette:(NSString *)url
      loadingUI:(BOOL)loadingUI
         params:(NSDictionary *)params
        success:(GpbBlock)success
        failure:(ErrorBlock)failure;

@end
