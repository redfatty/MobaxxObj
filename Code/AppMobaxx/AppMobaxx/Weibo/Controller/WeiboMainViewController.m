//
//  WeiboMainViewController.m
//  MiwuApp
//
//  Created by huangJiong on 16/9/18.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import "WeiboMainViewController.h"
#import <NetworkManager+Login.h>
#import <Masonry.h>
#import <NSString+YYAdd.h>
#import "PostListView.h"
#import "LoginMainViewController.h"


@interface WeiboMainViewController ()
@property (nonatomic, weak) PostListView *postListView;
@end

@implementation WeiboMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"最新消息";

    [NetworkManager autoLoginWithCompletion:^(PResult *failResult, PLogin *plogin) {
        if (plogin) {
           [NetworkHelper saveLoginData:plogin];
           [self requestPostListData];
        } else {
            [self gotoLogin];
        }
    } error:^(NSError *err) {
        [self gotoLogin];
    }];
}

- (void)gotoLogin {
    LoginMainViewController *loginMainVC = [LoginMainViewController loadFromXib:nil bundle:nil];
    [self.navigationController pushViewController:loginMainVC animated:YES];
}

- (void)requestPostListData {
    
}

- (PostListView *)postListView {
    if (_postListView == nil) {
        PostListView *listView = [[PostListView alloc] init];
        [self.view addSubview:listView];
        [listView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(0));
            make.left.equalTo(@(0));
            make.right.equalTo(@(0));
            make.bottom.equalTo(@(0));
        }];
    }
    return _postListView;
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



