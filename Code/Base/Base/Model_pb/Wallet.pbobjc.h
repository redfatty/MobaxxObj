// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: wallet.proto

#import "GPBProtocolBuffers.h"

#if GOOGLE_PROTOBUF_OBJC_GEN_VERSION != 30000
#error This file was generated by a different version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

CF_EXTERN_C_BEGIN

@class PSendRedPacketInfo;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - WalletRoot

@interface WalletRoot : GPBRootObject

// The base class provides:
//   + (GPBExtensionRegistry *)extensionRegistry;
// which is an GPBExtensionRegistry that includes all the extensions defined by
// this file and all files that it depends on.

@end

#pragma mark - PDiamondTotalCount

typedef GPB_ENUM(PDiamondTotalCount_FieldNumber) {
  PDiamondTotalCount_FieldNumber_TotalVmoney = 1,
};

// 钻石数量信息
@interface PDiamondTotalCount : GPBMessage

// 总钻数
@property(nonatomic, readwrite) int64_t totalVmoney;

@end

#pragma mark - PDiamondCount

typedef GPB_ENUM(PDiamondCount_FieldNumber) {
  PDiamondCount_FieldNumber_TotalVmoney = 1,
  PDiamondCount_FieldNumber_IncomeVmoney = 2,
  PDiamondCount_FieldNumber_ExpendVmoney = 3,
};

// 钻石数量信息
@interface PDiamondCount : GPBMessage

// 总钻数
@property(nonatomic, readwrite) int64_t totalVmoney;

// 收入钻数
@property(nonatomic, readwrite) int32_t incomeVmoney;

// 支出钻数
@property(nonatomic, readwrite) int32_t expendVmoney;

@end

#pragma mark - PDiamondInfo

typedef GPB_ENUM(PDiamondInfo_FieldNumber) {
  PDiamondInfo_FieldNumber_Sid = 1,
  PDiamondInfo_FieldNumber_Uuid = 2,
  PDiamondInfo_FieldNumber_Name = 3,
  PDiamondInfo_FieldNumber_Type = 4,
  PDiamondInfo_FieldNumber_Target = 5,
  PDiamondInfo_FieldNumber_HeadImgURL = 6,
  PDiamondInfo_FieldNumber_VMoney = 7,
  PDiamondInfo_FieldNumber_CreateTime = 8,
};

// 钻石信息
@interface PDiamondInfo : GPBMessage

// 流水号
@property(nonatomic, readwrite, copy, null_resettable) NSString *sid;

// 用户ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

// 名称
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

// 类型（0:充值、1:购物、2:等额红包、3:拼手气红包）
@property(nonatomic, readwrite) int32_t type;

// 目标类型（0:发给好友、1:发到聊天群、2:发到贴子、3:发到论坛）
@property(nonatomic, readwrite) int32_t target;

// 头像地址
@property(nonatomic, readwrite, copy, null_resettable) NSString *headImgURL;

// 钻数
@property(nonatomic, readwrite) int32_t vMoney;

// 创建时间
@property(nonatomic, readwrite) int64_t createTime;

@end

#pragma mark - PDiamondInfoList

typedef GPB_ENUM(PDiamondInfoList_FieldNumber) {
  PDiamondInfoList_FieldNumber_ListArray = 1,
};

// 钻石信息列表
@interface PDiamondInfoList : GPBMessage

// 列表
// |listArray| contains |PDiamondInfo|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@end

#pragma mark - PRedPacketCount

typedef GPB_ENUM(PRedPacketCount_FieldNumber) {
  PRedPacketCount_FieldNumber_RecvVmoney = 1,
  PRedPacketCount_FieldNumber_RecvCount = 2,
  PRedPacketCount_FieldNumber_SendVmoney = 3,
  PRedPacketCount_FieldNumber_SendCount = 4,
};

// 钻石数量信息
@interface PRedPacketCount : GPBMessage

// 收到的钻数
@property(nonatomic, readwrite) int32_t recvVmoney;

// 收到的个数
@property(nonatomic, readwrite) int32_t recvCount;

// 送出的钻数
@property(nonatomic, readwrite) int32_t sendVmoney;

// 送出的个数
@property(nonatomic, readwrite) int32_t sendCount;

@end

#pragma mark - PRedPacketID

typedef GPB_ENUM(PRedPacketID_FieldNumber) {
  PRedPacketID_FieldNumber_Rid = 1,
};

// 红包ID
@interface PRedPacketID : GPBMessage

// 红包ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *rid;

@end

#pragma mark - PSendRedPacket

typedef GPB_ENUM(PSendRedPacket_FieldNumber) {
  PSendRedPacket_FieldNumber_Paytoken = 1,
  PSendRedPacket_FieldNumber_Type = 2,
  PSendRedPacket_FieldNumber_Count = 3,
  PSendRedPacket_FieldNumber_VMoney = 4,
  PSendRedPacket_FieldNumber_Remark = 5,
  PSendRedPacket_FieldNumber_Target = 6,
  PSendRedPacket_FieldNumber_TargetId = 7,
};

// 发红包参数结构
@interface PSendRedPacket : GPBMessage

// 支付Token
@property(nonatomic, readwrite, copy, null_resettable) NSString *paytoken;

// 红包类型（2:等额红包、3:拼手气红包）
@property(nonatomic, readwrite) int32_t type;

// 红包数量
@property(nonatomic, readwrite) int32_t count;

// 红包金额
@property(nonatomic, readwrite) int32_t vMoney;

// 备注
@property(nonatomic, readwrite, copy, null_resettable) NSString *remark;

// 目标类型（0:发给好友、1:发到聊天群、2:发到贴子、3:发到论坛）
@property(nonatomic, readwrite) int32_t target;

// 发送目标ID（可以是UUID、群ID等）
@property(nonatomic, readwrite, copy, null_resettable) NSString *targetId;

@end

#pragma mark - PRedPacketInfo

typedef GPB_ENUM(PRedPacketInfo_FieldNumber) {
  PRedPacketInfo_FieldNumber_Sid = 1,
  PRedPacketInfo_FieldNumber_Rid = 2,
  PRedPacketInfo_FieldNumber_Uuid = 3,
  PRedPacketInfo_FieldNumber_Name = 4,
  PRedPacketInfo_FieldNumber_Type = 5,
  PRedPacketInfo_FieldNumber_Target = 6,
  PRedPacketInfo_FieldNumber_HeadImgURL = 7,
  PRedPacketInfo_FieldNumber_VMoney = 8,
  PRedPacketInfo_FieldNumber_Remark = 9,
  PRedPacketInfo_FieldNumber_CreateTime = 10,
};

// 红包信息
@interface PRedPacketInfo : GPBMessage

// 流水号
@property(nonatomic, readwrite, copy, null_resettable) NSString *sid;

// 红包ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *rid;

// 用户ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

// 名称
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

// 类型（2:等额红包、3:拼手气红包）
@property(nonatomic, readwrite) int32_t type;

// 目标类型（0:发给好友、1:发到聊天群、2:发到贴子、3:发到论坛）
@property(nonatomic, readwrite) int32_t target;

// 头像地址
@property(nonatomic, readwrite, copy, null_resettable) NSString *headImgURL;

// 钻数
@property(nonatomic, readwrite) int64_t vMoney;

// 备注
@property(nonatomic, readwrite, copy, null_resettable) NSString *remark;

// 创建时间
@property(nonatomic, readwrite) int64_t createTime;

@end

#pragma mark - PSendRedPacketInfo

typedef GPB_ENUM(PSendRedPacketInfo_FieldNumber) {
  PSendRedPacketInfo_FieldNumber_Uuid = 1,
  PSendRedPacketInfo_FieldNumber_Type = 2,
  PSendRedPacketInfo_FieldNumber_Target = 3,
  PSendRedPacketInfo_FieldNumber_VMoney = 4,
  PSendRedPacketInfo_FieldNumber_Count = 5,
  PSendRedPacketInfo_FieldNumber_Remark = 6,
  PSendRedPacketInfo_FieldNumber_CreateTime = 7,
};

// 发红包信息
@interface PSendRedPacketInfo : GPBMessage

// 用户ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

// 类型（2:等额红包、3:拼手气红包）
@property(nonatomic, readwrite) int32_t type;

// 目标类型（0:发给好友、1:发到聊天群、2:发到贴子、3:发到论坛）
@property(nonatomic, readwrite) int32_t target;

// 钻石数
@property(nonatomic, readwrite) int64_t vMoney;

// 红包个数
@property(nonatomic, readwrite) int32_t count;

// 备注
@property(nonatomic, readwrite, copy, null_resettable) NSString *remark;

// 创建时间
@property(nonatomic, readwrite) int64_t createTime;

@end

#pragma mark - PRedPacketInfoList

typedef GPB_ENUM(PRedPacketInfoList_FieldNumber) {
  PRedPacketInfoList_FieldNumber_ListArray = 1,
};

// 红包信息列表
@interface PRedPacketInfoList : GPBMessage

// 列表
// |listArray| contains |PRedPacketInfo|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@end

#pragma mark - PRedPacketParticipant

typedef GPB_ENUM(PRedPacketParticipant_FieldNumber) {
  PRedPacketParticipant_FieldNumber_Uuid = 1,
  PRedPacketParticipant_FieldNumber_Name = 2,
  PRedPacketParticipant_FieldNumber_HeadImgURL = 3,
  PRedPacketParticipant_FieldNumber_VMoney = 4,
  PRedPacketParticipant_FieldNumber_Remark = 5,
  PRedPacketParticipant_FieldNumber_CreateTime = 6,
};

// 抢红包成员
@interface PRedPacketParticipant : GPBMessage

// 用户ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

// 名称
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

// 头像地址
@property(nonatomic, readwrite, copy, null_resettable) NSString *headImgURL;

// 钻数
@property(nonatomic, readwrite) int32_t vMoney;

// 备注
@property(nonatomic, readwrite, copy, null_resettable) NSString *remark;

// 创建时间
@property(nonatomic, readwrite) int64_t createTime;

@end

#pragma mark - PRedPacketDetail

typedef GPB_ENUM(PRedPacketDetail_FieldNumber) {
  PRedPacketDetail_FieldNumber_Rid = 1,
  PRedPacketDetail_FieldNumber_Uuid = 2,
  PRedPacketDetail_FieldNumber_Name = 3,
  PRedPacketDetail_FieldNumber_HeadImgURL = 4,
  PRedPacketDetail_FieldNumber_VMoney = 5,
  PRedPacketDetail_FieldNumber_Status = 6,
  PRedPacketDetail_FieldNumber_Remark = 7,
  PRedPacketDetail_FieldNumber_Info = 8,
  PRedPacketDetail_FieldNumber_ListArray = 9,
};

// 红包详细信息
@interface PRedPacketDetail : GPBMessage

// 红包ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *rid;

// 用户ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

// 名称
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

// 头像地址
@property(nonatomic, readwrite, copy, null_resettable) NSString *headImgURL;

// 抢到的金额
@property(nonatomic, readwrite) int32_t vMoney;

// 返回码, 0:抢成功, 1:红包已经抢过, 2:红包已被抢完, 3:红包已经过期, 4:可以抢红包
@property(nonatomic, readwrite) int32_t status;

// 备注
@property(nonatomic, readwrite, copy, null_resettable) NSString *remark;

// 红包信息
@property(nonatomic, readwrite) BOOL hasInfo;
@property(nonatomic, readwrite, strong, null_resettable) PSendRedPacketInfo *info;

// 抢红包参与者
// |listArray| contains |PRedPacketParticipant|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@end

#pragma mark - PWalletGiftTotalCount

typedef GPB_ENUM(PWalletGiftTotalCount_FieldNumber) {
  PWalletGiftTotalCount_FieldNumber_TotalCount = 1,
};

// 礼物数量信息
@interface PWalletGiftTotalCount : GPBMessage

// 总礼物个数
@property(nonatomic, readwrite) int32_t totalCount;

@end

#pragma mark - PWalletGiftCount

typedef GPB_ENUM(PWalletGiftCount_FieldNumber) {
  PWalletGiftCount_FieldNumber_TotalCount = 1,
  PWalletGiftCount_FieldNumber_RecvVmoney = 2,
  PWalletGiftCount_FieldNumber_RecvCount = 3,
  PWalletGiftCount_FieldNumber_SendVmoney = 4,
  PWalletGiftCount_FieldNumber_SendCount = 5,
};

// 礼物数量信息
@interface PWalletGiftCount : GPBMessage

// 总礼物个数
@property(nonatomic, readwrite) int32_t totalCount;

// 收到的钻数
@property(nonatomic, readwrite) int32_t recvVmoney;

// 收到的个数
@property(nonatomic, readwrite) int32_t recvCount;

// 送出的钻数
@property(nonatomic, readwrite) int32_t sendVmoney;

// 送出的个数
@property(nonatomic, readwrite) int32_t sendCount;

@end

#pragma mark - PWalletGiftInfo

typedef GPB_ENUM(PWalletGiftInfo_FieldNumber) {
  PWalletGiftInfo_FieldNumber_Sid = 1,
  PWalletGiftInfo_FieldNumber_Uuid = 2,
  PWalletGiftInfo_FieldNumber_Name = 3,
  PWalletGiftInfo_FieldNumber_HeadImgURL = 4,
  PWalletGiftInfo_FieldNumber_Gid = 5,
  PWalletGiftInfo_FieldNumber_VMoney = 6,
  PWalletGiftInfo_FieldNumber_Count = 7,
  PWalletGiftInfo_FieldNumber_CreateTime = 8,
};

// 礼物信息
@interface PWalletGiftInfo : GPBMessage

// 编号
@property(nonatomic, readwrite, copy, null_resettable) NSString *sid;

// 用户ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

// 名称
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

// 头像地址
@property(nonatomic, readwrite, copy, null_resettable) NSString *headImgURL;

// 礼物ID
@property(nonatomic, readwrite) int32_t gid;

// 钻数
@property(nonatomic, readwrite) int32_t vMoney;

// 数量
@property(nonatomic, readwrite) int32_t count;

// 创建时间
@property(nonatomic, readwrite) int64_t createTime;

@end

#pragma mark - PWalletGiftInfoList

typedef GPB_ENUM(PWalletGiftInfoList_FieldNumber) {
  PWalletGiftInfoList_FieldNumber_ListArray = 1,
};

// 礼物信息列表
@interface PWalletGiftInfoList : GPBMessage

// |listArray| contains |PWalletGiftInfo|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@end

#pragma mark - PWalletPayPwdIsSet

typedef GPB_ENUM(PWalletPayPwdIsSet_FieldNumber) {
  PWalletPayPwdIsSet_FieldNumber_Isset = 1,
};

// 是否设置支付密码
@interface PWalletPayPwdIsSet : GPBMessage

@property(nonatomic, readwrite) BOOL isset;

@end

#pragma mark - PWalletToken

typedef GPB_ENUM(PWalletToken_FieldNumber) {
  PWalletToken_FieldNumber_Token = 1,
};

// 支付安全码
@interface PWalletToken : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *token;

@end

#pragma mark - PRedPacketStatus

typedef GPB_ENUM(PRedPacketStatus_FieldNumber) {
  PRedPacketStatus_FieldNumber_Status = 1,
};

// 红包状态
@interface PRedPacketStatus : GPBMessage

// 1:红包已经抢过, 2:红包已被抢完, 3:红包已经过期, 4:可以抢红包
@property(nonatomic, readwrite) int32_t status;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

// @@protoc_insertion_point(global_scope)
