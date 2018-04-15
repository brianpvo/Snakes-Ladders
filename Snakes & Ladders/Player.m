//
//  Player.m
//  Snakes & Ladders
//
//  Created by Brian Vo on 2018-04-14.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameOver = 1;
        _gameLogic = @{
                       [NSNumber numberWithInteger:4]: [NSNumber numberWithInteger:14],
                       [NSNumber numberWithInteger:9]: [NSNumber numberWithInteger:31],
                       [NSNumber numberWithInteger:20]: [NSNumber numberWithInteger:38],
                       [NSNumber numberWithInteger:28]: [NSNumber numberWithInteger:84],
                       [NSNumber numberWithInteger:40]: [NSNumber numberWithInteger:59],
                       [NSNumber numberWithInteger:51]: [NSNumber numberWithInteger:67],
                       [NSNumber numberWithInteger:63]: [NSNumber numberWithInteger:81],
                       [NSNumber numberWithInteger:17]: [NSNumber numberWithInteger:7],
                       [NSNumber numberWithInteger:64]: [NSNumber numberWithInteger:60],
                       [NSNumber numberWithInteger:89]: [NSNumber numberWithInteger:26],
                       [NSNumber numberWithInteger:95]: [NSNumber numberWithInteger:75],
                       [NSNumber numberWithInteger:99]: [NSNumber numberWithInteger:78]
                       };
    }
    return self;
}

-(void)roll {
    NSInteger roll = arc4random_uniform(6) + 1;
    NSLog(@"You rolled a %ld", roll);
    
    _currentSquare += roll;
    NSNumber *castRoll = [NSNumber numberWithInteger:_currentSquare];
    NSNumber *newSquare = [_gameLogic objectForKey:castRoll];
    
    if (newSquare != NULL) {
        _currentSquare = [newSquare integerValue];
        if (newSquare > castRoll) {
            _output = [NSString stringWithFormat:@"Stairway to heaven! You jumped from %@ to %ld", castRoll, _currentSquare];
        } else {
            _output = [NSString stringWithFormat:@"You got bit by a snake! You slid down to %ld from %@", _currentSquare, castRoll];
        }
    }
    else {
        _output = [NSString stringWithFormat:@"You landed on %ld", _currentSquare];
    }
    if (_currentSquare >= 100) {
        _gameOver = 0;
    }
    NSLog(@"%@", _output);
}

@end
