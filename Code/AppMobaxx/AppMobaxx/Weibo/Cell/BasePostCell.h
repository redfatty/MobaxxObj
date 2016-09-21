//
//  BasePostCell.h
//  WeiBo
//
//  Created by huangJiong on 16/9/8.
//  Copyright © 2016年 Mac－mini－1. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PostModel.h"
#import "PostHeader.h"
#import "PostFooter.h"


@interface BasePostCell : UITableViewCell
//顶部,发帖用户信息
@property (nonatomic, weak) UIButton *headerIcon;       //头像
@property (nonatomic, weak) UILabel *nicknameLabel;     //呢称
@property (nonatomic, weak) UIButton *pubLocation;      //位置
@property (nonatomic, weak) UILabel *pubTimeLabel;      //时间
@property (nonatomic, weak) UIImageView *postTypeIcon;  //类型

//底部,点赞收藏评论等信息
@property (nonatomic, weak) UIButton *commentBtn;       //评论
@property (nonatomic, weak) UIButton *dianZanBtn;       //点赞
@property (nonatomic, weak) UIButton *moreOptionBtn;    //更多

/**
 *  子类需要调用父类的该方法
 */
- (void)refreshWithPostModel:(PostModel *)model;

@end
