// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: platform.proto

#import "GPBProtocolBuffers.h"

#if GOOGLE_PROTOBUF_OBJC_GEN_VERSION != 30000
#error This file was generated by a different version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

CF_EXTERN_C_BEGIN

NS_ASSUME_NONNULL_BEGIN

#pragma mark - PlatformRoot

@interface PlatformRoot : GPBRootObject

// The base class provides:
//   + (GPBExtensionRegistry *)extensionRegistry;
// which is an GPBExtensionRegistry that includes all the extensions defined by
// this file and all files that it depends on.

@end

#pragma mark - PServiceStatus

typedef GPB_ENUM(PServiceStatus_FieldNumber) {
  PServiceStatus_FieldNumber_Status = 1,
};

//列出所有服务的状态（开启的还是关闭的）
@interface PServiceStatus : GPBMessage

// |status| values are |PService|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableDictionary *status;
@property(nonatomic, readonly) NSUInteger status_Count;

@end

#pragma mark - PService

typedef GPB_ENUM(PService_FieldNumber) {
  PService_FieldNumber_Status = 1,
  PService_FieldNumber_CanDo = 2,
};

//每个服务的状态
@interface PService : GPBMessage

@property(nonatomic, readwrite) BOOL status;

//能否被操作
@property(nonatomic, readwrite) BOOL canDo;

@end

#pragma mark - PReportNewsList

typedef GPB_ENUM(PReportNewsList_FieldNumber) {
  PReportNewsList_FieldNumber_ListArray = 1,
  PReportNewsList_FieldNumber_Total = 2,
};

//被举报人列表
@interface PReportNewsList : GPBMessage

// |listArray| contains |PReportNews|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@property(nonatomic, readwrite) int32_t total;

@end

#pragma mark - PReportNews

typedef GPB_ENUM(PReportNews_FieldNumber) {
  PReportNews_FieldNumber_Id_p = 1,
  PReportNews_FieldNumber_InformersArray = 2,
  PReportNews_FieldNumber_Tuid = 3,
  PReportNews_FieldNumber_Postid = 4,
  PReportNews_FieldNumber_IsProcess = 5,
};

//被举报人的信息
@interface PReportNews : GPBMessage

@property(nonatomic, readwrite) int64_t id_p;

//举报人
// |informersArray| contains |PInformer|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *informersArray;
@property(nonatomic, readonly) NSUInteger informersArray_Count;

//被举报人
@property(nonatomic, readwrite, copy, null_resettable) NSString *tuid;

//被举报的帖子
@property(nonatomic, readwrite) int64_t postid;

//是否已经处理（没有处理为0，否则为处理的时间）
@property(nonatomic, readwrite) int64_t isProcess;

@end

#pragma mark - PReportUserList

typedef GPB_ENUM(PReportUserList_FieldNumber) {
  PReportUserList_FieldNumber_ListArray = 1,
};

//被举报人列表
@interface PReportUserList : GPBMessage

// |listArray| contains |PReportUser|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@end

#pragma mark - PReportUser

typedef GPB_ENUM(PReportUser_FieldNumber) {
  PReportUser_FieldNumber_Id_p = 1,
  PReportUser_FieldNumber_InformersArray = 2,
  PReportUser_FieldNumber_Uuid = 3,
  PReportUser_FieldNumber_Content = 4,
  PReportUser_FieldNumber_IsProcess = 5,
};

//被举报人的信息
@interface PReportUser : GPBMessage

@property(nonatomic, readwrite) int64_t id_p;

//举报人列表
// |informersArray| contains |PInformer|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *informersArray;
@property(nonatomic, readonly) NSUInteger informersArray_Count;

//被举报人
@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

//举报内容
@property(nonatomic, readwrite, copy, null_resettable) NSString *content;

//是否已经处理（没有处理为0，否则为处理的时间）
@property(nonatomic, readwrite) int64_t isProcess;

@end

#pragma mark - PReportCommunityUserList

typedef GPB_ENUM(PReportCommunityUserList_FieldNumber) {
  PReportCommunityUserList_FieldNumber_ListArray = 1,
};

@interface PReportCommunityUserList : GPBMessage

// |listArray| contains |PReportCommunityUser|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@end

#pragma mark - PReportCommunityUser

typedef GPB_ENUM(PReportCommunityUser_FieldNumber) {
  PReportCommunityUser_FieldNumber_Id_p = 1,
  PReportCommunityUser_FieldNumber_InformersArray = 2,
  PReportCommunityUser_FieldNumber_CommunityId = 3,
  PReportCommunityUser_FieldNumber_Uuid = 4,
  PReportCommunityUser_FieldNumber_Content = 5,
  PReportCommunityUser_FieldNumber_IsProcess = 6,
};

//社区Id，用户Uuid,举报的原因
@interface PReportCommunityUser : GPBMessage

@property(nonatomic, readwrite) int64_t id_p;

//举报人列表
// |informersArray| contains |PInformer|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *informersArray;
@property(nonatomic, readonly) NSUInteger informersArray_Count;

//社区ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *communityId;

//被举报人
@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

//举报内容
@property(nonatomic, readwrite, copy, null_resettable) NSString *content;

//是否已经处理（没有处理为0，否则为处理的时间）
@property(nonatomic, readwrite) int64_t isProcess;

@end

#pragma mark - PReportCommunityPostsList

typedef GPB_ENUM(PReportCommunityPostsList_FieldNumber) {
  PReportCommunityPostsList_FieldNumber_ListArray = 1,
};

@interface PReportCommunityPostsList : GPBMessage

// |listArray| contains |PReportCommunityPosts|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@end

#pragma mark - PReportCommunityPosts

typedef GPB_ENUM(PReportCommunityPosts_FieldNumber) {
  PReportCommunityPosts_FieldNumber_Id_p = 1,
  PReportCommunityPosts_FieldNumber_InformersArray = 2,
  PReportCommunityPosts_FieldNumber_CommunityId = 3,
  PReportCommunityPosts_FieldNumber_PostsId = 4,
  PReportCommunityPosts_FieldNumber_Uuid = 5,
  PReportCommunityPosts_FieldNumber_Content = 6,
  PReportCommunityPosts_FieldNumber_IsProcess = 7,
};

//社区Id,帖子Id,帖子创建者Uuid,举报的原因
@interface PReportCommunityPosts : GPBMessage

@property(nonatomic, readwrite) int64_t id_p;

//举报人列表
// |informersArray| contains |PInformer|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *informersArray;
@property(nonatomic, readonly) NSUInteger informersArray_Count;

//社区ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *communityId;

//帖子ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *postsId;

//帖子作者
@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

//举报内容
@property(nonatomic, readwrite, copy, null_resettable) NSString *content;

//是否已经处理（没有处理为0，否则为处理的时间）
@property(nonatomic, readwrite) int64_t isProcess;

@end

#pragma mark - PReportCommunityCommentList

typedef GPB_ENUM(PReportCommunityCommentList_FieldNumber) {
  PReportCommunityCommentList_FieldNumber_ListArray = 1,
};

@interface PReportCommunityCommentList : GPBMessage

// |listArray| contains |PReportCommunityComment|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@end

#pragma mark - PReportCommunityComment

typedef GPB_ENUM(PReportCommunityComment_FieldNumber) {
  PReportCommunityComment_FieldNumber_Id_p = 1,
  PReportCommunityComment_FieldNumber_InformersArray = 2,
  PReportCommunityComment_FieldNumber_CommunityId = 3,
  PReportCommunityComment_FieldNumber_PostsId = 4,
  PReportCommunityComment_FieldNumber_CommentId = 5,
  PReportCommunityComment_FieldNumber_Uuid = 6,
  PReportCommunityComment_FieldNumber_Content = 7,
  PReportCommunityComment_FieldNumber_IsProcess = 8,
};

//社区Id,帖子Id,评论Id，评论发表者Uuid,举报的原因
@interface PReportCommunityComment : GPBMessage

@property(nonatomic, readwrite) int64_t id_p;

//举报人列表
// |informersArray| contains |PInformer|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *informersArray;
@property(nonatomic, readonly) NSUInteger informersArray_Count;

//社区ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *communityId;

//帖子ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *postsId;

//评论ID
@property(nonatomic, readwrite, copy, null_resettable) NSString *commentId;

//评论发布者
@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

//举报内容
@property(nonatomic, readwrite, copy, null_resettable) NSString *content;

//是否已经处理（没有处理为0，否则为处理的时间）
@property(nonatomic, readwrite) int64_t isProcess;

@end

#pragma mark - PInformer

typedef GPB_ENUM(PInformer_FieldNumber) {
  PInformer_FieldNumber_Uuid = 1,
  PInformer_FieldNumber_Time = 2,
};

//举报人
@interface PInformer : GPBMessage

//举报人
@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

//举报时间
@property(nonatomic, readwrite) int64_t time;

@end

#pragma mark - PKeywords

typedef GPB_ENUM(PKeywords_FieldNumber) {
  PKeywords_FieldNumber_ListArray = 1,
  PKeywords_FieldNumber_Total = 2,
};

//敏感词列表
@interface PKeywords : GPBMessage

//敏感词列表
// |listArray| contains |PKeyword|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

//数据总量
@property(nonatomic, readwrite) int32_t total;

@end

#pragma mark - PKeyword

typedef GPB_ENUM(PKeyword_FieldNumber) {
  PKeyword_FieldNumber_Id_p = 1,
  PKeyword_FieldNumber_Work = 2,
};

//敏感词
@interface PKeyword : GPBMessage

@property(nonatomic, readwrite) int64_t id_p;

@property(nonatomic, readwrite, copy, null_resettable) NSString *work;

@end

#pragma mark - PBlacklists

typedef GPB_ENUM(PBlacklists_FieldNumber) {
  PBlacklists_FieldNumber_ListArray = 1,
  PBlacklists_FieldNumber_Total = 2,
};

//黑名单列表
@interface PBlacklists : GPBMessage

// |listArray| contains |Pblacklist|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@property(nonatomic, readwrite) int32_t total;

@end

#pragma mark - Pblacklist

typedef GPB_ENUM(Pblacklist_FieldNumber) {
  Pblacklist_FieldNumber_Id_p = 1,
  Pblacklist_FieldNumber_Val = 2,
  Pblacklist_FieldNumber_Other = 3,
};

//黑名单
@interface Pblacklist : GPBMessage

@property(nonatomic, readwrite) int32_t id_p;

@property(nonatomic, readwrite, copy, null_resettable) NSString *val;

//如果是手机，那么这个就是手机的区号
@property(nonatomic, readwrite, copy, null_resettable) NSString *other;

@end

#pragma mark - PRecommendGame

typedef GPB_ENUM(PRecommendGame_FieldNumber) {
  PRecommendGame_FieldNumber_Id_p = 1,
  PRecommendGame_FieldNumber_Name = 2,
  PRecommendGame_FieldNumber_Head = 3,
  PRecommendGame_FieldNumber_Desc = 4,
};

//推荐关注的游戏
@interface PRecommendGame : GPBMessage

@property(nonatomic, readwrite) int32_t id_p;

@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@property(nonatomic, readwrite, copy, null_resettable) NSString *head;

@property(nonatomic, readwrite, copy, null_resettable) NSString *desc;

@end

#pragma mark - PRecommendGameList

typedef GPB_ENUM(PRecommendGameList_FieldNumber) {
  PRecommendGameList_FieldNumber_ListArray = 1,
};

//推荐关注的游戏的列表
@interface PRecommendGameList : GPBMessage

// |listArray| contains |PRecommendGame|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@end

#pragma mark - PRecommendClub

typedef GPB_ENUM(PRecommendClub_FieldNumber) {
  PRecommendClub_FieldNumber_Id_p = 1,
  PRecommendClub_FieldNumber_Name = 2,
  PRecommendClub_FieldNumber_Head = 3,
  PRecommendClub_FieldNumber_Desc = 4,
};

//推荐关注的俱乐部
@interface PRecommendClub : GPBMessage

@property(nonatomic, readwrite) int32_t id_p;

@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@property(nonatomic, readwrite, copy, null_resettable) NSString *head;

@property(nonatomic, readwrite, copy, null_resettable) NSString *desc;

@end

#pragma mark - PRecommendClubList

typedef GPB_ENUM(PRecommendClubList_FieldNumber) {
  PRecommendClubList_FieldNumber_ListArray = 1,
};

//推荐关注的俱乐部的列表
@interface PRecommendClubList : GPBMessage

// |listArray| contains |PRecommendClub|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@end

#pragma mark - PRecommendStar

typedef GPB_ENUM(PRecommendStar_FieldNumber) {
  PRecommendStar_FieldNumber_Id_p = 1,
  PRecommendStar_FieldNumber_Uuid = 2,
};

//推荐关注的名人
@interface PRecommendStar : GPBMessage

@property(nonatomic, readwrite) int32_t id_p;

@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@end

#pragma mark - PRecommendStarList

typedef GPB_ENUM(PRecommendStarList_FieldNumber) {
  PRecommendStarList_FieldNumber_ListArray = 1,
};

//推荐关注的名人的列表
@interface PRecommendStarList : GPBMessage

// |listArray| contains |PRecommendStar|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@end

#pragma mark - PFeedbackList

typedef GPB_ENUM(PFeedbackList_FieldNumber) {
  PFeedbackList_FieldNumber_ListArray = 1,
};

//意见反馈列表
@interface PFeedbackList : GPBMessage

// |listArray| contains |PFeedback|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@end

#pragma mark - PFeedback

typedef GPB_ENUM(PFeedback_FieldNumber) {
  PFeedback_FieldNumber_Id_p = 1,
  PFeedback_FieldNumber_Uuid = 2,
  PFeedback_FieldNumber_Time = 3,
  PFeedback_FieldNumber_Content = 4,
};

//意见反馈
@interface PFeedback : GPBMessage

@property(nonatomic, readwrite) int32_t id_p;

@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@property(nonatomic, readwrite) int64_t time;

@property(nonatomic, readwrite, copy, null_resettable) NSString *content;

@end

#pragma mark - PBannerList

typedef GPB_ENUM(PBannerList_FieldNumber) {
  PBannerList_FieldNumber_ListArray = 1,
};

//banner图片列表
@interface PBannerList : GPBMessage

// |listArray| contains |PBanner|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *listArray;
@property(nonatomic, readonly) NSUInteger listArray_Count;

@end

#pragma mark - PBanner

typedef GPB_ENUM(PBanner_FieldNumber) {
  PBanner_FieldNumber_Id_p = 1,
  PBanner_FieldNumber_Src = 2,
  PBanner_FieldNumber_URL = 3,
  PBanner_FieldNumber_Text = 4,
  PBanner_FieldNumber_Width = 5,
  PBanner_FieldNumber_Expires = 6,
  PBanner_FieldNumber_Enable = 7,
  PBanner_FieldNumber_Time = 8,
};

//banner图片
@interface PBanner : GPBMessage

@property(nonatomic, readwrite) int32_t id_p;

//图片地址（客户端使用）
@property(nonatomic, readwrite, copy, null_resettable) NSString *src;

//点击链接地址（客户端使用）
@property(nonatomic, readwrite, copy, null_resettable) NSString *uRL;

//文字（客户端使用）
@property(nonatomic, readwrite, copy, null_resettable) NSString *text;

//图片的宽
@property(nonatomic, readwrite) int32_t width;

//图片到期时间
@property(nonatomic, readwrite) int64_t expires;

//是否下架
@property(nonatomic, readwrite) BOOL enable;

//创建时间
@property(nonatomic, readwrite) int64_t time;

@end

#pragma mark - PBannerSignle

typedef GPB_ENUM(PBannerSignle_FieldNumber) {
  PBannerSignle_FieldNumber_Id_p = 1,
  PBannerSignle_FieldNumber_URL = 2,
  PBannerSignle_FieldNumber_Text = 3,
  PBannerSignle_FieldNumber_Expires = 4,
  PBannerSignle_FieldNumber_ImgsArray = 5,
};

@interface PBannerSignle : GPBMessage

@property(nonatomic, readwrite) int32_t id_p;

//点击链接地址
@property(nonatomic, readwrite, copy, null_resettable) NSString *uRL;

//文字
@property(nonatomic, readwrite, copy, null_resettable) NSString *text;

//图片到期时间
@property(nonatomic, readwrite) int64_t expires;

// |imgsArray| contains |PBannerImage|
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray *imgsArray;
@property(nonatomic, readonly) NSUInteger imgsArray_Count;

@end

#pragma mark - PBannerImage

typedef GPB_ENUM(PBannerImage_FieldNumber) {
  PBannerImage_FieldNumber_Src = 1,
  PBannerImage_FieldNumber_Width = 2,
};

@interface PBannerImage : GPBMessage

//图片地址
@property(nonatomic, readwrite, copy, null_resettable) NSString *src;

//图片的宽
@property(nonatomic, readwrite) int32_t width;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

// @@protoc_insertion_point(global_scope)