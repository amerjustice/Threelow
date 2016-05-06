//
//  main.m
//  Threelow
//
//  Created by Susan Justice on 2016-05-05.
//  Copyright © 2016 Amer Justice. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Dice.h"
#import "GameController.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GameController *gameController = [[GameController alloc] init];

        inputCollector *input = [[inputCollector alloc] init];
        
        while (YES) {
            
            NSString *userInput = [input inputForPrompt:@"What Would you like to Do?"];
            
            
            if ([userInput isEqualToString:@"quit"]) {
                break;
            } else if ([userInput isEqualToString:@"roll"]) {

                [gameController rollDice];
            }
            if ([userInput isEqualToString:@"hold"]){
                NSString *usableSelection = [input inputForPrompt:@"Which Dice would you like to Hold?: "];
                [gameController holdDie:[usableSelection intValue]];
            
            }if ([userInput isEqualToString:@"reset"]){
                [gameController resetDice];
            }
            
        }
        
    }
    return 0;
}
