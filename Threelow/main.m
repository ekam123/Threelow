//
//  main.m
//  Threelow
//
//  Created by Ekam Singh Dhaliwal on 2019-05-29.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Dictionary to play with for fun
//        NSDictionary *diceNumbers = @{@"1":@"⚀", @"2":@"⚁", @"0": @"⚂", @"4":@"⚃", @"5":@"⚄", @"6":@"⚅"};
        
        GameController *gameController = [[GameController alloc] init];
        [gameController initializeDice];
        NSString *userInput = [gameController handleUserInput:@"'roll' - Roll Dice\n'quit' - Exit the Game:"];
        BOOL gameON = YES;
        while (gameON) {
            if ([userInput isEqualToString:@"quit"]) {
                gameON = NO;
                continue; 
            }
            [gameController diceRollValues:[gameController diceArray]];
            NSString *diceToHold = [gameController handleUserInput:@"Which dice would you like to hold?\n Enter the index for each value."];
            [gameController holdDie:diceToHold];
            if ([[gameController diceArray] count] == 0) {
                NSLog(@"Game Over!");
                break;
            }
            NSString *moreInput = [gameController handleUserInput:@"Roll once more?(y/n)"];
            if ([moreInput isEqualToString:@"n"]) {
                gameON = NO;
            }
            
        }
        
//        NSMutableOrderedSet
        
    }
    return 0;
}
