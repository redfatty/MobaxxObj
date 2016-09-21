//
//  PostModel.m
//  WeiBo
//
//  Created by huangJiong on 16/9/8.
//  Copyright © 2016年 Mac－mini－1. All rights reserved.
//

#import "PostModel.h"

@implementation PostModel

+ (instancetype)modelWithPostInfo:(PPostInfo *)postInfo {
    PostModel *model = [[PostModel alloc] init];
    model.postInfo = postInfo;
    
    //类型
    if ([postInfo.srcType isEqualToString:@"image"]) {
        model.type = PostTypeImage;
    } else if ([postInfo.srcType isEqualToString:@"audio"]) {
        model.type = PostTypeAudio;
    } else if ([postInfo.srcType isEqualToString:@"video"]) {
        model.type = PostTypeVideo;
    } else {
        model.type = PostTypeText;
    }
    
    //时间
    NSDate *postDate = [NSDate dateWithTimeIntervalSince1970:postInfo.pubishTime];
    model.pubTimeStr = [postDate topicCreateTimeString];
    
    return model;
}

@end
