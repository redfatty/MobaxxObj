//
//  NetworkManager+Post.h
//  Network
//
//  Created by huangJiong on 16/9/21.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import "NetworkManager.h"
@class PPostInfoList;

@interface NetworkManager (Post)

+ (void)requestRecommendPostListWithCompletion:(PostListBlock)completion error:(ErrorBlock)error;

@end
