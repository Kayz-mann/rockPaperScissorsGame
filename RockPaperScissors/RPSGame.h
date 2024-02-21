//
//  RPSGame.h
//  RockPaperScissors
//
//  Created by Balogun Kayode on 21/02/2024.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"

NS_ASSUME_NONNULL_BEGIN

@interface RPSGame : NSObject

@property (nonatomic, readonly) RPSTurn* firstTurn;

@property (nonatomic, readonly) RPSTurn* secondTurn;

-(instancetype) initWithFirstTurnPlayerOne: (RPSTurn *)playersMove andPlayerTwo:(RPSTurn *)computersMove;

-(RPSTurn*) winner;
-(RPSTurn*) loser;
-(NSString*) resultsOfGame: (RPSGame*) game;

@end

NS_ASSUME_NONNULL_END
