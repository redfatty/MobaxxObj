//
//  MWBaseViewController.m
//  Base
//
//  Created by huangJiong on 16/9/18.
//  Copyright © 2016年 miwu. All rights reserved.
//

#import "MWBaseViewController.h"

@interface MWBaseViewController ()

@end

@implementation MWBaseViewController

//- (instancetype)initWithNibName:(NSString *)nibNameOrNil
//                         bundle:(NSBundle *)nibBundleOrNil {
//    
//    
//    
//    NSBundle *targetBundle = [NSBundle bundleForClass:self];
//    self = [super initWithNibName:nibNameOrNil
//                           bundle:targetBundle];
//    if (self) {
//        
//    }
//    return self;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
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
