//
//  Dice.m
//  Threelow
//
//  Created by Susan Justice on 2016-05-05.
//  Copyright © 2016 Amer Justice. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        self.currentValue = 0;
        self.isHeld = NO;
        self.name = name;
    }
    return self;
}



@end
