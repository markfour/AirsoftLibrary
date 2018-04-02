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
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
  return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  NSString * cellName = NSStringFromClass([GunCollectionViewCell class]);
  GunCollectionViewCell *cell = [_collectionView dequeueReusableCellWithReuseIdentifier:cellName forIndexPath:indexPath];
  return cell;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
  return 1;
}

@end
