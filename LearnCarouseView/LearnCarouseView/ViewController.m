//
//  ViewController.m
//  LearnCarouseView
//
//  Created by laura on 2018/3/19.
//  Copyright © 2018年 zm. All rights reserved.
//

#import "ViewController.h"

#import "CarouseViewPlus.h"

@interface ViewController ()
@property (nonatomic, strong) CarouseViewPlus* carouseView;
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  self.carouseView = [[CarouseViewPlus alloc]  initWithFrame:CGRectMake(0, 50, self.view.frame.size.width, 200)];
  [self setupCarouseViewPlus];
  [self.view addSubview:self.carouseView];
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - 轮播图2设置
- (void)setupCarouseViewPlus
{
  // 图片数组，可以是其他的资源，设置到轮播图上就可以
  NSMutableArray *imagerray = [NSMutableArray array];
  for (int i = 0; i < 7; i++)
    {
    // 先用空白页测试
    UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", i + 1]];
    [imagerray addObject:image];
    }
  
  [self.carouseView setupSubviewPages:imagerray withCallbackBlock:^(NSInteger pageIndex) {
    // 点击页面
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"carouse2 msg"
                                                        message:@"sfsfsdf"
                                                       delegate:nil
                                              cancelButtonTitle:@"ok"
                                              otherButtonTitles:nil, nil];
    [alertView show];
  }];
}


@end
