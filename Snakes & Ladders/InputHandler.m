//
//  InputHandler.m
//  Snakes & Ladders
//
//  Created by Brian Vo on 2018-04-14.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSString *)parse {
    char inputChar[255];
    fgets(inputChar, 255, stdin);
    
    NSString* inputString = [NSString stringWithCString:inputChar encoding:NSUTF8StringEncoding];
    
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return inputString;
}

@end
