//
//  DeliciousViewController.m
//  LearnTabAndTable
//
//  Created by laura on 2018/3/17.
//  Copyright © 2018年 zm. All rights reserved.
//

#import "DeliciousViewController.h"

#import "BillFareCellTableViewCell.h"

@interface BillItem : NSObject
@property (nonatomic, strong) NSString* title;
@property (nonatomic, strong) UIImage* firstImage;
@property (nonatomic, strong) UIImage* secondImage;
@property (nonatomic, strong) UIImage* threeImage;
@end
@implementation BillItem
@end

@interface DeliciousViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *dishesTable;
@property (nonatomic, strong) NSMutableArray* billItems;
@end

@implementation DeliciousViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
  self.title = @"美食";

  // 注册以后由系统提供CELL的复用策略
  [self.dishesTable registerNib:[UINib nibWithNibName:@"BillFareCellTableViewCell" bundle:[NSBundle mainBundle]]
         forCellReuseIdentifier:@"bill_fare_cell"];
  self.billItems = [[NSMutableArray alloc] init];
  for (int i = 0; i < 20; i++) {
    BillItem* item = [[BillItem alloc] init];
    item.title = [NSString stringWithFormat:@"菜品 : %d", i];
    item.firstImage = [UIImage imageNamed:@"suanlatudousi"];
    item.secondImage = [UIImage imageNamed:@"haoyoushengcai"];
    item.threeImage = [UIImage imageNamed:@"yuxiangdoufu"];
    [self.billItems addObject:item];
  }
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

#pragma mark UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return self.billItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"bill_fare_cell"];
  if (cell == nil) {
    //这里会发现，cell一直都不是nil，不再需要创建，系统已经做过复用策略，所以不用再创建也不会为 nil
    NSLog(@"create bill fare cell:%ld", indexPath.row);
  }
  return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
  BillFareCellTableViewCell* billCell = (BillFareCellTableViewCell*)cell;
  BillItem* item = [self getBillItem:indexPath];
  [billCell updateBillFareInfo:item.title
                 billFirstIcon:item.firstImage
                billSecondIcon:item.secondImage
                 billThreeIcon:item.threeImage];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  return 170;
}

- (BillItem*)getBillItem:(NSIndexPath*)indexPath {
  return [self.billItems objectAtIndex:indexPath.item];
}



@end
