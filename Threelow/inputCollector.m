//
//  inputCollector.m
//  Threelow
//
//  Created by Susan Justice on 2016-05-05.
//  Copyright © 2016 Amer Justice. All rights reserved.
//

#import "inputCollector.h"

@implementation inputCollector
-(NSString *)inputForPrompt: (NSString *)promptString {
    char input [255];
    
    NSString *inputForPrompt;
    
    NSLog(@"%@", promptString);
    fgets(input, 255, stdin);
    inputForPrompt = [[NSString stringWithUTF8String:input] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return inputForPrompt;
    
    
}
@end
