// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: netdisk.proto

#import "GPBProtocolBuffers.h"

#if GOOGLE_PROTOBUF_OBJC_GEN_VERSION != 30000
#error This file was generated by a different version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

CF_EXTERN_C_BEGIN

NS_ASSUME_NONNULL_BEGIN

#pragma mark - NetdiskRoot

@interface NetdiskRoot : GPBRootObject

// The base class provides:
//   + (GPBExtensionRegistry *)extensionRegistry;
// which is an GPBExtensionRegistry that includes all the extensions defined by
// this file and all files that it depends on.

@end

#pragma mark - PNetFileInfo

typedef GPB_ENUM(PNetFileInfo_FieldNumber) {
  PNetFileInfo_FieldNumber_ObjectKey = 1,
  PNetFileInfo_FieldNumber_Extension = 2,
  PNetFileInfo_FieldNumber_FileSize = 3,
  PNetFileInfo_FieldNumber_FileDigest = 4,
  PNetFileInfo_FieldNumber_CreateTime = 5,
  PNetFileInfo_FieldNumber_TransferFlag = 6,
  PNetFileInfo_FieldNumber_ShareFlag = 7,
  PNetFileInfo_FieldNumber_ConserveFlag = 8,
  PNetFileInfo_FieldNumber_Title = 9,
  PNetFileInfo_FieldNumber_Desc = 10,
  PNetFileInfo_FieldNumber_Remark = 11,
  PNetFileInfo_FieldNumber_MiniPic = 12,
};

@interface PNetFileInfo : GPBMessage

//文件的唯一标识ID号
@property(nonatomic, readwrite, copy, null_resettable) NSString *objectKey;

//文件的扩展名。示范：mp3
@property(nonatomic, readwrite, copy, null_resettable) NSString *extension;

//文件长度，是一个long型整数
@property(nonatomic, readwrite, copy, null_resettable) NSString *fileSize;

//文件的md5 hexstring
@property(nonatomic, readwrite, copy, null_resettable) NSString *fileDigest;

//文件的创建时间，也就是上传时间，格林时间的long值，
@property(nonatomic, readwrite, copy, null_resettable) NSString *createTime;

//文件转发标志，0--可以转发，1--不可以
@property(nonatomic, readwrite, copy, null_resettable) NSString *transferFlag;

//文件共享标志，0--可以共享，1--不可以
@property(nonatomic, readwrite, copy, null_resettable) NSString *shareFlag;

//文件可以收藏，0--可以收藏，1--不可以
@property(nonatomic, readwrite, copy, null_resettable) NSString *conserveFlag;

//文件的标题
@property(nonatomic, readwrite, copy, null_resettable) NSString *title;

//文件的描述
@property(nonatomic, readwrite, copy, null_resettable) NSString *desc;

//文件的备注信息
@property(nonatomic, readwrite, copy, null_resettable) NSString *remark;

//文件的缩略图的url地址
@property(nonatomic, readwrite, copy, null_resettable) NSString *miniPic;

@end

#pragma mark - PListNetFileInfo

typedef GPB_ENUM(PListNetFileInfo_FieldNumber) {
  PListNetFileInfo_FieldNumber_NetFilesArray = 1,
  PListNetFileInfo_FieldNumber_DiskSize = 2,
};

@interface PListNetFileInfo : GPBMessage

// |netFilesArray| contains |PNetFileInfo|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *netFilesArray;
@property(nonatomic, readonly) NSUInteger netFilesArray_Count;

//网盘的总容量，取值为整数。单位为M
@property(nonatomic, readwrite, copy, null_resettable) NSString *diskSize;

@end

#pragma mark - PBuildUrlInfo

typedef GPB_ENUM(PBuildUrlInfo_FieldNumber) {
  PBuildUrlInfo_FieldNumber_PublicURL = 1,
};

@interface PBuildUrlInfo : GPBMessage

//生成的下载的的url信息
@property(nonatomic, readwrite, copy, null_resettable) NSString *publicURL;

@end

#pragma mark - PCommunityCreator

typedef GPB_ENUM(PCommunityCreator_FieldNumber) {
  PCommunityCreator_FieldNumber_CUuid = 1,
};

@interface PCommunityCreator : GPBMessage

// 社区创建者ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *cUuid;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

// @@protoc_insertion_point(global_scope)
