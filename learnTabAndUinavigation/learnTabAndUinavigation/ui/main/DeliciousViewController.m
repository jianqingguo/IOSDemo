//
//  DeliciousViewController.m
//  learnTabAndUinavigation
//
//  Created by laura on 2018/3/15.
//  Copyright © 2018年 zm. All rights reserved.
//

#import "DeliciousViewController.h"

#import "CookingStepsViewController.h"

@interface DeliciousViewController ()

@end

@implementation DeliciousViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
  self.title = @"美食";
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
- (IBAction)onShowCookingSteps:(id)sender {
  CookingStepsViewController* cooking = [[CookingStepsViewController alloc] init];
  cooking.hidesBottomBarWhenPushed = YES;
  [self.navigationController pushViewController:cooking animated:YES];
}

@end
