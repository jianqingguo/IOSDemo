//
//  ZMTableHeaderView.m
//  LearnTableAndCollection
//
//  Created by laura on 2018/3/18.
//  Copyright © 2018年 zm. All rights reserved.
//

#import "ZMTableHeaderView.h"

@interface ZMTableHeaderView()<UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ZMTableHeaderView

- (void)awakeFromNib
{
  [super awakeFromNib];
  
  self.backgroundView = ({
    UIView * view = [[UIView alloc] initWithFrame:self.bounds];
    view.backgroundColor = [UIColor redColor];
    view;
  });
  self.collectionView.dataSource = self;
  [self.collectionView registerNib:[UINib nibWithNibName:@"ZMFoodHeaderCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"food_header_collection_cell"];
}

//// Only override drawRect: if you perform custom drawing.
//// An empty implementation adversely affects performance during animation.
//- (void)drawRect:(CGRect)rect {
//  [super drawRect:rect];
//  [[UIColor blackColor] setFill];
//  UIRectFill(rect);
//}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
  return 8;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  UICollectionViewCell* cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"food_header_collection_cell" forIndexPath:indexPath];
  return cell;
}

@end
