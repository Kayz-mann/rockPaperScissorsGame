//
//  RPSTurn.m
//  RockPaperScissors
//
//  Created by Balogun Kayode on 21/02/2024.
//

#import "RPSTurn.h"

@interface RPSTurn()
@property (nonatomic, readwrite) Move move;

@end

@implementation RPSTurn

-(instancetype) initWithMove:(Move) move {
    self = [super init];
    if(self) {
        _move = move;
    }
    return self;
}

-(instancetype) init {
    self = [super init];
    if(self) {
        _move = [self generateMove];
    }
    return self;
}

//cpu makes a move at random with a default of Scissors
-(Move) generateMove {
    NSUInteger randomNumber = arc4random_uniform(3);
    switch (randomNumber) {
        case 0:
            return Rock;
            break;
        case 1:
            return Paper;
            break;
            
        default:
            return Scissors;
    }
}

//setting game rule to show conditions to defeat opponent
-(BOOL) defeats:(RPSTurn *)opponent{
    if((self.move == Paper && opponent.move == Rock) ||
        (self.move == Scissors && opponent.move == Paper) ||
       (self.move == Rock && opponent.move == Scissors)) {
        return true;
    }else {
        return false;
    }
}

//log out moves
-(NSString*) description {
    switch (self.move) {
        case Rock:
            return @"Rock";
            break;
            
        case Paper:
            return @"Paper";
            break;
            
        case Scissors:
            return @"Scissors";
            break;
        
        default:
            return @"Invalid";
            break;
    }
}

@end
