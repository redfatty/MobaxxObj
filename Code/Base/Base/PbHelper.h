//
//  PbHelper.h
//  Base
//
//  Created by huangJiong on 16/9/21.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import <Foundation/Foundation.h>
@class GPBMessage;

@interface PbHelper : NSObject

/**
 解析protobuf数据
 
 @param data 待解析的原始NSData数据
 @return 解析好的protobuf数据
 */
+ (GPBMessage *)parsePbOriginalData:(NSData *)data;


/**
 检测protobuf数据类型
 
 @param pbObj       要检测的数据
 @param expectClass 期望的类型
 @return 如果跟期望的类型致, 则返回原数据; 如果不一致, 则返回nil
 */
+ (GPBMessage *)checkPbObj:(GPBMessage *)pbObj expectClass:(Class)expectClass;

@end
