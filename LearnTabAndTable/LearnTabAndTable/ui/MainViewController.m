//
//  MainViewController.m
//  LearnTabAndTable
//
//  Created by laura on 2018/3/17.
//  Copyright © 2018年 zm. All rights reserved.
//

#import "MainViewController.h"

#import "DeliciousViewController.h"
#import "BillFareViewController.h"

@interface MainViewController ()
//@property (nonatomic, strong) DeliciousViewController* delicious;
//@property (nonatomic, strong) BillFareViewController* billFare;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
  
  [self createTabs];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createTabs {
  UIImage* image = [UIImage imageNamed:@"meishi"];
  BillFareViewController* billFare = [[BillFareViewController alloc] init];
  UINavigationController* billFareNC = [self createTabInfo:billFare title:@"" icon:image tag:0];
  DeliciousViewController* delicious = [[DeliciousViewController alloc] init];
  UINavigationController* deliciousNC = [self createTabInfo:delicious title:@"美食" icon:image tag:1];
  [self setViewControllers:@[billFareNC, deliciousNC] animated:YES];
}

- (UINavigationController*)createTabInfo:(UIViewController*)rootController
                                   title:(NSString*)title
                                    icon:(UIImage*)icon
                                     tag:(NSInteger)tag {
  UINavigationController* nc = [[UINavigationController alloc] initWithRootViewController:rootController];
  UITabBarItem* tabItem = [[UITabBarItem alloc] initWithTitle:title image:icon tag:tag];
  nc.tabBarItem = tabItem;
  return nc;
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
