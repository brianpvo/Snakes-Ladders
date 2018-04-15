//
//  PlayerManager.h
//  Snakes & Ladders
//
//  Created by Brian Vo on 2018-04-15.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerManager : NSObject

@property (nonatomic) NSMutableArray *players;
@property (nonatomic) NSInteger currentIndex;
@property (nonatomic) NSString *finalScore;

-(void)createPlayers:(NSInteger) numberOfPlayers;
-(void)roll;
-(Player *)currentPlayer;
-(NSString *)score;

@end
