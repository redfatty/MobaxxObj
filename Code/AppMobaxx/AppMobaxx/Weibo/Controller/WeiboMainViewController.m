//
//  WeiboMainViewController.m
//  MiwuApp
//
//  Created by huangJiong on 16/9/18.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import "WeiboMainViewController.h"


@interface WeiboMainViewController ()

@end

@implementation WeiboMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"微博";
    
    [self gotoLogin];
}

- (void)gotoLogin {

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
