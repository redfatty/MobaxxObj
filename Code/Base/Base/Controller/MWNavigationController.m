//
//  MWNavigationController.m
//  Base
//
//  Created by huangJiong on 16/9/18.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import "MWNavigationController.h"

@interface MWNavigationController ()

@end

@implementation MWNavigationController

+ (instancetype)createWithRootVC:(UIViewController *)rootVC {
    MWNavigationController *nav = [[self alloc] initWithRootViewController:rootVC];
    return nav;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
