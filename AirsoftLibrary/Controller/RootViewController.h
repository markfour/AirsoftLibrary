//
//  RootViewController.h
//  AirsoftLibrary
//
//  Created by kazumi hayashida on 2018/03/25.
//  Copyright © 2018年 kh.inc.d. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "GunCollectionViewCell.h"
#import "GunItem.h"
#import "GunPropertyView.h"

@interface RootViewController : UIViewController

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (nonatomic, copy) NSMutableArray *gunItems;

@end

