//
//  MainViewController.m
//  learnTabAndUinavigation
//
//  Created by laura on 2018/3/15.
//  Copyright © 2018年 zm. All rights reserved.
//

#import "MainViewController.h"

#import "DeliciousViewController.h"
#import "AccountViewController.h"
#import "FavoriteViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
  [self loadViewsController];
  [self.tabBar setBackgroundColor:[UIColor greenColor]];
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

- (void)loadViewsController {
  DeliciousViewController* delicious = [[DeliciousViewController alloc] init];
  UINavigationController* deliciousNC = [[UINavigationController alloc] initWithRootViewController:delicious];
  UITabBarItem* deliciousItem =
      [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks
                                                 tag:0];
  deliciousNC.tabBarItem = deliciousItem;
  [deliciousNC.navigationBar setBackgroundColor:[UIColor greenColor]];
  [deliciousNC.navigationBar setBarStyle:UIBarStyleBlackTranslucent];
  [deliciousNC.navigationBar setTintColor:[UIColor whiteColor]];
  
  
  FavoriteViewController* favorite = [[FavoriteViewController alloc] initWithNibName:@"FavoriteViewController" bundle:[NSBundle mainBundle]];
  UINavigationController* favoriteNC = [[UINavigationController alloc] initWithRootViewController:favorite];
  UITabBarItem* favoriteItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:1];
  favoriteNC.tabBarItem = favoriteItem;
  
  AccountViewController* account = [[AccountViewController alloc] initWithNibName:@"AccountViewController" bundle:[NSBundle mainBundle]];
  UINavigationController* accountNC = [[UINavigationController alloc] initWithRootViewController:account];
  UITabBarItem* accountItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemRecents tag:2];
  accountNC.tabBarItem = accountItem;
  
//  NSArray *controllersArray = @[deliciousNC, favoriteNC, accountNC];
  
  [self setViewControllers:@[deliciousNC, favoriteNC, accountNC] animated:YES];
}

@end
