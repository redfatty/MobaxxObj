// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gamification.proto

#import "GPBProtocolBuffers_RuntimeSupport.h"
#import "Gamification.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma mark - GamificationRoot

@implementation GamificationRoot

@end

#pragma mark - GamificationRoot_FileDescriptor

static GPBFileDescriptor *GamificationRoot_FileDescriptor(void) {
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

#pragma mark - Enum PTaskKey

GPBEnumDescriptor *PTaskKey_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static GPBMessageEnumValueDescription values[] = {
      { .name = "Publish", .number = PTaskKey_Publish },
      { .name = "Follow", .number = PTaskKey_Follow },
      { .name = "Vote", .number = PTaskKey_Vote },
      { .name = "Reply", .number = PTaskKey_Reply },
      { .name = "Addcommunity", .number = PTaskKey_Addcommunity },
      { .name = "Publishcommunity", .number = PTaskKey_Publishcommunity },
      { .name = "Addfriend", .number = PTaskKey_Addfriend },
      { .name = "Forward", .number = PTaskKey_Forward },
      { .name = "Redpacket", .number = PTaskKey_Redpacket },
      { .name = "Remind", .number = PTaskKey_Remind },
      { .name = "Profile", .number = PTaskKey_Profile },
      { .name = "Opencontact", .number = PTaskKey_Opencontact },
      { .name = "Addcontact", .number = PTaskKey_Addcontact },
      { .name = "Feedback", .number = PTaskKey_Feedback },
      { .name = "Bindaccount", .number = PTaskKey_Bindaccount },
      { .name = "Downloadapp", .number = PTaskKey_Downloadapp },
      { .name = "Addotherfriend", .number = PTaskKey_Addotherfriend },
      { .name = "Register", .number = PTaskKey_Register },
      { .name = "Vip", .number = PTaskKey_Vip },
    };
    descriptor = [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(PTaskKey)
                                                   values:values
                                               valueCount:sizeof(values) / sizeof(GPBMessageEnumValueDescription)
                                             enumVerifier:PTaskKey_IsValidValue];
  }
  return descriptor;
}

BOOL PTaskKey_IsValidValue(int32_t value__) {
  switch (value__) {
    case PTaskKey_Publish:
    case PTaskKey_Follow:
    case PTaskKey_Vote:
    case PTaskKey_Reply:
    case PTaskKey_Addcommunity:
    case PTaskKey_Publishcommunity:
    case PTaskKey_Addfriend:
    case PTaskKey_Forward:
    case PTaskKey_Redpacket:
    case PTaskKey_Remind:
    case PTaskKey_Profile:
    case PTaskKey_Opencontact:
    case PTaskKey_Addcontact:
    case PTaskKey_Feedback:
    case PTaskKey_Bindaccount:
    case PTaskKey_Downloadapp:
    case PTaskKey_Addotherfriend:
    case PTaskKey_Register:
    case PTaskKey_Vip:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - PGamification

@implementation PGamification

@dynamic experience;
@dynamic level;
@dynamic taskArray, taskArray_Count;

typedef struct PGamification__storage_ {
  uint32_t _has_storage_[1];
  int32_t experience;
  int32_t level;
  NSMutableArray *taskArray;
} PGamification__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "experience",
        .number = PGamification_FieldNumber_Experience,
        .hasIndex = 0,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PGamification__storage_, experience),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "level",
        .number = PGamification_FieldNumber_Level,
        .hasIndex = 1,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PGamification__storage_, level),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "taskArray",
        .number = PGamification_FieldNumber_TaskArray,
        .hasIndex = GPBNoHasBit,
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
        .offset = offsetof(PGamification__storage_, taskArray),
        .defaultValue.valueMessage = nil,
        .dataTypeSpecific.className = GPBStringifySymbol(PTaskDetail),
        .fieldOptions = NULL,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PGamification class]
                                     rootClass:[GamificationRoot class]
                                          file:GamificationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:sizeof(fields) / sizeof(GPBMessageFieldDescription)
                                        oneofs:NULL
                                    oneofCount:0
                                         enums:NULL
                                     enumCount:0
                                        ranges:NULL
                                    rangeCount:0
                                   storageSize:sizeof(PGamification__storage_)
                                    wireFormat:NO];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PTaskDetail

@implementation PTaskDetail

@dynamic type;
@dynamic taskKey;
@dynamic description_p;
@dynamic progress;
@dynamic statu;
@dynamic target;
@dynamic experience;

typedef struct PTaskDetail__storage_ {
  uint32_t _has_storage_[1];
  int32_t type;
  PTaskKey taskKey;
  int32_t progress;
  int32_t statu;
  int32_t target;
  int32_t experience;
  NSString *description_p;
} PTaskDetail__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "type",
        .number = PTaskDetail_FieldNumber_Type,
        .hasIndex = 0,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PTaskDetail__storage_, type),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "taskKey",
        .number = PTaskDetail_FieldNumber_TaskKey,
        .hasIndex = 1,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
        .offset = offsetof(PTaskDetail__storage_, taskKey),
        .defaultValue.valueEnum = PTaskKey_Publish,
        .dataTypeSpecific.enumDescFunc = PTaskKey_EnumDescriptor,
        .fieldOptions = NULL,
      },
      {
        .name = "description_p",
        .number = PTaskDetail_FieldNumber_Description_p,
        .hasIndex = 2,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PTaskDetail__storage_, description_p),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "progress",
        .number = PTaskDetail_FieldNumber_Progress,
        .hasIndex = 3,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PTaskDetail__storage_, progress),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "statu",
        .number = PTaskDetail_FieldNumber_Statu,
        .hasIndex = 4,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PTaskDetail__storage_, statu),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "target",
        .number = PTaskDetail_FieldNumber_Target,
        .hasIndex = 5,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PTaskDetail__storage_, target),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "experience",
        .number = PTaskDetail_FieldNumber_Experience,
        .hasIndex = 6,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PTaskDetail__storage_, experience),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
    };
#if GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    const char *extraTextFormatInfo = NULL;
#else
    static const char *extraTextFormatInfo = "\001\002\007\000";
#endif  // GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PTaskDetail class]
                                     rootClass:[GamificationRoot class]
                                          file:GamificationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:sizeof(fields) / sizeof(GPBMessageFieldDescription)
                                        oneofs:NULL
                                    oneofCount:0
                                         enums:NULL
                                     enumCount:0
                                        ranges:NULL
                                    rangeCount:0
                                   storageSize:sizeof(PTaskDetail__storage_)
                                    wireFormat:NO
                           extraTextFormatInfo:extraTextFormatInfo];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t PTaskDetail_TaskKey_RawValue(PTaskDetail *message) {
  GPBDescriptor *descriptor = [PTaskDetail descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:PTaskDetail_FieldNumber_TaskKey];
  return GPBGetMessageInt32Field(message, field);
}

void SetPTaskDetail_TaskKey_RawValue(PTaskDetail *message, int32_t value) {
  GPBDescriptor *descriptor = [PTaskDetail descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:PTaskDetail_FieldNumber_TaskKey];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - PAchievement

@implementation PAchievement

@dynamic experience;
@dynamic level;
@dynamic nextLevelExperience;
@dynamic upgradeExperience;
@dynamic badgeHave;
@dynamic badgeSum;
@dynamic badgeArray, badgeArray_Count;

typedef struct PAchievement__storage_ {
  uint32_t _has_storage_[1];
  int32_t experience;
  int32_t level;
  int32_t nextLevelExperience;
  int32_t upgradeExperience;
  int32_t badgeHave;
  int32_t badgeSum;
  NSMutableArray *badgeArray;
} PAchievement__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "experience",
        .number = PAchievement_FieldNumber_Experience,
        .hasIndex = 0,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PAchievement__storage_, experience),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "level",
        .number = PAchievement_FieldNumber_Level,
        .hasIndex = 1,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PAchievement__storage_, level),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "nextLevelExperience",
        .number = PAchievement_FieldNumber_NextLevelExperience,
        .hasIndex = 2,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PAchievement__storage_, nextLevelExperience),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "upgradeExperience",
        .number = PAchievement_FieldNumber_UpgradeExperience,
        .hasIndex = 3,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PAchievement__storage_, upgradeExperience),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "badgeHave",
        .number = PAchievement_FieldNumber_BadgeHave,
        .hasIndex = 4,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PAchievement__storage_, badgeHave),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "badgeSum",
        .number = PAchievement_FieldNumber_BadgeSum,
        .hasIndex = 5,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PAchievement__storage_, badgeSum),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "badgeArray",
        .number = PAchievement_FieldNumber_BadgeArray,
        .hasIndex = GPBNoHasBit,
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
        .offset = offsetof(PAchievement__storage_, badgeArray),
        .defaultValue.valueMessage = nil,
        .dataTypeSpecific.className = GPBStringifySymbol(PBadgeDetail),
        .fieldOptions = NULL,
      },
    };
#if GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    const char *extraTextFormatInfo = NULL;
#else
    static const char *extraTextFormatInfo = "\004\003\023\000\004\021\000\005\t\000\006\010\000";
#endif  // GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PAchievement class]
                                     rootClass:[GamificationRoot class]
                                          file:GamificationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:sizeof(fields) / sizeof(GPBMessageFieldDescription)
                                        oneofs:NULL
                                    oneofCount:0
                                         enums:NULL
                                     enumCount:0
                                        ranges:NULL
                                    rangeCount:0
                                   storageSize:sizeof(PAchievement__storage_)
                                    wireFormat:NO
                           extraTextFormatInfo:extraTextFormatInfo];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PBadgeDetail

@implementation PBadgeDetail

@dynamic statu;
@dynamic name;
@dynamic icon;
@dynamic description_p;
@dynamic progress;
@dynamic time;
@dynamic target;

typedef struct PBadgeDetail__storage_ {
  uint32_t _has_storage_[1];
  int32_t statu;
  int32_t target;
  NSString *name;
  NSString *icon;
  NSString *description_p;
  NSString *progress;
  int64_t time;
} PBadgeDetail__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "statu",
        .number = PBadgeDetail_FieldNumber_Statu,
        .hasIndex = 0,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PBadgeDetail__storage_, statu),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "name",
        .number = PBadgeDetail_FieldNumber_Name,
        .hasIndex = 1,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PBadgeDetail__storage_, name),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "icon",
        .number = PBadgeDetail_FieldNumber_Icon,
        .hasIndex = 2,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PBadgeDetail__storage_, icon),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "description_p",
        .number = PBadgeDetail_FieldNumber_Description_p,
        .hasIndex = 3,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PBadgeDetail__storage_, description_p),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "progress",
        .number = PBadgeDetail_FieldNumber_Progress,
        .hasIndex = 4,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PBadgeDetail__storage_, progress),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "time",
        .number = PBadgeDetail_FieldNumber_Time,
        .hasIndex = 5,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
        .offset = offsetof(PBadgeDetail__storage_, time),
        .defaultValue.valueInt64 = 0LL,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "target",
        .number = PBadgeDetail_FieldNumber_Target,
        .hasIndex = 6,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
        .offset = offsetof(PBadgeDetail__storage_, target),
        .defaultValue.valueInt32 = 0,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PBadgeDetail class]
                                     rootClass:[GamificationRoot class]
                                          file:GamificationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:sizeof(fields) / sizeof(GPBMessageFieldDescription)
                                        oneofs:NULL
                                    oneofCount:0
                                         enums:NULL
                                     enumCount:0
                                        ranges:NULL
                                    rangeCount:0
                                   storageSize:sizeof(PBadgeDetail__storage_)
                                    wireFormat:NO];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


// @@protoc_insertion_point(global_scope)
