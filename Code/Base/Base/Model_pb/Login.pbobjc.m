// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: login.proto

#import "GPBProtocolBuffers_RuntimeSupport.h"
#import "Login.pbobjc.h"
#import "Result.pbobjc.h"
#import "Account.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma mark - LoginRoot

@implementation LoginRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[ResultRoot extensionRegistry]];
    [registry addExtensions:[AccountRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - LoginRoot_FileDescriptor

static GPBFileDescriptor *LoginRoot_FileDescriptor(void) {
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

#pragma mark - PLogin

@implementation PLogin

@dynamic newUser;
@dynamic uuid;
@dynamic token;
@dynamic nickname;
@dynamic imgURL;
@dynamic username;
@dynamic hasLoginTypes, loginTypes;
@dynamic hasLevelInfo, levelInfo;

typedef struct PLogin__storage_ {
  uint32_t _has_storage_[1];
  BOOL newUser;
  NSString *uuid;
  NSString *token;
  NSString *nickname;
  NSString *imgURL;
  NSString *username;
  PInt32List *loginTypes;
  PLevelInfo *levelInfo;
} PLogin__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "newUser",
        .number = PLogin_FieldNumber_NewUser,
        .hasIndex = 0,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeBool,
        .offset = offsetof(PLogin__storage_, newUser),
        .defaultValue.valueBool = NO,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "uuid",
        .number = PLogin_FieldNumber_Uuid,
        .hasIndex = 1,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PLogin__storage_, uuid),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "token",
        .number = PLogin_FieldNumber_Token,
        .hasIndex = 2,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PLogin__storage_, token),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "nickname",
        .number = PLogin_FieldNumber_Nickname,
        .hasIndex = 3,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PLogin__storage_, nickname),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "imgURL",
        .number = PLogin_FieldNumber_ImgURL,
        .hasIndex = 4,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PLogin__storage_, imgURL),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "username",
        .number = PLogin_FieldNumber_Username,
        .hasIndex = 5,
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
        .offset = offsetof(PLogin__storage_, username),
        .defaultValue.valueString = nil,
        .dataTypeSpecific.className = NULL,
        .fieldOptions = NULL,
      },
      {
        .name = "loginTypes",
        .number = PLogin_FieldNumber_LoginTypes,
        .hasIndex = 6,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeMessage,
        .offset = offsetof(PLogin__storage_, loginTypes),
        .defaultValue.valueMessage = nil,
        .dataTypeSpecific.className = GPBStringifySymbol(PInt32List),
        .fieldOptions = NULL,
      },
      {
        .name = "levelInfo",
        .number = PLogin_FieldNumber_LevelInfo,
        .hasIndex = 7,
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeMessage,
        .offset = offsetof(PLogin__storage_, levelInfo),
        .defaultValue.valueMessage = nil,
        .dataTypeSpecific.className = GPBStringifySymbol(PLevelInfo),
        .fieldOptions = NULL,
      },
    };
#if GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    const char *extraTextFormatInfo = NULL;
#else
    static const char *extraTextFormatInfo = "\004\005\007\000\t\006\000\013\n\000\014\t\000";
#endif  // GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PLogin class]
                                     rootClass:[LoginRoot class]
                                          file:LoginRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:sizeof(fields) / sizeof(GPBMessageFieldDescription)
                                        oneofs:NULL
                                    oneofCount:0
                                         enums:NULL
                                     enumCount:0
                                        ranges:NULL
                                    rangeCount:0
                                   storageSize:sizeof(PLogin__storage_)
                                    wireFormat:NO
                           extraTextFormatInfo:extraTextFormatInfo];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


// @@protoc_insertion_point(global_scope)