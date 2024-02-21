//
//  RPSGame.m
//  RockPaperScissors
//
//  Created by Balogun Kayode on 21/02/2024.
//

#import "RPSGame.h"
#import "RPSTurn.h"

@interface RPSGame()

@property (nonatomic, readwrite) RPSTurn* firstTurn;
@property (nonatomic, readwrite) RPSTurn* secondTurn;
@end

@implementation RPSGame


-(instancetype) initWithFirstTurnPlayerOne:(RPSTurn *)playersMove andPlayerTwo:(RPSTurn *)computersMove{
    self = [super init];
    
    if(self) {
        _firstTurn = playersMove;
        _secondTurn = computersMove;
    }
    return self;
}

-(RPSTurn*) winner {
    return [self.firstTurn defeats:self.secondTurn] ? self.firstTurn : self.secondTurn;
}

-(RPSTurn*) loser {
    return [self.firstTurn defeats:self.secondTurn] ? self.secondTurn : self.firstTurn;
}

-(NSString*) resultsOfGame:(RPSGame *)game {
    return [game.firstTurn defeats:game.secondTurn] ? @"You Win!": (game.firstTurn.move == game.secondTurn.move) ? @"Tie Game!" : @"You Lose!";
}

@end
