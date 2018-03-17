//
//  BillFareCellTableViewCell.h
//  LearnTabAndTable
//
//  Created by laura on 2018/3/17.
//  Copyright © 2018年 zm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BillFareCellTableViewCell : UITableViewCell
- (void)updateBillFareInfo:(NSString*)title
             billFirstIcon:(UIImage*)billFirstIcon
            billSecondIcon:(UIImage*)billSecondIcon
             billThreeIcon:(UIImage*)billThreeIcon;

@end
