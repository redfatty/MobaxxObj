//
//  LoginMainViewController.m
//  AppMobaxx
//
//  Created by huangJiong on 16/9/21.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import "LoginMainViewController.h"
#import <NetworkManager+Login.h>
#import <Login.pbobjc.h>
#import <AFManager.h>
#import <NSString+YYAdd.h>
#import <News.pbobjc.h>
#import <NetworkManager+Post.h>

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
    
    __weak typeof(self) weakSelf = self;
    NSString *pwd = [_passwordTfd.text sha256String];
    [NetworkManager loginWithAccount:_accountTfd.text password:pwd completion:^(PResult *failResult, PLogin *plogin) {
        
        [weakSelf handlePLogin:plogin];
        
    } error:^(NSError *err) {
        
    }];
}

- (void)handlePLogin:(PLogin *)plogin {
    NSString *uuid = plogin.uuid;
    NSString *token = plogin.token;
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    [userDef setObject:uuid forKey:@"uuid"];
    [userDef setObject:token forKey:@"token"];
    [userDef synchronize];
    NSString *cookies = [NSString stringWithFormat:@"token=%@;uuid=%@;", token, uuid];
    [[AFManager sharedManager].requestSerializer setValue:cookies forHTTPHeaderField:@"Cookie"];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [NetworkManager requestRecommendPostListWithCompletion:^(PResult *failResult, PPostInfoList *postList) {
        
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
