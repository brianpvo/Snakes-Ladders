//
//  main.m
//  Snakes & Ladders
//
//  Created by Brian Vo on 2018-04-14.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *inputHandler = [[InputHandler alloc] init];
        Player *firstPlayer = [[Player alloc] init];
        
        while ([firstPlayer gameOver]) {
            NSString *input = [inputHandler parse];
            if ([input isEqualToString:@"roll"] || [input isEqualToString:@"r"]) {
                [firstPlayer roll];
            }
            if (![firstPlayer gameOver]) {
                NSLog(@"Congratulations you've made it to 100!");
                break;
            }
        }
    }
    return 0;
}
