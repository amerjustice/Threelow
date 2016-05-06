//
//  GameController.h
//  Threelow
//
//  Created by Susan Justice on 2016-05-05.
//  Copyright © 2016 Amer Justice. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property (nonatomic) NSMutableArray *heldDice;
@property (nonatomic) NSMutableArray *dices;
@property (nonatomic) Dice *dice;

- (void) rollDice;
- (void) holdDie:(int)diceNumber;
- (void) resetDice;

@end
