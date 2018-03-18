//
//  ViewController.m
//  LearnTableAndCollection
//
//  Created by laura on 2018/3/18.
//  Copyright © 2018年 zm. All rights reserved.
//

#import "ViewController.h"

#import "ZMTableHeaderView.h"
#import "ZMTableFooterView.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  [self.tableView registerNib:[UINib nibWithNibName:@"ZMFoodTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"food_table_view_cell"];
  [self.tableView registerNib:[UINib nibWithNibName:@"ZMTableHeaderView" bundle:nil] forHeaderFooterViewReuseIdentifier:@"ZMTableHeaderView"];
  [self.tableView registerNib:[UINib nibWithNibName:@"ZMTableFooterView" bundle:nil] forHeaderFooterViewReuseIdentifier:@"ZMTableFooterView"];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"food_table_view_cell" forIndexPath:indexPath];
  cell.backgroundColor = [UIColor grayColor];
  
  return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
  ZMTableHeaderView* headerView = (ZMTableHeaderView*)[self.tableView dequeueReusableHeaderFooterViewWithIdentifier:@"ZMTableHeaderView"];

  return headerView;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
  return 200;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
  ZMTableFooterView* footerView = (ZMTableFooterView*)[self.tableView dequeueReusableHeaderFooterViewWithIdentifier:@"ZMTableFooterView"];
  return footerView;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
  return 30;
}

@end
