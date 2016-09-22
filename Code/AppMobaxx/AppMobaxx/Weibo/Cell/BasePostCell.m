//
//  BasePostCell.m
//  WeiBo
//
//  Created by huangJiong on 16/9/8.
//  Copyright © 2016年 Mac－mini－1. All rights reserved.
//

#import "BasePostCell.h"

@interface BasePostCell ()
@end

@implementation BasePostCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self setupUI];
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
    [super awakeFromNib];
}

- (void)refreshWithPostModel:(PostModel *)model {
    PPostInfo *postInfo = model.postInfo;
    //头部刷新
    [self.headerIcon sd_setBackgroundImageWithURL:[NSURL URLWithString:postInfo.userHead] forState:UIControlStateNormal];
    self.nicknameLabel.text = postInfo.userName;
    [self.pubLocation setTitle:postInfo.position forState:UIControlStateNormal];
    self.pubTimeLabel.text = model.pubTimeStr;
    
    //底部刷新
    [self.commentBtn setTitle:@(postInfo.commentCnt).stringValue forState:UIControlStateNormal];
    [self.dianZanBtn setTitle:@(postInfo.voteCnt).stringValue forState:UIControlStateNormal];
}


- (void)setupUI {
    //阴影
//    UIView *shadowView = [[UIView alloc] init];
//    CALayer *layer = shadowView.layer;
//    layer.cornerRadius = 13;
//    layer.shadowOffset = CGSizeMake(0, 3);
//    layer.shadowRadius = 10;
//    layer.shadowColor = UIColor.blackColor.CGColor;
//    layer.shadowOpacity = 0.25;
//    shadowView.backgroundColor = [UIColor whiteColor];
//    [self.contentView addSubview:shadowView];
//    [shadowView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(@(9));
//        make.left.equalTo(@(19));
//        make.right.equalTo(@(-19));
//        make.bottom.equalTo(@(-9));
//    }];
    
//    UIImageView *imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"shadow"]];
//    [self.contentView addSubview:imgView];
//    [imgView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(self.contentView).insets(UIEdgeInsetsMake(-8, -5, -8, -5));
//    }];
    
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(12));
        make.bottom.equalTo(@(-12));
        make.left.equalTo(@(15));
        make.right.equalTo(@(-15));
    }];
    
    
    /*********************************************/
    //头部信息, 高68
    [self.postHeader mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.equalTo(@(0));
        make.height.equalTo(@(68));
    }];
    
    //头像
    [self.headerIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.equalTo(@(15));
        make.height.width.equalTo(@(38));
    }];
    
    //呢称
    [self.nicknameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.headerIcon.mas_right).offset(18);
        make.bottom.equalTo(self.mas_centerY).offset(-5);
    }];
    
    //位置
    [self.pubLocation mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.headerIcon.mas_right).offset(18);
        make.top.equalTo(self.mas_centerY).offset(5);
    }];
    
    //类型
    [self.postTypeIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(@(-15));
        make.bottom.equalTo(self.mas_centerY).offset(-5);
        make.height.width.equalTo(@(16));
    }];
    
    //时间
    [self.pubTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(@(-15));
        make.top.equalTo(self.mas_centerY).offset(5);
    }];
    
    
    /*********************************************/
    //底部高48
    [self.postFooter mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.postHeader.mas_bottom).offset(20);
        make.left.bottom.right.equalTo(@(0));
        make.height.equalTo(@(48));
    }];
    
    [self.commentBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(33));
        make.centerY.equalTo(self.postFooter);
    }];
    
    [self.dianZanBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.postFooter);
    }];
    
    [self.moreOptionBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(@(-33));
        make.centerY.equalTo(self.postFooter);
    }];
}




#pragma mark - 属性懒加载:
- (UIView *)postContent {
    if (_postContent == nil) {
        UIView *postContent = [[UIView alloc] init];
        [self.contentView addSubview:postContent];
        _postContent = postContent;
    }
    return _postContent;
}

#pragma mark -头部信息
- (UIView *)postHeader {
    if (_postHeader == nil) {
        UIView *header = [UIView new];
        [self.contentView addSubview:header];
        _postHeader = header;
    }
    return _postHeader;
}

//头像
- (UIButton *)headerIcon {
    if (_headerIcon == nil) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setBackgroundImage:[UIImage imageNamed:@"user_default_headerIcon"] forState:UIControlStateNormal];
        [self.postHeader addSubview:btn];
        _headerIcon = btn;
    }
    return _headerIcon;
}

//呢称
- (UILabel *)nicknameLabel {
    if (_nicknameLabel == nil) {
        UILabel *label = [[UILabel alloc] init];
        label.text = @"暂无呢称";
        label.font = [UIFont systemFontOfSize:14];
        label.textColor = [UIColor blueColor];
        [self.postHeader addSubview:label];
        _nicknameLabel = label;
    }
    return _nicknameLabel;
}

- (UIImageView *)postTypeIcon {
    if (_postTypeIcon == nil) {
        UIImageView *imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_text"]];
        [self.postHeader addSubview:imgView];
        _postTypeIcon = imgView;
    }
    return _postTypeIcon;
}

- (UIButton *)pubLocation {
    if (_pubLocation == nil) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setImage:[UIImage imageNamed:@"icon_address"] forState:UIControlStateNormal];
        [btn setTitle:@"暂无位置" forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont systemFontOfSize:12];
        [self.postHeader addSubview:btn];
        _pubLocation = btn;
    }
    return _pubLocation;
}

- (UILabel *)pubTimeLabel {
    if (_pubTimeLabel == nil) {
        UILabel *label = [[UILabel alloc] init];
        label.text = @"暂无时间";
        label.textColor = [UIColor grayColor];
        label.font = [UIFont systemFontOfSize:12];
        label.textAlignment = NSTextAlignmentRight;
        [self.postHeader addSubview:label];
        _pubTimeLabel = label;
    }
    return _pubTimeLabel;
}


 #pragma mark -底部
- (UIView *)postFooter {
    if (_postFooter == nil) {
        UIView *footer = [UIView new];
        [self.contentView addSubview:footer];
        _postFooter = footer;
    }
    return _postFooter;
}

//评论
- (UIButton *)commentBtn {
    if (_commentBtn == nil) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitle:@"评论" forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"icon_comment"] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
         btn.titleLabel.font = [UIFont systemFontOfSize:14];
        [self.postFooter addSubview:btn];
        _commentBtn = btn;
    }
    return _commentBtn;
}

//点赞
- (UIButton *)dianZanBtn {
    if (_dianZanBtn == nil) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitle:@" " forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"icon_good"] forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont systemFontOfSize:14];
        [self.postFooter addSubview:btn];
        _dianZanBtn = btn;
    }
    return _dianZanBtn;
}

//更多选项
- (UIButton *)moreOptionBtn {
    if (_moreOptionBtn == nil) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitle:@"更多" forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"icon_more"] forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont systemFontOfSize:14];
        [self.postFooter addSubview:btn];
        _moreOptionBtn = btn;
    }
    return _moreOptionBtn;
}

@end
