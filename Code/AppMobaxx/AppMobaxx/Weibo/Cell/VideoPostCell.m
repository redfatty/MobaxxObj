//
//  VideoPostCell.m
//  WeiBo
//
//  Created by huangJiong on 16/9/8.
//  Copyright © 2016年 Mac－mini－1. All rights reserved.
//

#import "VideoPostCell.h"

@implementation VideoPostCell

- (void)refreshWithPostModel:(PostModel *)model {
    [super refreshWithPostModel:model];//刷新头和脚
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
