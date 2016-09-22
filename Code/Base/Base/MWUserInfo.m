//
//  MWUserInfo.m
//  Base
//
//  Created by huangJiong on 16/9/22.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import "MWUserInfo.h"

#define kUuidKey @"MWUserInfo_uuid"
#define kTokenKey @"MWUserInfo_token"

@implementation MWUserInfo

- (NSString *)uuid {
    if (_uuid == nil) {
        NSString *savedUuid = [[NSUserDefaults standardUserDefaults] stringForKey:kUuidKey];
        _uuid = savedUuid == nil ? @"" : savedUuid;
    }
    
    return _uuid;
}

- (NSString *)token {
    if (_token == nil) {
        NSString *savedToken = [[NSUserDefaults standardUserDefaults] stringForKey:kTokenKey];
        _uuid = savedToken == nil ? @"" : savedToken;
    }
    
    return _uuid;
}


@end
