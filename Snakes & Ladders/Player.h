//
//  Player.h
//  Snakes & Ladders
//
//  Created by Brian Vo on 2018-04-14.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) NSInteger currentSquare;
@property (nonatomic) NSDictionary *gameLogic;
@property (nonatomic) NSString *output;
@property (nonatomic) BOOL gameOver;

-(void)roll;

@end
