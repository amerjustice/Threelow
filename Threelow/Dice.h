//
//  Dice.h
//  Threelow
//
//  Created by Susan Justice on 2016-05-05.
//  Copyright © 2016 Amer Justice. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property int currentValue;
@property bool isHeld;
@property (nonatomic) NSString *name;

- (instancetype)initWithName:(NSString *)name;


@end
