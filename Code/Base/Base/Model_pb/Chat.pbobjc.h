// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: chat.proto

#import "GPBProtocolBuffers.h"

#if GOOGLE_PROTOBUF_OBJC_GEN_VERSION != 30000
#error This file was generated by a different version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

CF_EXTERN_C_BEGIN

@class PUserBase;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - ChatRoot

@interface ChatRoot : GPBRootObject

// The base class provides:
//   + (GPBExtensionRegistry *)extensionRegistry;
// which is an GPBExtensionRegistry that includes all the extensions defined by
// this file and all files that it depends on.

@end

#pragma mark - PWkToken

typedef GPB_ENUM(PWkToken_FieldNumber) {
  PWkToken_FieldNumber_AppAccessToken = 1,
  PWkToken_FieldNumber_Domain = 2,
  PWkToken_FieldNumber_AppKey = 3,
  PWkToken_FieldNumber_OpenId = 4,
  PWkToken_FieldNumber_Nonce = 5,
  PWkToken_FieldNumber_Timestamp = 6,
  PWkToken_FieldNumber_Signature = 7,
};

@interface PWkToken : GPBMessage

// 百川应用AppSecret
@property(nonatomic, readwrite, copy, null_resettable) NSString *appAccessToken;

// 应用domain（已废弃）
@property(nonatomic, readwrite, copy, null_resettable) NSString *domain;

// 百川应用appKey
@property(nonatomic, readwrite, copy, null_resettable) NSString *appKey;

// 用户openId（已废弃）
@property(nonatomic, readwrite) int64_t openId;

// 随机数（已废弃）
@property(nonatomic, readwrite, copy, null_resettable) NSString *nonce;

// 时间戳（已废弃）
@property(nonatomic, readwrite) int64_t timestamp;

// 登录百川密码
@property(nonatomic, readwrite, copy, null_resettable) NSString *signature;

@end

#pragma mark - PConversation

typedef GPB_ENUM(PConversation_FieldNumber) {
  PConversation_FieldNumber_ConversationId = 1,
  PConversation_FieldNumber_OpenId = 2,
  PConversation_FieldNumber_Type = 3,
  PConversation_FieldNumber_Icon = 4,
  PConversation_FieldNumber_Title = 5,
  PConversation_FieldNumber_Tag = 6,
  PConversation_FieldNumber_MemberLimit = 7,
  PConversation_FieldNumber_SuperGroup = 8,
  PConversation_FieldNumber_ParentId = 9,
  PConversation_FieldNumber_NodeType = 10,
  PConversation_FieldNumber_MembersArray = 11,
};

@interface PConversation : GPBMessage

// 会话ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *conversationId;

// 会话创建者（已废弃）
@property(nonatomic, readwrite) int64_t openId;

// 会话类型（已废弃）
@property(nonatomic, readwrite) int32_t type;

// 会话图标url地址（已废弃）
@property(nonatomic, readwrite, copy, null_resettable) NSString *icon;

// 会话名称
@property(nonatomic, readwrite, copy, null_resettable) NSString *title;

// 会话tag：0-可以聊天，1-不能聊天（已不是好友关系）（已废弃）
@property(nonatomic, readwrite) int64_t tag;

// 群成员数（已废弃）
@property(nonatomic, readwrite) int32_t memberLimit;

// 0非大群，1大群  （已废弃）
@property(nonatomic, readwrite) int32_t superGroup;

// 父会话id，默认0（已废弃）
@property(nonatomic, readwrite, copy, null_resettable) NSString *parentId;

// 是否 父会话，0-否，默认；1-是父会话（已废弃）
@property(nonatomic, readwrite) int32_t nodeType;

// 会话的成员列表openId（已废弃）
@property(nonatomic, readwrite, strong, null_resettable) GPBInt64Array *membersArray;
@property(nonatomic, readonly) NSUInteger membersArray_Count;

@end

#pragma mark - PJoinRoom

typedef GPB_ENUM(PJoinRoom_FieldNumber) {
  PJoinRoom_FieldNumber_Code = 1,
  PJoinRoom_FieldNumber_OldRoomId = 2,
  PJoinRoom_FieldNumber_OldRoomName = 3,
  PJoinRoom_FieldNumber_NewRoomId = 4,
  PJoinRoom_FieldNumber_NewRoomName = 5,
  PJoinRoom_FieldNumber_QueueSize = 6,
};

@interface PJoinRoom : GPBMessage

// 状态吗
@property(nonatomic, readwrite) int64_t code;

// 旧的聊天室ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *oldRoomId;

// 旧的聊天室名称
@property(nonatomic, readwrite, copy, null_resettable) NSString *oldRoomName;

// 新的聊天室ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *newRoomId NS_RETURNS_NOT_RETAINED;

// 新的聊天室名称
@property(nonatomic, readwrite, copy, null_resettable) NSString *newRoomName NS_RETURNS_NOT_RETAINED;

// 前面排队人数
@property(nonatomic, readwrite) int32_t queueSize;

@end

#pragma mark - PCommunity

typedef GPB_ENUM(PCommunity_FieldNumber) {
  PCommunity_FieldNumber_OwnerUuid = 1,
  PCommunity_FieldNumber_CommunityId = 2,
  PCommunity_FieldNumber_CommunityName = 3,
  PCommunity_FieldNumber_CommunityIcon = 4,
  PCommunity_FieldNumber_UuidsArray = 5,
};

@interface PCommunity : GPBMessage

// 超级管理员uuid
@property(nonatomic, readwrite, copy, null_resettable) NSString *ownerUuid;

// 社区ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *communityId;

// 社区名称
@property(nonatomic, readwrite, copy, null_resettable) NSString *communityName;

// 社区头像url
@property(nonatomic, readwrite, copy, null_resettable) NSString *communityIcon;

// 普通管理员uuid
// |uuidsArray| contains |NSString|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *uuidsArray;
@property(nonatomic, readonly) NSUInteger uuidsArray_Count;

@end

#pragma mark - PMemberList

typedef GPB_ENUM(PMemberList_FieldNumber) {
  PMemberList_FieldNumber_Size = 1,
  PMemberList_FieldNumber_ListArray = 2,
};

@interface PMemberList : GPBMessage

// 成员数量
@property(nonatomic, readwrite) int32_t size;

// 成员信息
// |listArray| contains |PMember|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@end

#pragma mark - PMember

typedef GPB_ENUM(PMember_FieldNumber) {
  PMember_FieldNumber_User = 1,
  PMember_FieldNumber_IsFriend = 2,
  PMember_FieldNumber_IsFollow = 3,
  PMember_FieldNumber_IsManager = 4,
  PMember_FieldNumber_GameLevel = 5,
};

@interface PMember : GPBMessage

// 成员信息
@property(nonatomic, readwrite) BOOL hasUser;
@property(nonatomic, readwrite, strong, null_resettable) PUserBase *user;

// 0表示不是好友，1表示是好友
@property(nonatomic, readwrite) int32_t isFriend;

// 0表示未关注，1表示已关注
@property(nonatomic, readwrite) int32_t isFollow;

// 0表示成员，1表示是管理员，2表示是超级管理员
@property(nonatomic, readwrite) int32_t isManager;

// 游戏化等级
@property(nonatomic, readwrite) int32_t gameLevel;

@end

#pragma mark - PEachMsg

typedef GPB_ENUM(PEachMsg_FieldNumber) {
  PEachMsg_FieldNumber_ReceiverUuid = 1,
  PEachMsg_FieldNumber_AlertContent = 2,
  PEachMsg_FieldNumber_Info = 3,
};

@interface PEachMsg : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *receiverUuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *alertContent;

@property(nonatomic, readwrite, copy, null_resettable) NSString *info;

@end

#pragma mark - PMoreMsg

typedef GPB_ENUM(PMoreMsg_FieldNumber) {
  PMoreMsg_FieldNumber_Title = 1,
  PMoreMsg_FieldNumber_Msgid = 2,
  PMoreMsg_FieldNumber_Description_p = 3,
  PMoreMsg_FieldNumber_ListArray = 4,
};

@interface PMoreMsg : GPBMessage

// 推送消息的标题。
@property(nonatomic, readwrite, copy, null_resettable) NSString *title;

// 推送消息的msgid，该字段是阿里悟空中要用，尚未知其含义，先随便填充一个值1000。
@property(nonatomic, readwrite, copy, null_resettable) NSString *msgid;

// 推送消息的描述。
@property(nonatomic, readwrite, copy, null_resettable) NSString *description_p;

// 成员信息
// |listArray| contains |PEachMsg|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

// @@protoc_insertion_point(global_scope)