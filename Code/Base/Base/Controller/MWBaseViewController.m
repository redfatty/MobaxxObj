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

+ (instancetype)loadFromXib:(NSString *)xib bundle:(NSBundle *)bundle{
    UIViewController *vc = nil;
    if (xib) {
        vc = [[self alloc] initWithNibName:xib bundle:bundle];
        return vc;
    }
    
    xib = NSStringFromClass(self.class);
    if ([bundle loadNibNamed:xib owner:nil options:nil]) {
        vc = [[self alloc] initWithNibName:xib bundle:bundle];
        return vc;
    }
    
    vc = [[self alloc] init];
    return vc;
}

+ (instancetype)loadFromStoryBoard:(NSString *)sb
                        identifier:(NSString *)identifier
                            bundle:(NSBundle *)bundle {
    UIStoryboard *sbObj = [UIStoryboard storyboardWithName:sb bundle:bundle];
    UIViewController *vc = [sbObj instantiateViewControllerWithIdentifier:identifier];
    return vc;
}

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
    self.hidesBottomBarWhenPushed = YES;//好像不起作用
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
