//
//  BillFareCellTableViewCell.m
//  LearnTabAndTable
//
//  Created by laura on 2018/3/17.
//  Copyright © 2018年 zm. All rights reserved.
//

#import "BillFareCellTableViewCell.h"

@interface BillFareCellTableViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *firstBill;
@property (weak, nonatomic) IBOutlet UIImageView *secondBill;
@property (weak, nonatomic) IBOutlet UIImageView *threeBill;
@property (weak, nonatomic) IBOutlet UILabel *title;

@end

@implementation BillFareCellTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)showAllBills:(id)sender {
  NSLog(@"showAll bills");
}

- (void)updateBillFareInfo:(NSString *)title
             billFirstIcon:(UIImage *)billFirstIcon
            billSecondIcon:(UIImage *)billSecondIcon
             billThreeIcon:(UIImage *)billThreeIcon {
  [self.title setText:title];
  self.firstBill.image = billFirstIcon;
  self.secondBill.image = billSecondIcon;
  self.threeBill.image = billThreeIcon;
}

@end
