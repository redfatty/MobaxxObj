//
//  MWBaseViewController.h
//  Base
//
//  Created by huangJiong on 16/9/18.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MWBaseViewController : UIViewController


+ (instancetype)loadFromXib:(NSString *)xib
                     bundle:(NSBundle *)bundle;

+ (instancetype)loadFromStoryBoard:(NSString *)sb
                        identifier:(NSString *)identifier
                            bundle:(NSBundle *)bundle;

@end
