//
//  GunItem.m
//  AirsoftLibrary
//
//  Created by kazumi hayashida on 2018/03/29.
//  Copyright © 2018年 kh.inc.d. All rights reserved.
//

#import "GunItem.h"

@implementation GunItem

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
  self = [super init];
  if (!self) {
    return nil;
  }
  
  self.displayName = [dictionary valueForKey:@"displayName"];
  self.gunType = [dictionary valueForKey:@"gunType"];
  self.gunGroup = [dictionary valueForKey:@"gunGroup"];
  self.powerSouce = [dictionary valueForKey:@"powerSouce"];
  self.relaseData = [dictionary valueForKey:@"relaseData"];
  self.overrallLenght = [dictionary valueForKey:@"overrallLenght"];
  self.barrelLenght = [dictionary valueForKey:@"barrelLenght"];
  self.wight = [dictionary valueForKey:@"wight"];
  self.nominalCost = [dictionary valueForKey:@"nominalCost"];

  return self;
}

@end
