//
//  RootViewController.m
//  AirsoftLibrary
//
//  Created by kazumi hayashida on 2018/03/25.
//  Copyright © 2018年 kh.inc.d. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  NSString *cellName = NSStringFromClass([GunCollectionViewCell class]);
  [_collectionView registerNib:[UINib nibWithNibName:cellName bundle:nil] forCellWithReuseIdentifier:cellName];
  
  _gunItems = self.fetchGunItemsDummy;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
  return _gunItems.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  NSString * cellName = NSStringFromClass([GunCollectionViewCell class]);
  GunCollectionViewCell *cell = [_collectionView dequeueReusableCellWithReuseIdentifier:cellName forIndexPath:indexPath];
  GunItem *gunItem = _gunItems[indexPath.row];
  cell.displayNameLabel.text = gunItem.displayName;
  
  GunProperty2WayView *gunProertyView = [NSBundle.mainBundle loadNibNamed:@"GunProperty2WayView" owner:self options:nil][0];
  gunProertyView.propertyLabel.text = @"パワーソース";
  gunProertyView.textLabel.text = gunItem.powerSouce;
  [cell.containerStackView addArrangedSubview:gunProertyView];
  
  return cell;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
  return 1;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
//  GunCollectionViewCell *cell = (GunCollectionViewCell *)[_collectionView cellForItemAtIndexPath:indexPath];
//  CGSize stackViewsize = [cell.containerStackView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
//  NSLog(@"StackView height %f", stackViewsize.height);
  
  CGFloat width = collectionView.frame.size.width;
  // TODO オートレイアウトを使用する　できるか?
  CGFloat height = 240;
  CGSize size = CGSizeMake(width, height);
  return size;
}

- (NSMutableArray *)fetchGunItemsDummy {
  NSMutableArray *gunItems = [NSMutableArray array];
  
  NSError *error = nil;
  NSString *filePath = [NSBundle.mainBundle pathForResource:@"GunData" ofType:@"json"];
  NSData *data = [NSData dataWithContentsOfFile:filePath];
  
  NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
  
  if (error) {
    NSLog(@"error");
    return nil;
  }
  
  NSArray *items = json[@"items"];
  
  for (int i = 0; i < items.count; i++) {
    NSDictionary *item = items[i];
    
    GunItem *gunItem = [[GunItem alloc] initWithDictionary:item];
    [gunItems addObject:gunItem];
  }
  
  return gunItems;
}

@end
