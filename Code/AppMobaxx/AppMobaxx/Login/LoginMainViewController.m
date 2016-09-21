//
//  LoginMainViewController.m
//  AppMobaxx
//
//  Created by huangJiong on 16/9/21.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import "LoginMainViewController.h"
#import <NetworkManager+Login.h>

@interface LoginMainViewController ()
@property (weak, nonatomic) IBOutlet UITextField *accountTfd;
@property (weak, nonatomic) IBOutlet UITextField *passwordTfd;

@end

@implementation LoginMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _accountTfd.text = @"+8613302431090";
    _passwordTfd.text = @"123456";
}
- (IBAction)clickLoginBtn:(id)sender {
    
    [NetworkManager loginWithAccount:_accountTfd.text password:_passwordTfd.text completion:^(PResult *failResult, PLogin *plogin) {
        
    } error:^(NSError *err) {
        
    }];
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
