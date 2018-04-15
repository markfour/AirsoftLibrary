//
//  GunItem.h
//  AirsoftLibrary
//
//  Created by kazumi hayashida on 2018/03/29.
//  Copyright © 2018年 kh.inc.d. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GunItem : NSObject

@property (nonatomic, copy) NSString *displayName;
@property (nonatomic, copy) NSString *gunGroup;
@property (nonatomic, copy) NSString *gunType;
@property (nonatomic, copy) NSString *powerSouce;
@property (nonatomic) NSDate *relaseData;
@property (nonatomic, copy) NSNumber *overrallLenght;
@property (nonatomic, copy) NSNumber *barrelLenght;
@property (nonatomic, copy) NSNumber *wight;
@property (nonatomic, copy) NSNumber *nominalCost;

@end
