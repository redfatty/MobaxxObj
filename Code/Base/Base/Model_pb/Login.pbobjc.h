// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: login.proto

#import "GPBProtocolBuffers.h"

#if GOOGLE_PROTOBUF_OBJC_GEN_VERSION != 30000
#error This file was generated by a different version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

CF_EXTERN_C_BEGIN

@class PInt32List;
@class PLevelInfo;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - LoginRoot

@interface LoginRoot : GPBRootObject

// The base class provides:
//   + (GPBExtensionRegistry *)extensionRegistry;
// which is an GPBExtensionRegistry that includes all the extensions defined by
// this file and all files that it depends on.

@end

#pragma mark - PLogin

typedef GPB_ENUM(PLogin_FieldNumber) {
  PLogin_FieldNumber_NewUser = 5,
  PLogin_FieldNumber_Uuid = 6,
  PLogin_FieldNumber_Token = 7,
  PLogin_FieldNumber_Nickname = 8,
  PLogin_FieldNumber_ImgURL = 9,
  PLogin_FieldNumber_Username = 10,
  PLogin_FieldNumber_LoginTypes = 11,
  PLogin_FieldNumber_LevelInfo = 12,
};

@interface PLogin : GPBMessage

// 是否新注册用户标识，true为新用户，false为老用户
@property(nonatomic, readwrite) BOOL newUser;

// 用户ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

// 统一访问令牌
@property(nonatomic, readwrite, copy, null_resettable) NSString *token;

// 用户昵称
@property(nonatomic, readwrite, copy, null_resettable) NSString *nickname;

// 用户头像URL
@property(nonatomic, readwrite, copy, null_resettable) NSString *imgURL;

// 用户名称
@property(nonatomic, readwrite, copy, null_resettable) NSString *username;

// 第三方登录类型(1 微信,2 微博,3 facebook,4 google)
@property(nonatomic, readwrite) BOOL hasLoginTypes;
@property(nonatomic, readwrite, strong, null_resettable) PInt32List *loginTypes;

// 会员等级信息
@property(nonatomic, readwrite) BOOL hasLevelInfo;
@property(nonatomic, readwrite, strong, null_resettable) PLevelInfo *levelInfo;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

// @@protoc_insertion_point(global_scope)
