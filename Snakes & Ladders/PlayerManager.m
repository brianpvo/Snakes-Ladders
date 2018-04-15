//
//  PlayerManager.m
//  Snakes & Ladders
//
//  Created by Brian Vo on 2018-04-15.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [[NSMutableArray alloc] init];
        _currentIndex = 0;
    }
    return self;
}

-(void)createPlayers:(NSInteger) numberOfPlayers {
    for (int i = 0; i < numberOfPlayers; i++) {
        Player *player = [[Player alloc] init];
        player.name = [NSString stringWithFormat:@"Player %i", i + 1];
        [_players addObject:player];
    }
}

-(void)roll {
    [[self currentPlayer] roll];
    _currentIndex++;
    _currentIndex = _currentIndex % [_players count];
}
-(Player *)currentPlayer {
    return [_players objectAtIndex:_currentIndex];
}
@end
