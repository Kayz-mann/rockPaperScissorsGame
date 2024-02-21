//
//  RPSController.h
//  RockPaperScissors
//
//  Created by Balogun Kayode on 21/02/2024.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"
#import "RPSGame.h"

NS_ASSUME_NONNULL_BEGIN

@interface RPSController : NSObject

@property (nonatomic) RPSGame* game;

-(void) throwDown: (Move) playerMove;
-(NSString*) messageForGame: (RPSGame*) game;

@end

NS_ASSUME_NONNULL_END
