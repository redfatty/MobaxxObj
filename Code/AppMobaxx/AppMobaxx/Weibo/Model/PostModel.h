//
//  PostModel.h
//  WeiBo
//
//  Created by huangJiong on 16/9/8.
//  Copyright © 2016年 Mac－mini－1. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PostModel : NSObject
@property (nonatomic, strong) PPostInfo *postInfo;
//@property (nonatomic, assign) PostType type;
@property (nonatomic, copy) NSString *pubTimeStr;

+ (instancetype)modelWithPostInfo:(PPostInfo *)postInfo;

@end
