//
//  ZMTableFooterView.m
//  LearnTableAndCollection
//
//  Created by laura on 2018/3/18.
//  Copyright © 2018年 zm. All rights reserved.
//

#import "ZMTableFooterView.h"

@implementation ZMTableFooterView
- (void)awakeFromNib
{
  [super awakeFromNib];
  
  self.backgroundView = ({
    UIView * view = [[UIView alloc] initWithFrame:self.bounds];
    view.backgroundColor = [UIColor greenColor];
    view;
  });
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
