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


@interface WeiboMainViewController ()
@property (nonatomic, weak) PostListView *postListView;
@end

@implementation WeiboMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"最新消息";
    
    [self requestPostListData];
    [self gotoLogin];
}

- (void)requestPostListData {
    
}

- (void)gotoLogin {

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    NSString *pwd = [@"1234563721" sha256String];
    
    [NetworkManager loginWithAccount:@"+8613620946464"
                            password:pwd
                          completion:^(PResult *failResult,
                                       PLogin *plogin) {
                              
        
    } error:^(NSError *err) {
        
    }];
    
//    NSLog(@"点击了");
//    [NetworkManager requestSmsCodeWithPhone:@"+8613620946464" type:2 completion:^(PResult *presult) {
//        
//    } error:^(NSError *err) {
//        
//    }];
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
