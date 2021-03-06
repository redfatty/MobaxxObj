// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: edge.proto

#import "GPBProtocolBuffers.h"

#if GOOGLE_PROTOBUF_OBJC_GEN_VERSION != 30000
#error This file was generated by a different version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

CF_EXTERN_C_BEGIN

NS_ASSUME_NONNULL_BEGIN

#pragma mark - EdgeRoot

@interface EdgeRoot : GPBRootObject

// The base class provides:
//   + (GPBExtensionRegistry *)extensionRegistry;
// which is an GPBExtensionRegistry that includes all the extensions defined by
// this file and all files that it depends on.

@end

#pragma mark - PEdgeVersion

typedef GPB_ENUM(PEdgeVersion_FieldNumber) {
  PEdgeVersion_FieldNumber_ForceUpdate = 1,
  PEdgeVersion_FieldNumber_RecommendUpdate = 2,
  PEdgeVersion_FieldNumber_UpdateInAppStore = 3,
  PEdgeVersion_FieldNumber_LatestVersion = 4,
  PEdgeVersion_FieldNumber_UpdateLink = 5,
};

@interface PEdgeVersion : GPBMessage

// 是否强制更新的标志位
@property(nonatomic, readwrite) BOOL forceUpdate;

// 是否推荐更新的标志位
@property(nonatomic, readwrite) BOOL recommendUpdate;

// 是否通过应用商店更新的标志位
@property(nonatomic, readwrite) BOOL updateInAppStore;

// 最新的版本号
@property(nonatomic, readwrite, copy, null_resettable) NSString *latestVersion;

// 更新地址；UpdateInAppStore为true，就跳转到商店的下载页面；false时为apk下载地址
@property(nonatomic, readwrite, copy, null_resettable) NSString *updateLink;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

// @@protoc_insertion_point(global_scope)
