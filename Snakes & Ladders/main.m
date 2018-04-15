//
//  main.m
//  Snakes & Ladders
//
//  Created by Brian Vo on 2018-04-14.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *inputHandler = [[InputHandler alloc] init];
        PlayerManager *playerManager = [[PlayerManager alloc] init];
        
        while ([[playerManager players] count] == 0) {
            NSLog(@"Enter the amount of players in this game:");
            NSString *multiplayerString = [inputHandler parse];
            NSInteger multiplayerNumber = [multiplayerString intValue];
            if (multiplayerNumber) {
                [playerManager createPlayers:multiplayerNumber];
            }
            else {
                NSLog(@"Please input a valid numeric value");
            }
        }
        NSLog(@"Type \"roll\" or \"r\"");
        while ([[playerManager currentPlayer] gameOver]) {
            NSString *input = [inputHandler parse];
            if ([input isEqualToString:@"roll"] || [input isEqualToString:@"r"]) {
                [playerManager roll];
                NSLog(@"score: %@", [playerManager score]);
            }
            if (![[playerManager currentPlayer] gameOver]) {
                NSLog(@"GAME OVER: %@ made it first to 100!", [[playerManager currentPlayer] name]);
                break;
            }
        }
    }
    return 0;
}
