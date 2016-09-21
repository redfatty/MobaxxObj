//
//  PostHeader.h
//  WeiBo
//
//  Created by huangJiong on 16/9/8.
//  Copyright © 2016年 Mac－mini－1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PostHeader : UIView
@property (nonatomic, weak) UIButton *headerIcon;
@property (nonatomic, weak) UILabel *nicknameLabel;
@property (nonatomic, weak) UIButton *pubLocation;
@property (nonatomic, weak) UILabel *pubTimeLabel;
@property (nonatomic, weak) UIImageView *postTypeIcon;
@end
