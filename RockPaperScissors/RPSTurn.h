//
//  RPSTurn.h
//  RockPaperScissors
//
//  Created by Balogun Kayode on 21/02/2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, Move) {
    Rock,
    Paper,
    Scissors
};


@interface RPSTurn : NSObject

@property (nonatomic, readonly) Move move;
-(instancetype) initWithMove: (Move) move;
//generateMove randomly generates a move (Rock, Paper, or Scissors).
-(Move) generateMove;

// checks if the current RPSTurn instance defeats the opponent's RPSTurn
-(BOOL) defeats: (RPSTurn*) opponent;
//returns a string representation of the RPSTurn
-(NSString *) description;

@end

NS_ASSUME_NONNULL_END
