// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: chat.proto

#import "GPBProtocolBuffers_RuntimeSupport.h"
#import "Chat.pbobjc.h"
#import "Account.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma mark - ChatRoot

@implementation ChatRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[AccountRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - ChatRoot_FileDescriptor

static GPBFileDescriptor *ChatRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"common"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - PWkToken

@implementation PWkToken

@dynamic appAccessToken;
@dynamic domain;
@dynamic appKey;
@dynamic openId;
@dynamic nonce;
@dynamic timestamp;
@dynamic signature;

typedef struct PWkToken__storage_ {
  uint32_t _has_storage_[1];
  NSString *appAccessToken;
  NSString *domain;
  NSString *appKey;
  NSString *nonce;
  NSString *signature;
  int64_t openId;
  int64_t timestamp;
} PWkToken__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "appAccessToken",
        .number = PWkToken_FieldNumber_AppAccessToken,
        .hasIndex = 0,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PWkToken__storage_, appAccessToken),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "domain",
        .number = PWkToken_FieldNumber_Domain,
        .hasIndex = 1,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PWkToken__storage_, domain),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "appKey",
        .number = PWkToken_FieldNumber_AppKey,
        .hasIndex = 2,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PWkToken__storage_, appKey),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "openId",
        .number = PWkToken_FieldNumber_OpenId,
        .hasIndex = 3,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeInt64,
        .offset = offsetof(PWkToken__storage_, openId),
        .defaultValue.valueInt64 = 0LL,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "nonce",
        .number = PWkToken_FieldNumber_Nonce,
        .hasIndex = 4,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PWkToken__storage_, nonce),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "timestamp",
        .number = PWkToken_FieldNumber_Timestamp,
        .hasIndex = 5,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
        .offset = offsetof(PWkToken__storage_, timestamp),
        .defaultValue.valueInt64 = 0LL,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "signature",
        .number = PWkToken_FieldNumber_Signature,
        .hasIndex = 6,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PWkToken__storage_, signature),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
    };
#if GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    const char *extraTextFormatInfo = NULL;
#else
    static const char *extraTextFormatInfo = "\003\001\016\000\003\006\000\004\006\000";
#endif  // GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PWkToken class]
                                     rootClass:[ChatRoot class]
                                          file:ChatRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:sizeof(fields) / sizeof(GPBMessageFieldDescription)
                                        oneofs:NULL
                                    oneofCount:0
                                         enums:NULL
                                     enumCount:0
                                        ranges:NULL
                                    rangeCount:0
                                   storageSize:sizeof(PWkToken__storage_)
                                    wireFormat:NO
                           extraTextFormatInfo:extraTextFormatInfo];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PConversation

@implementation PConversation

@dynamic conversationId;
@dynamic openId;
@dynamic type;
@dynamic icon;
@dynamic title;
@dynamic tag;
@dynamic memberLimit;
@dynamic superGroup;
@dynamic parentId;
@dynamic nodeType;
@dynamic membersArray, membersArray_Count;

typedef struct PConversation__storage_ {
  uint32_t _has_storage_[1];
  int32_t type;
  int32_t memberLimit;
  int32_t superGroup;
  int32_t nodeType;
  NSString *conversationId;
  NSString *icon;
  NSString *title;
  NSString *parentId;
  GPBInt64Array *membersArray;
  int64_t openId;
  int64_t tag;
} PConversation__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "conversationId",
        .number = PConversation_FieldNumber_ConversationId,
        .hasIndex = 0,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PConversation__storage_, conversationId),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "openId",
        .number = PConversation_FieldNumber_OpenId,
        .hasIndex = 1,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeInt64,
        .offset = offsetof(PConversation__storage_, openId),
        .defaultValue.valueInt64 = 0LL,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "type",
        .number = PConversation_FieldNumber_Type,
        .hasIndex = 2,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PConversation__storage_, type),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "icon",
        .number = PConversation_FieldNumber_Icon,
        .hasIndex = 3,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PConversation__storage_, icon),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "title",
        .number = PConversation_FieldNumber_Title,
        .hasIndex = 4,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PConversation__storage_, title),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "tag",
        .number = PConversation_FieldNumber_Tag,
        .hasIndex = 5,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
        .offset = offsetof(PConversation__storage_, tag),
        .defaultValue.valueInt64 = 0LL,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "memberLimit",
        .number = PConversation_FieldNumber_MemberLimit,
        .hasIndex = 6,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PConversation__storage_, memberLimit),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "superGroup",
        .number = PConversation_FieldNumber_SuperGroup,
        .hasIndex = 7,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PConversation__storage_, superGroup),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "parentId",
        .number = PConversation_FieldNumber_ParentId,
        .hasIndex = 8,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PConversation__storage_, parentId),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "nodeType",
        .number = PConversation_FieldNumber_NodeType,
        .hasIndex = 9,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PConversation__storage_, nodeType),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "membersArray",
        .number = PConversation_FieldNumber_MembersArray,
        .hasIndex = GPBNoHasBit,
        .flags = GPBFieldRepeated | GPBFieldPacked,
        .dataType = GPBDataTypeInt64,
        .offset = offsetof(PConversation__storage_, membersArray),
        .defaultValue.valueMessage = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
    };
#if GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    const char *extraTextFormatInfo = NULL;
#else
    static const char *extraTextFormatInfo = "\006\001\016\000\002\006\000\007\013\000\010\n\000\t\010\000\n\010\000";
#endif  // GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PConversation class]
                                     rootClass:[ChatRoot class]
                                          file:ChatRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:sizeof(fields) / sizeof(GPBMessageFieldDescription)
                                        oneofs:NULL
                                    oneofCount:0
                                         enums:NULL
                                     enumCount:0
                                        ranges:NULL
                                    rangeCount:0
                                   storageSize:sizeof(PConversation__storage_)
                                    wireFormat:NO
                           extraTextFormatInfo:extraTextFormatInfo];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PJoinRoom

@implementation PJoinRoom

@dynamic code;
@dynamic oldRoomId;
@dynamic oldRoomName;
@dynamic newRoomId;
@dynamic newRoomName;
@dynamic queueSize;

typedef struct PJoinRoom__storage_ {
  uint32_t _has_storage_[1];
  int32_t queueSize;
  NSString *oldRoomId;
  NSString *oldRoomName;
  NSString *newRoomId;
  NSString *newRoomName;
  int64_t code;
} PJoinRoom__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "code",
        .number = PJoinRoom_FieldNumber_Code,
        .hasIndex = 0,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
        .offset = offsetof(PJoinRoom__storage_, code),
        .defaultValue.valueInt64 = 0LL,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "oldRoomId",
        .number = PJoinRoom_FieldNumber_OldRoomId,
        .hasIndex = 1,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PJoinRoom__storage_, oldRoomId),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "oldRoomName",
        .number = PJoinRoom_FieldNumber_OldRoomName,
        .hasIndex = 2,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PJoinRoom__storage_, oldRoomName),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "newRoomId",
        .number = PJoinRoom_FieldNumber_NewRoomId,
        .hasIndex = 3,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PJoinRoom__storage_, newRoomId),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "newRoomName",
        .number = PJoinRoom_FieldNumber_NewRoomName,
        .hasIndex = 4,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PJoinRoom__storage_, newRoomName),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "queueSize",
        .number = PJoinRoom_FieldNumber_QueueSize,
        .hasIndex = 5,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PJoinRoom__storage_, queueSize),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
    };
#if GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    const char *extraTextFormatInfo = NULL;
#else
    static const char *extraTextFormatInfo = "\005\002\t\000\003\013\000\004\t\000\005\013\000\006\t\000";
#endif  // GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PJoinRoom class]
                                     rootClass:[ChatRoot class]
                                          file:ChatRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:sizeof(fields) / sizeof(GPBMessageFieldDescription)
                                        oneofs:NULL
                                    oneofCount:0
                                         enums:NULL
                                     enumCount:0
                                        ranges:NULL
                                    rangeCount:0
                                   storageSize:sizeof(PJoinRoom__storage_)
                                    wireFormat:NO
                           extraTextFormatInfo:extraTextFormatInfo];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PCommunity

@implementation PCommunity

@dynamic ownerUuid;
@dynamic communityId;
@dynamic communityName;
@dynamic communityIcon;
@dynamic uuidsArray, uuidsArray_Count;

typedef struct PCommunity__storage_ {
  uint32_t _has_storage_[1];
  NSString *ownerUuid;
  NSString *communityId;
  NSString *communityName;
  NSString *communityIcon;
  NSMutableArray *uuidsArray;
} PCommunity__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "ownerUuid",
        .number = PCommunity_FieldNumber_OwnerUuid,
        .hasIndex = 0,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PCommunity__storage_, ownerUuid),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "communityId",
        .number = PCommunity_FieldNumber_CommunityId,
        .hasIndex = 1,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PCommunity__storage_, communityId),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "communityName",
        .number = PCommunity_FieldNumber_CommunityName,
        .hasIndex = 2,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PCommunity__storage_, communityName),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "communityIcon",
        .number = PCommunity_FieldNumber_CommunityIcon,
        .hasIndex = 3,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PCommunity__storage_, communityIcon),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "uuidsArray",
        .number = PCommunity_FieldNumber_UuidsArray,
        .hasIndex = GPBNoHasBit,
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PCommunity__storage_, uuidsArray),
        .defaultValue.valueMessage = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
    };
#if GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    const char *extraTextFormatInfo = NULL;
#else
    static const char *extraTextFormatInfo = "\004\001\t\000\002\013\000\003\r\000\004\r\000";
#endif  // GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PCommunity class]
                                     rootClass:[ChatRoot class]
                                          file:ChatRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:sizeof(fields) / sizeof(GPBMessageFieldDescription)
                                        oneofs:NULL
                                    oneofCount:0
                                         enums:NULL
                                     enumCount:0
                                        ranges:NULL
                                    rangeCount:0
                                   storageSize:sizeof(PCommunity__storage_)
                                    wireFormat:NO
                           extraTextFormatInfo:extraTextFormatInfo];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PMemberList

@implementation PMemberList

@dynamic size;
@dynamic listArray, listArray_Count;

typedef struct PMemberList__storage_ {
  uint32_t _has_storage_[1];
  int32_t size;
  NSMutableArray *listArray;
} PMemberList__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "size",
        .number = PMemberList_FieldNumber_Size,
        .hasIndex = 0,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PMemberList__storage_, size),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "listArray",
        .number = PMemberList_FieldNumber_ListArray,
        .hasIndex = GPBNoHasBit,
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
        .offset = offsetof(PMemberList__storage_, listArray),
        .defaultValue.valueMessage = nil,
        .dataTypeSpecific.className = GPBStringifySymbol(PMember),
        .fieldOptions = NULL,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PMemberList class]
                                     rootClass:[ChatRoot class]
                                          file:ChatRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:sizeof(fields) / sizeof(GPBMessageFieldDescription)
                                        oneofs:NULL
                                    oneofCount:0
                                         enums:NULL
                                     enumCount:0
                                        ranges:NULL
                                    rangeCount:0
                                   storageSize:sizeof(PMemberList__storage_)
                                    wireFormat:NO];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PMember

@implementation PMember

@dynamic hasUser, user;
@dynamic isFriend;
@dynamic isFollow;
@dynamic isManager;
@dynamic gameLevel;

typedef struct PMember__storage_ {
  uint32_t _has_storage_[1];
  int32_t isFriend;
  int32_t isFollow;
  int32_t isManager;
  int32_t gameLevel;
  PUserBase *user;
} PMember__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "user",
        .number = PMember_FieldNumber_User,
        .hasIndex = 0,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
        .offset = offsetof(PMember__storage_, user),
        .defaultValue.valueMessage = nil,
        .dataTypeSpecific.className = GPBStringifySymbol(PUserBase),
        .fieldOptions = NULL,
      },
      {
        .name = "isFriend",
        .number = PMember_FieldNumber_IsFriend,
        .hasIndex = 1,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PMember__storage_, isFriend),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "isFollow",
        .number = PMember_FieldNumber_IsFollow,
        .hasIndex = 2,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PMember__storage_, isFollow),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "isManager",
        .number = PMember_FieldNumber_IsManager,
        .hasIndex = 3,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PMember__storage_, isManager),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "gameLevel",
        .number = PMember_FieldNumber_GameLevel,
        .hasIndex = 4,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PMember__storage_, gameLevel),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
    };
#if GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    const char *extraTextFormatInfo = NULL;
#else
    static const char *extraTextFormatInfo = "\004\002H\000\003H\000\004I\000\005\t\000";
#endif  // GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PMember class]
                                     rootClass:[ChatRoot class]
                                          file:ChatRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:sizeof(fields) / sizeof(GPBMessageFieldDescription)
                                        oneofs:NULL
                                    oneofCount:0
                                         enums:NULL
                                     enumCount:0
                                        ranges:NULL
                                    rangeCount:0
                                   storageSize:sizeof(PMember__storage_)
                                    wireFormat:NO
                           extraTextFormatInfo:extraTextFormatInfo];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PEachMsg

@implementation PEachMsg

@dynamic receiverUuid;
@dynamic alertContent;
@dynamic info;

typedef struct PEachMsg__storage_ {
  uint32_t _has_storage_[1];
  NSString *receiverUuid;
  NSString *alertContent;
  NSString *info;
} PEachMsg__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "receiverUuid",
        .number = PEachMsg_FieldNumber_ReceiverUuid,
        .hasIndex = 0,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PEachMsg__storage_, receiverUuid),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "alertContent",
        .number = PEachMsg_FieldNumber_AlertContent,
        .hasIndex = 1,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PEachMsg__storage_, alertContent),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "info",
        .number = PEachMsg_FieldNumber_Info,
        .hasIndex = 2,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PEachMsg__storage_, info),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
    };
#if GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    const char *extraTextFormatInfo = NULL;
#else
    static const char *extraTextFormatInfo = "\002\001\tc\000\002\014\000";
#endif  // GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PEachMsg class]
                                     rootClass:[ChatRoot class]
                                          file:ChatRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:sizeof(fields) / sizeof(GPBMessageFieldDescription)
                                        oneofs:NULL
                                    oneofCount:0
                                         enums:NULL
                                     enumCount:0
                                        ranges:NULL
                                    rangeCount:0
                                   storageSize:sizeof(PEachMsg__storage_)
                                    wireFormat:NO
                           extraTextFormatInfo:extraTextFormatInfo];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PMoreMsg

@implementation PMoreMsg

@dynamic title;
@dynamic msgid;
@dynamic description_p;
@dynamic listArray, listArray_Count;

typedef struct PMoreMsg__storage_ {
  uint32_t _has_storage_[1];
  NSString *title;
  NSString *msgid;
  NSString *description_p;
  NSMutableArray *listArray;
} PMoreMsg__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "title",
        .number = PMoreMsg_FieldNumber_Title,
        .hasIndex = 0,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PMoreMsg__storage_, title),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "msgid",
        .number = PMoreMsg_FieldNumber_Msgid,
        .hasIndex = 1,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PMoreMsg__storage_, msgid),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "description_p",
        .number = PMoreMsg_FieldNumber_Description_p,
        .hasIndex = 2,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PMoreMsg__storage_, description_p),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "listArray",
        .number = PMoreMsg_FieldNumber_ListArray,
        .hasIndex = GPBNoHasBit,
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
        .offset = offsetof(PMoreMsg__storage_, listArray),
        .defaultValue.valueMessage = nil,
        .dataTypeSpecific.className = GPBStringifySymbol(PEachMsg),
        .fieldOptions = NULL,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PMoreMsg class]
                                     rootClass:[ChatRoot class]
                                          file:ChatRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:sizeof(fields) / sizeof(GPBMessageFieldDescription)
                                        oneofs:NULL
                                    oneofCount:0
                                         enums:NULL
                                     enumCount:0
                                        ranges:NULL
                                    rangeCount:0
                                   storageSize:sizeof(PMoreMsg__storage_)
                                    wireFormat:NO];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


// @@protoc_insertion_point(global_scope)
