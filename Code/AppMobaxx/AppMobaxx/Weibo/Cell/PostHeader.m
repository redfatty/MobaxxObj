//
//  PostHeader.m
//  WeiBo
//
//  Created by huangJiong on 16/9/8.
//  Copyright © 2016年 Mac－mini－1. All rights reserved.
//

#import "PostHeader.h"


@implementation PostHeader

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI {
    //头像
    [self.headerIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.bottom.equalTo(@(0));
//        make.width.height.equalTo(@(38)).priorityHigh();
        make.width.equalTo(self.headerIcon.mas_height);
    }];
    
    //呢称
    [self.nicknameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.headerIcon.mas_right).offset(8);
        make.bottom.equalTo(self.mas_centerY).offset(-5);
    }];
    
    //位置
    [self.pubLocation mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.headerIcon.mas_right).offset(8);
        make.top.equalTo(self.mas_centerY).offset(5);
    }];
    
    //类型
    [self.postTypeIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.right.equalTo(@(0));
        make.width.height.equalTo(@(16));
    }];
    
    //时间
    [self.pubTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.right.equalTo(@(0));
    }];
    
}

#pragma mark - 属性懒加载
//头像
- (UIButton *)headerIcon {
    if (_headerIcon == nil) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setBackgroundImage:BaseImage(@"user_default_headerIcon") forState:UIControlStateNormal];
        [self addSubview:btn];
        _headerIcon = btn;
    }
    return _headerIcon;
}

//呢称
- (UILabel *)nicknameLabel {
    if (_nicknameLabel == nil) {
        UILabel *label = [[UILabel alloc] init];
        label.text = @"暂无呢称";
        label.font = [UIFont systemFontOfSize:13];
        label.textColor = [UIColor blueColor];
        [self addSubview:label];
        _nicknameLabel = label;
    }
    return _nicknameLabel;
}

- (UIImageView *)postTypeIcon {
    if (_postTypeIcon == nil) {
        UIImageView *imgView = [[UIImageView alloc] initWithImage:WBImage(@"")];
        [self addSubview:imgView];
        _postTypeIcon = imgView;
    }
    return _postTypeIcon;
}

- (UIButton *)pubLocation {
    if (_pubLocation == nil) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setImage:WBImage(@"") forState:UIControlStateNormal];
        [btn setTitle:@"暂无位置" forState:UIControlStateNormal];
        [self addSubview:btn];
        _pubLocation = btn;
    }
    return _pubLocation;
}

- (UILabel *)pubTimeLabel {
    if (_pubTimeLabel == nil) {
        UILabel *label = [[UILabel alloc] init];
        label.text = @"暂无时间";
        [self addSubview:label];
        _pubTimeLabel = label;
    }
    return _pubTimeLabel;
}


@end
