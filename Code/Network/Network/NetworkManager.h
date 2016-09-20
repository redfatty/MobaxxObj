//
//  NetworkManager.h
//  Network
//
//  Created by huangJiong on 16/9/15.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "URLDefine.h"
#import "NetworkHelper.h"
#import "NetworkMacro.h"
@class GPBMessage;

@interface NetworkManager : NSObject

+ (void)get:(NSString *)url
     params:(NSDictionary *)params
    success:(void(^)(GPBMessage *pbObj))success
    failure:(void(^)(NSError *error))failure;

+ (void)post:(NSString *)url
     params:(NSDictionary *)params
    success:(void(^)(GPBMessage *pbObj))success
    failure:(void(^)(NSError *error))failure;

@end
