//
//  main.m
//  RockPaperScissors
//
//  Created by Balogun Kayode on 21/02/2024.
//

#import <Foundation/Foundation.h>
#import "RPSController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create an instance of RPSController
        RPSController *gameController = [[RPSController alloc] init];
        
        // Make a move (Rock, Paper, or Scissors)
        [gameController throwDown:Rock];
        
        // Get the game result message
        NSString *gameResultMessage = [gameController messageForGame:gameController.game];
        
        // Print the game result message
        NSLog(@"%@", gameResultMessage);
    }
    return 0;
}
