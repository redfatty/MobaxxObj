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

typedef void(^ErrorBlock)(NSError *err);
typedef void(^GpbBlock)(GPBMessage *pbObj);
typedef void(^PResultBlock)(PResult *presult);
typedef void(^LoginBlock)(PResult *failResult, PLogin *plogin);

#endif /* NetworkMacro_h */
