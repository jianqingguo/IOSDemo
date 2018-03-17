//
//  BillFareViewController.m
//  LearnTabAndTable
//
//  Created by laura on 2018/3/17.
//  Copyright © 2018年 zm. All rights reserved.
//

#import "BillFareViewController.h"

@interface BillFareViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *billType;
@property (weak, nonatomic) IBOutlet UITableView *billSubType;
@property (nonatomic, strong) NSMutableArray* billTypeItems;
@property (nonatomic, strong) NSMutableArray* billSubTypeItems;
@end

@implementation BillFareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
  self.title = @"菜谱";
  self.billTypeItems = [[NSMutableArray alloc] init];
  self.billSubTypeItems = [[NSMutableArray alloc] init];
  for (int i = 0; i < 30; i++) {
    NSString* billStr = [NSString stringWithFormat:@"菜谱 %d", i];
    NSString* billSubStr = [NSString stringWithFormat:@"子菜单 :%d", i];
    [self.billTypeItems addObject:billStr];
    [self.billSubTypeItems addObject:billSubStr];
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


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  if ([tableView isEqual:self.billType]) {
    return self.billTypeItems.count;
  } else if ([tableView isEqual:self.billSubType]) {
    return self.billSubTypeItems.count;
  }
  return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"bill_type_cell"];
  //使用重用机制，IDENTIFIER作为重用机制查找的标识，tableview查找可用cell时通过IDENTIFIER检索，如果有则cell不为nil
  if (cell == nil) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"bill_type_cell"];//代码创建的cell需要使用该初始化方法
  }
  return cell;
}


- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
  
  NSString* billStr = @"";
  if ([tableView isEqual:self.billType]) {
    billStr = [self.billTypeItems objectAtIndex:indexPath.item];
  } else if ([tableView isEqual:self.billSubType]) {
    billStr = [self.billSubTypeItems objectAtIndex:indexPath.item];
  }
  [cell.textLabel setText:billStr];
}

@end
