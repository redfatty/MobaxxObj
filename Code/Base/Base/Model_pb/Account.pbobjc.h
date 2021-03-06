// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: account.proto

#import "GPBProtocolBuffers.h"

#if GOOGLE_PROTOBUF_OBJC_GEN_VERSION != 30000
#error This file was generated by a different version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

CF_EXTERN_C_BEGIN

@class PLevelInfo;
@class PLinkInfoList;
@class PLiveInfoList;
@class PUser;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum ELevelType

typedef GPB_ENUM(ELevelType) {
  ELevelType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  //普通用户开放给所有用户
  ELevelType_User = 0,

  //VIP为在平台内受欢迎的普通用户，并且有意向利用平台获得收益者
  ELevelType_Vip = 1,

  //VIP+为名人明星，职业队员，游戏公司重要任务，俱乐部以及协会
  ELevelType_Vipp = 2,

  //VO仅为电子竞技俱乐部或者公司级别
  ELevelType_Vo = 3,

  //游客
  ELevelType_Tourist = 4,
};

GPBEnumDescriptor *ELevelType_EnumDescriptor(void);

BOOL ELevelType_IsValidValue(int32_t value);

#pragma mark - Enum ERightId

typedef GPB_ENUM(ERightId) {
  ERightId_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  //微博展示
  ERightId_WeiboShowLeftCatalog = 0,

  //顶部下拉
  ERightId_WeiboShowTopDropdown = 1,

  //头像
  ERightId_WeiboShowIcon = 2,

  //评论
  ERightId_WeiboShowComment = 3,

  //收藏
  ERightId_WeiboShowCollect = 4,

  //更多
  ERightId_WeiboShowMore = 5,

  //查看详情
  ERightId_WeiboShowViewDetails = 6,

  //微博评论
  ERightId_WeiboCommentText = 7,

  //语音评论
  ERightId_WeiboCommentAudio = 8,

  //微博发布
  ERightId_WeiboPostText = 9,

  //图片贴
  ERightId_WeiboPostImage = 10,

  //视频贴
  ERightId_WeiboPostVideo = 11,

  //语音贴
  ERightId_WeiboPostAudio = 12,

  //个人档案
  ERightId_PersonalRecordExternalLinks = 13,

  //个人图标
  ERightId_PersonalRecordIcon = 14,

  //社区 
  ERightId_PersonalRecordCommunity = 15,

  //视频贴分类页
  ERightId_PersonalRecordVideoClassifyPage = 16,

  //语音贴分类页
  ERightId_PersonalRecordAudioClassifyPage = 17,

  //好友系统
  ERightId_FriendSystemRecommend = 18,

  //搜索
  ERightId_FriendSystemSearch = 19,

  //好友申请
  ERightId_FriendSystemFriendApplyFor = 20,

  //通迅录
  ERightId_FriendSystemAddressBook = 21,

  //好友
  ERightId_FriendSystemFriend = 22,

  //我的申请
  ERightId_FriendSystemMyApplyFor = 23,

  //其它
  ERightId_RealName = 24,
};

GPBEnumDescriptor *ERightId_EnumDescriptor(void);

BOOL ERightId_IsValidValue(int32_t value);

#pragma mark - Enum ELinkType

//超链接类型
typedef GPB_ENUM(ELinkType) {
  ELinkType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  //淘宝网
  ELinkType_Taobao = 0,

  //京东
  ELinkType_Jd = 1,

  //YY
  ELinkType_Yy = 2,

  //虎牙
  ELinkType_Huya = 3,

  //斗鱼
  ELinkType_Douyu = 4,

  //熊猫TV
  ELinkType_Panda = 5,

  //战旗
  ELinkType_Zhanqi = 6,

  //全民TV
  ELinkType_Quanmin = 7,

  //新浪微博
  ELinkType_Weibo = 8,

  //QQ空间
  ELinkType_Qzone = 9,
};

GPBEnumDescriptor *ELinkType_EnumDescriptor(void);

BOOL ELinkType_IsValidValue(int32_t value);

#pragma mark - AccountRoot

@interface AccountRoot : GPBRootObject

// The base class provides:
//   + (GPBExtensionRegistry *)extensionRegistry;
// which is an GPBExtensionRegistry that includes all the extensions defined by
// this file and all files that it depends on.

@end

#pragma mark - PUserList

typedef GPB_ENUM(PUserList_FieldNumber) {
  PUserList_FieldNumber_ListArray = 1,
};

@interface PUserList : GPBMessage

//PUser列表，最多100个
// |listArray| contains |PUser|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@end

#pragma mark - PLiveInfo

typedef GPB_ENUM(PLiveInfo_FieldNumber) {
  PLiveInfo_FieldNumber_Website = 1,
  PLiveInfo_FieldNumber_URL = 2,
};

@interface PLiveInfo : GPBMessage

// 网站
@property(nonatomic, readwrite, copy, null_resettable) NSString *website;

// 直播网址
@property(nonatomic, readwrite, copy, null_resettable) NSString *uRL;

@end

#pragma mark - PLiveInfoList

typedef GPB_ENUM(PLiveInfoList_FieldNumber) {
  PLiveInfoList_FieldNumber_ListArray = 1,
};

@interface PLiveInfoList : GPBMessage

// |listArray| contains |PLiveInfo|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@end

#pragma mark - PUser

typedef GPB_ENUM(PUser_FieldNumber) {
  PUser_FieldNumber_Uuid = 6,
  PUser_FieldNumber_Password = 7,
  PUser_FieldNumber_Username = 8,
  PUser_FieldNumber_Nickname = 9,
  PUser_FieldNumber_HeadImgURL = 10,
  PUser_FieldNumber_Realname = 11,
  PUser_FieldNumber_Gender = 12,
  PUser_FieldNumber_Email = 13,
  PUser_FieldNumber_Birthday = 14,
  PUser_FieldNumber_Cellphone = 15,
  PUser_FieldNumber_TimeZone = 16,
  PUser_FieldNumber_Locale = 17,
  PUser_FieldNumber_MembershipLevel = 18,
  PUser_FieldNumber_LastUpdateTime = 19,
  PUser_FieldNumber_LastLoginTime = 20,
  PUser_FieldNumber_UserResume = 21,
  PUser_FieldNumber_Link1 = 22,
  PUser_FieldNumber_Link2 = 23,
  PUser_FieldNumber_Link3 = 24,
  PUser_FieldNumber_ChatId = 25,
  PUser_FieldNumber_LevelInfo = 26,
  PUser_FieldNumber_Disable = 27,
  PUser_FieldNumber_IsAi = 28,
  PUser_FieldNumber_ForceChangePwd = 29,
  PUser_FieldNumber_AreaCode = 30,
  PUser_FieldNumber_AreaName = 31,
  PUser_FieldNumber_LiveRemind = 32,
  PUser_FieldNumber_LiveInfo = 33,
  PUser_FieldNumber_ThumbBackImage = 34,
  PUser_FieldNumber_BigBackImage = 35,
  PUser_FieldNumber_IsFollowing = 36,
};

// 用户信息
@interface PUser : GPBMessage

// 服务端标志用户的唯一id
@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

// 自有手机号码注册时输入的密码      //这个可以移除，转移到Login
@property(nonatomic, readwrite, copy, null_resettable) NSString *password;

// 用户名，唯一
@property(nonatomic, readwrite, copy, null_resettable) NSString *username;

// 昵称
@property(nonatomic, readwrite, copy, null_resettable) NSString *nickname;

// 头像地址
@property(nonatomic, readwrite, copy, null_resettable) NSString *headImgURL;

// 真实姓名
@property(nonatomic, readwrite, copy, null_resettable) NSString *realname;

// 性别，0就是女，其余的是男；人妖暂时不考虑
@property(nonatomic, readwrite) int32_t gender;

// 邮箱地址
@property(nonatomic, readwrite, copy, null_resettable) NSString *email;

// 生日，格式19850101
@property(nonatomic, readwrite, copy, null_resettable) NSString *birthday;

// 手机号
@property(nonatomic, readwrite, copy, null_resettable) NSString *cellphone;

// 时区
@property(nonatomic, readwrite) int32_t timeZone;

// 语言
@property(nonatomic, readwrite, copy, null_resettable) NSString *locale;

// 会员级别
@property(nonatomic, readwrite) int32_t membershipLevel;

// 最后更新时间TUser结构，用户/系统修改
@property(nonatomic, readwrite) int64_t lastUpdateTime;

// 用户最后登陆时间
@property(nonatomic, readwrite) int64_t lastLoginTime;

// 个人简介
@property(nonatomic, readwrite, copy, null_resettable) NSString *userResume;

// 链接1      //这个可以移除
@property(nonatomic, readwrite, copy, null_resettable) NSString *link1;

// 链接2      //这个可以移除
@property(nonatomic, readwrite, copy, null_resettable) NSString *link2;

// 链接3      //这个可以移除
@property(nonatomic, readwrite, copy, null_resettable) NSString *link3;

// 聊天系统分配的id
@property(nonatomic, readwrite) int64_t chatId;

// 会员等级信息
@property(nonatomic, readwrite) BOOL hasLevelInfo;
@property(nonatomic, readwrite, strong, null_resettable) PLevelInfo *levelInfo;

// 帐户是否被禁用
@property(nonatomic, readwrite) BOOL disable;

// 该帐户是否是机器人
@property(nonatomic, readwrite) BOOL isAi;

// 是否登录时强制要修改密码
@property(nonatomic, readwrite) BOOL forceChangePwd;

// 地区代码
@property(nonatomic, readwrite, copy, null_resettable) NSString *areaCode;

// 地区名称
@property(nonatomic, readwrite, copy, null_resettable) NSString *areaName;

// 直播提醒开关
@property(nonatomic, readwrite) BOOL liveRemind;

// 直播提醒信息
@property(nonatomic, readwrite) BOOL hasLiveInfo;
@property(nonatomic, readwrite, strong, null_resettable) PLiveInfoList *liveInfo;

// 背景缩略图
@property(nonatomic, readwrite, copy, null_resettable) NSString *thumbBackImage;

// 背景大图
@property(nonatomic, readwrite, copy, null_resettable) NSString *bigBackImage;

// 是否关注
@property(nonatomic, readwrite) BOOL isFollowing;

@end

#pragma mark - PUserListEx

typedef GPB_ENUM(PUserListEx_FieldNumber) {
  PUserListEx_FieldNumber_ListArray = 1,
};

@interface PUserListEx : GPBMessage

//PUser列表，最多100个
// |listArray| contains |PUserEx|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@end

#pragma mark - PUserEx

typedef GPB_ENUM(PUserEx_FieldNumber) {
  PUserEx_FieldNumber_Uuid = 6,
  PUserEx_FieldNumber_Project = 7,
  PUserEx_FieldNumber_Username = 8,
  PUserEx_FieldNumber_Password = 9,
  PUserEx_FieldNumber_Nickname = 10,
  PUserEx_FieldNumber_Realname = 11,
  PUserEx_FieldNumber_Gender = 12,
  PUserEx_FieldNumber_Birthday = 13,
  PUserEx_FieldNumber_Email = 14,
  PUserEx_FieldNumber_Cellphone = 15,
  PUserEx_FieldNumber_TimeZone = 16,
  PUserEx_FieldNumber_HeadImgURL = 17,
  PUserEx_FieldNumber_Locale = 18,
  PUserEx_FieldNumber_UserResume = 19,
  PUserEx_FieldNumber_LastUpdateTime = 20,
  PUserEx_FieldNumber_LastLoginTime = 21,
  PUserEx_FieldNumber_UserData = 22,
};

// 扩展用户信息
@interface PUserEx : GPBMessage

// 服务端标志用户的唯一id
@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

// 项目名称
@property(nonatomic, readwrite, copy, null_resettable) NSString *project;

// 用户名，唯一
@property(nonatomic, readwrite, copy, null_resettable) NSString *username;

// 自有手机号码注册时输入的密码      //这个可以移除，转移到Login
@property(nonatomic, readwrite, copy, null_resettable) NSString *password;

// 昵称
@property(nonatomic, readwrite, copy, null_resettable) NSString *nickname;

// 真实姓名
@property(nonatomic, readwrite, copy, null_resettable) NSString *realname;

// 性别，0就是女，其余的是男；人妖暂时不考虑
@property(nonatomic, readwrite) int32_t gender;

// 生日，格式19850101
@property(nonatomic, readwrite, copy, null_resettable) NSString *birthday;

// 邮箱地址
@property(nonatomic, readwrite, copy, null_resettable) NSString *email;

// 手机号
@property(nonatomic, readwrite, copy, null_resettable) NSString *cellphone;

// 时区
@property(nonatomic, readwrite) int32_t timeZone;

// 头像地址
@property(nonatomic, readwrite, copy, null_resettable) NSString *headImgURL;

// 语言
@property(nonatomic, readwrite, copy, null_resettable) NSString *locale;

// 简介
@property(nonatomic, readwrite, copy, null_resettable) NSString *userResume;

// 最后更新时间TUser结构，用户/系统修改
@property(nonatomic, readwrite) int64_t lastUpdateTime;

// 用户最后登陆时间
@property(nonatomic, readwrite) int64_t lastLoginTime;

// 用户数据
// |userData| values are |NSString|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableDictionary *userData;
@property(nonatomic, readonly) NSUInteger userData_Count;

@end

#pragma mark - PUserBase

typedef GPB_ENUM(PUserBase_FieldNumber) {
  PUserBase_FieldNumber_Level = 2,
  PUserBase_FieldNumber_Uuid = 6,
  PUserBase_FieldNumber_UserName = 7,
  PUserBase_FieldNumber_Nickname = 8,
  PUserBase_FieldNumber_RealName = 9,
  PUserBase_FieldNumber_HeadImgURL = 10,
  PUserBase_FieldNumber_UserResume = 11,
};

// 用户基础信息
@interface PUserBase : GPBMessage

// 用户等级
@property(nonatomic, readwrite) int32_t level;

// 服务端标志用户的唯一id
@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

// 用户名，唯一
@property(nonatomic, readwrite, copy, null_resettable) NSString *userName;

// 昵称
@property(nonatomic, readwrite, copy, null_resettable) NSString *nickname;

// 真实姓名
@property(nonatomic, readwrite, copy, null_resettable) NSString *realName;

// 头像地址
@property(nonatomic, readwrite, copy, null_resettable) NSString *headImgURL;

// 简介
@property(nonatomic, readwrite, copy, null_resettable) NSString *userResume;

@end

#pragma mark - PUserBaseList

typedef GPB_ENUM(PUserBaseList_FieldNumber) {
  PUserBaseList_FieldNumber_ListArray = 1,
};

// 用户基础信息列表
@interface PUserBaseList : GPBMessage

//PUserBase列表，最多100个
// |listArray| contains |PUserBase|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@end

#pragma mark - PPhoneMap

typedef GPB_ENUM(PPhoneMap_FieldNumber) {
  PPhoneMap_FieldNumber_List = 1,
};

@interface PPhoneMap : GPBMessage

//手机号：uuid
// |list| values are |NSString|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableDictionary *list;
@property(nonatomic, readonly) NSUInteger list_Count;

@end

#pragma mark - PAccount

typedef GPB_ENUM(PAccount_FieldNumber) {
  PAccount_FieldNumber_Cellphone = 2,
  PAccount_FieldNumber_Wechat = 3,
  PAccount_FieldNumber_Weibo = 4,
  PAccount_FieldNumber_Facebook = 5,
  PAccount_FieldNumber_Google = 6,
};

@interface PAccount : GPBMessage

//手机
@property(nonatomic, readwrite) BOOL cellphone;

//微信
@property(nonatomic, readwrite) BOOL wechat;

//微博
@property(nonatomic, readwrite) BOOL weibo;

//脸书
@property(nonatomic, readwrite) BOOL facebook;

//谷歌
@property(nonatomic, readwrite) BOOL google;

@end

#pragma mark - PLevelInfo

typedef GPB_ENUM(PLevelInfo_FieldNumber) {
  PLevelInfo_FieldNumber_LevelType = 1,
  PLevelInfo_FieldNumber_MapRight = 2,
};

//会员等级信息
@interface PLevelInfo : GPBMessage

//会员等级类型
@property(nonatomic, readwrite) int32_t levelType;

//会员等级权限列表
@property(nonatomic, readwrite, strong, null_resettable) GPBStringBoolDictionary *mapRight;
@property(nonatomic, readonly) NSUInteger mapRight_Count;

@end

#pragma mark - PLevelInfoEx

typedef GPB_ENUM(PLevelInfoEx_FieldNumber) {
  PLevelInfoEx_FieldNumber_Uuid = 1,
  PLevelInfoEx_FieldNumber_LevelInfo = 2,
};

//会员等级扩展
@interface PLevelInfoEx : GPBMessage

//用户ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

//会员等级信息
@property(nonatomic, readwrite) BOOL hasLevelInfo;
@property(nonatomic, readwrite, strong, null_resettable) PLevelInfo *levelInfo;

@end

#pragma mark - PLevelInfos

typedef GPB_ENUM(PLevelInfos_FieldNumber) {
  PLevelInfos_FieldNumber_ListArray = 1,
  PLevelInfos_FieldNumber_FailUuidArray = 2,
};

//批量会员等级信息
@interface PLevelInfos : GPBMessage

//成功的PUuidLevelInfo信息列表
// |listArray| contains |PLevelInfoEx|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

//失败的uuid列表
// |failUuidArray| contains |NSString|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *failUuidArray;
@property(nonatomic, readonly) NSUInteger failUuidArray_Count;

@end

#pragma mark - PLiveRemind

typedef GPB_ENUM(PLiveRemind_FieldNumber) {
  PLiveRemind_FieldNumber_OffOn = 1,
};

//第三方直播提醒开关
@interface PLiveRemind : GPBMessage

@property(nonatomic, readwrite) BOOL offOn;

@end

#pragma mark - PAccountInitInfo

typedef GPB_ENUM(PAccountInitInfo_FieldNumber) {
  PAccountInitInfo_FieldNumber_AuthStatus = 1,
  PAccountInitInfo_FieldNumber_Cellphone = 2,
};

// 基础信息
@interface PAccountInitInfo : GPBMessage

//实名认证状态(0:未认证,1:审核中,2:审核未通过,3:已认证)
@property(nonatomic, readwrite) int32_t authStatus;

//手机号码
@property(nonatomic, readwrite, copy, null_resettable) NSString *cellphone;

@end

#pragma mark - PBackImage

typedef GPB_ENUM(PBackImage_FieldNumber) {
  PBackImage_FieldNumber_ObjectKey = 1,
  PBackImage_FieldNumber_URL = 2,
};

// 背景图片信息
@interface PBackImage : GPBMessage

//背景图片objectkey
@property(nonatomic, readwrite, copy, null_resettable) NSString *objectKey;

//图片URL
@property(nonatomic, readwrite, copy, null_resettable) NSString *uRL;

@end

#pragma mark - PBackThumbImageList

typedef GPB_ENUM(PBackThumbImageList_FieldNumber) {
  PBackThumbImageList_FieldNumber_ListArray = 1,
};

// 背景缩略图列表
@interface PBackThumbImageList : GPBMessage

// |listArray| contains |PBackImage|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@end

#pragma mark - PReadNameAuthInfo

typedef GPB_ENUM(PReadNameAuthInfo_FieldNumber) {
  PReadNameAuthInfo_FieldNumber_Uuid = 1,
  PReadNameAuthInfo_FieldNumber_AuthStatus = 2,
  PReadNameAuthInfo_FieldNumber_ReadName = 3,
  PReadNameAuthInfo_FieldNumber_Birthday = 4,
  PReadNameAuthInfo_FieldNumber_IdCardNo = 5,
  PReadNameAuthInfo_FieldNumber_IdCardImg = 6,
  PReadNameAuthInfo_FieldNumber_AuthTime = 7,
};

// 实名认证信息
@interface PReadNameAuthInfo : GPBMessage

//用户ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

//实名认证状态(0:未认证,1:审核中,2:审核未通过,3:已认证)
@property(nonatomic, readwrite) int32_t authStatus;

//真实姓名
@property(nonatomic, readwrite, copy, null_resettable) NSString *readName;

//出生年月日
@property(nonatomic, readwrite, copy, null_resettable) NSString *birthday;

//身份证号码
@property(nonatomic, readwrite, copy, null_resettable) NSString *idCardNo;

//身份证照片
@property(nonatomic, readwrite, copy, null_resettable) NSString *idCardImg;

//认证时间
@property(nonatomic, readwrite) int32_t authTime;

@end

#pragma mark - PReadNameAuthInfoList

typedef GPB_ENUM(PReadNameAuthInfoList_FieldNumber) {
  PReadNameAuthInfoList_FieldNumber_ListArray = 1,
};

// 实名认证信息列表
@interface PReadNameAuthInfoList : GPBMessage

// |listArray| contains |PReadNameAuthInfo|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@end

#pragma mark - PReadNameAuthInfoCount

typedef GPB_ENUM(PReadNameAuthInfoCount_FieldNumber) {
  PReadNameAuthInfoCount_FieldNumber_Count = 1,
};

// 实名认证信息数量
@interface PReadNameAuthInfoCount : GPBMessage

@property(nonatomic, readwrite) int64_t count;

@end

#pragma mark - PPrivacyInfo

typedef GPB_ENUM(PPrivacyInfo_FieldNumber) {
  PPrivacyInfo_FieldNumber_MyFans = 1,
  PPrivacyInfo_FieldNumber_MyAttention = 2,
};

// 隐私信息
@interface PPrivacyInfo : GPBMessage

//我的粉丝(不让他(她)看我的贴子)
@property(nonatomic, readwrite) BOOL myFans;

//我关注的人(不看他(她)的贴子)
@property(nonatomic, readwrite) BOOL myAttention;

@end

#pragma mark - PLanguageInfo

typedef GPB_ENUM(PLanguageInfo_FieldNumber) {
  PLanguageInfo_FieldNumber_Language = 1,
};

// 语言信息
@interface PLanguageInfo : GPBMessage

//语言
@property(nonatomic, readwrite, copy, null_resettable) NSString *language;

@end

#pragma mark - PLinkInfo

typedef GPB_ENUM(PLinkInfo_FieldNumber) {
  PLinkInfo_FieldNumber_Type = 1,
  PLinkInfo_FieldNumber_URL = 2,
};

// 超链接信息
@interface PLinkInfo : GPBMessage

//ELinkType类型
@property(nonatomic, readwrite) int32_t type;

//超链接地址
@property(nonatomic, readwrite, copy, null_resettable) NSString *uRL;

@end

#pragma mark - PLinkInfoList

typedef GPB_ENUM(PLinkInfoList_FieldNumber) {
  PLinkInfoList_FieldNumber_ListArray = 1,
};

// 超链接信息列表
@interface PLinkInfoList : GPBMessage

// |listArray| contains |PLinkInfo|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@end

#pragma mark - PAccountNewsPersonInfo

typedef GPB_ENUM(PAccountNewsPersonInfo_FieldNumber) {
  PAccountNewsPersonInfo_FieldNumber_FriendCnt = 1,
  PAccountNewsPersonInfo_FieldNumber_FollowCnt = 2,
  PAccountNewsPersonInfo_FieldNumber_FansCnt = 3,
  PAccountNewsPersonInfo_FieldNumber_TextCnt = 4,
  PAccountNewsPersonInfo_FieldNumber_ImageCnt = 5,
  PAccountNewsPersonInfo_FieldNumber_AudioCnt = 6,
  PAccountNewsPersonInfo_FieldNumber_VideoCnt = 7,
  PAccountNewsPersonInfo_FieldNumber_CommunityId = 8,
  PAccountNewsPersonInfo_FieldNumber_User = 9,
  PAccountNewsPersonInfo_FieldNumber_Followship = 10,
  PAccountNewsPersonInfo_FieldNumber_Friend_p = 11,
  PAccountNewsPersonInfo_FieldNumber_LinkInfos = 12,
};

// 显示贴子的个人档案信息
@interface PAccountNewsPersonInfo : GPBMessage

//朋友个数
@property(nonatomic, readwrite) int32_t friendCnt;

//follow人数
@property(nonatomic, readwrite) int32_t followCnt;

//fans个数
@property(nonatomic, readwrite) int32_t fansCnt;

//发表的文字帖个数
@property(nonatomic, readwrite) int32_t textCnt;

@property(nonatomic, readwrite) int32_t imageCnt;

@property(nonatomic, readwrite) int32_t audioCnt;

@property(nonatomic, readwrite) int32_t videoCnt;

@property(nonatomic, readwrite, copy, null_resettable) NSString *communityId;

@property(nonatomic, readwrite) BOOL hasUser;
@property(nonatomic, readwrite, strong, null_resettable) PUser *user;

//两用户间的关系、0:无关系，1,：是粉丝，2：已关注，3：相互关注
@property(nonatomic, readwrite) int32_t followship;

//是否是好友，是：true
@property(nonatomic, readwrite) BOOL friend_p;

//超链接列表
@property(nonatomic, readwrite) BOOL hasLinkInfos;
@property(nonatomic, readwrite, strong, null_resettable) PLinkInfoList *linkInfos;

@end

#pragma mark - PAccountChatPersonInfo

typedef GPB_ENUM(PAccountChatPersonInfo_FieldNumber) {
  PAccountChatPersonInfo_FieldNumber_CommunityId = 1,
  PAccountChatPersonInfo_FieldNumber_CommunityName = 2,
  PAccountChatPersonInfo_FieldNumber_CommunityIcon = 3,
  PAccountChatPersonInfo_FieldNumber_Introduce = 4,
  PAccountChatPersonInfo_FieldNumber_User = 5,
};

// 显示聊天的个人档案信息
@interface PAccountChatPersonInfo : GPBMessage

//社区ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *communityId;

//社区名称
@property(nonatomic, readwrite, copy, null_resettable) NSString *communityName;

//社区图片
@property(nonatomic, readwrite, copy, null_resettable) NSString *communityIcon;

//社区介绍
@property(nonatomic, readwrite, copy, null_resettable) NSString *introduce;

//用户信息
@property(nonatomic, readwrite) BOOL hasUser;
@property(nonatomic, readwrite, strong, null_resettable) PUser *user;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

// @@protoc_insertion_point(global_scope)
