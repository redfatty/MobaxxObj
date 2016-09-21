//
//  NetworkManager+Post.m
//  Network
//
//  Created by huangJiong on 16/9/21.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import "NetworkManager+Post.h"
#import <Result.pbobjc.h>
#import <News.pbobjc.h>

@implementation NetworkManager (Post)

+ (void)requestRecommendPostListWithCompletion:(PostListBlock)completion error:(ErrorBlock)error {
    
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"type"] = @"all";
    params[@"pageindex"] = @(1).stringValue;
    params[@"pagesize"] = @(20).stringValue;
    NSString *url = @"datapublishing/recommend/news";
    
    [self get:url loadingUI:YES params:params progress:NULL success:^(GPBMessage *pbObj) {
        
        if (completion) {
            PResult *failResult = [PbHelper checkPbObj:pbObj expectClass:PResult.class];
            PPostInfoList *postList = [PbHelper checkPbObj:pbObj expectClass:PPostInfoList.class];
            completion(failResult, postList);
        }
    } failure:^(NSError *err) {
        
        if (error) {
            error(err);
        }
    }];
    
}

@end
