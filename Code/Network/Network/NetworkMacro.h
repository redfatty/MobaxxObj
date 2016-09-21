//
//  NetworkMacro.h
//  Network
//
//  Created by huangJiong on 16/9/20.
//  Copyright © 2016年 miwu. All rights reserved.
//

#ifndef NetworkMacro_h
#define NetworkMacro_h
@class GPBMessage;
@class PResult;
@class PLogin;
@class PPostInfoList;
@protocol AFMultipartFormData;


/**
 各类回调 block 定义
 */


/** 配置 body 数据 */
typedef void(^ConfigBodyBlock)(id<AFMultipartFormData> formData);

/** 进度 */
typedef void(^ProgressBlock)(NSProgress *progress);

/** 错误 */
typedef void(^ErrorBlock)(NSError *err);

/** 通用的protobuf 数据 */
typedef void(^GpbBlock)(GPBMessage *pbObj);

/**  PResult */
typedef void(^PResultBlock)(PResult *presult);

/**  登录 */
typedef void(^LoginBlock)(PResult *failResult, PLogin *plogin);

/**  帖子列表 */
typedef void(^PostListBlock)(PResult *failResult, PPostInfoList *postList);

#endif /* NetworkMacro_h */
