//
//  GunCollectionViewCell.h
//  AirsoftLibrary
//
//  Created by kazumi hayashida on 2018/03/25.
//  Copyright © 2018年 kh.inc.d. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GunCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *displayNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *powerSouceLabel;
@property (weak, nonatomic) IBOutlet UIStackView *containerStackView;

@end
