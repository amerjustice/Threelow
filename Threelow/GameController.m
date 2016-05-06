//
//  GameController.m
//  Threelow
//
//  Created by Susan Justice on 2016-05-05.
//  Copyright © 2016 Amer Justice. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        Dice *dice1 = [[Dice alloc] initWithName:@"Dice 1"];
        Dice *dice2 = [[Dice alloc] initWithName:@"Dice 2"];
        Dice *dice3 = [[Dice alloc] initWithName:@"Dice 3"];
        Dice *dice4 = [[Dice alloc] initWithName:@"Dice 4"];
        Dice *dice5 = [[Dice alloc] initWithName:@"Dice 5"];
        
        self.heldDice = [[NSMutableArray alloc] init];
        
        self.dices = [[NSMutableArray alloc] init];
        [self.dices addObject:dice1];
        [self.dices addObject:dice2];
        [self.dices addObject:dice3];
        [self.dices addObject:dice4];
        [self.dices addObject:dice5];
        
    }
    return self;
}

-(void)rollDice
{
    for (Dice *dice in self.dices)
    {
        if (dice.isHeld == NO)
        {
            dice.currentValue = 1 + arc4random() % 6;
            NSLog(@"%@ value is %d", dice.name, dice.currentValue);
        }
    }
}

-(void)holdDie:(int)diceNumber
{
    Dice *diceToHold = [[Dice alloc] init];
    diceToHold = self.dices[diceNumber -1];
    if (diceToHold.isHeld == NO)
    {
        diceToHold.isHeld = YES;
        [self.dices removeObjectAtIndex:(diceNumber - 1)];
        [self.dices insertObject:diceToHold atIndex:(diceNumber-1)];
        [self.heldDice addObject:diceToHold];
    }
}

-(void)resetDice
{
    [self.heldDice removeAllObjects];
    for (Dice *dice in self.dices) {
        if (dice.isHeld == YES)
        {
            dice.isHeld = NO;
        }
    }
}

@end
