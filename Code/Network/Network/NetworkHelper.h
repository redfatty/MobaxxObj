//
//  NetworkHelper.h
//  Network
//
//  Created by huangJiong on 16/9/20.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import <Foundation/Foundation.h>
@class GPBMessage;

@interface NetworkHelper : NSObject

/**
 解析protobuf数据

 @param data 待解析的原始NSData数据

 @return 解析好的protobuf数据
 */
+ (GPBMessage *)parsePbOriginalData:(NSData *)data;


//检测protobuf数据类型
+ (GPBMessage *)checkPbObj:(GPBMessage *)pbObj pbClass:(Class)pbClass;

+ (void)showLoading:(BOOL)loading;
+ (void)hiddenLoading:(BOOL)loading;

@end
