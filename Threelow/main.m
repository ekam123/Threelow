//
//  main.m
//  Threelow
//
//  Created by Ekam Singh Dhaliwal on 2019-05-29.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "DiceManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Dictionary to play with for fun
//        NSDictionary *diceNumbers = @{@"1":@"⚀", @"2":@"⚁", @"0": @"⚂", @"4":@"⚃", @"5":@"⚄", @"6":@"⚅"};
        
        DiceManager *diceManager = [[DiceManager alloc] init];
        [diceManager initializeDice];
        
        NSString *userInput = [diceManager handleUserInput:@"'roll' - Roll Dice\n'quit' - Exit the Game:"];
        BOOL gameON = YES;
        
        while (gameON) {
            if ([userInput isEqualToString:@"quit"]) {
                gameON = NO;
            }
            
            [diceManager diceRollValues];
            
            NSString *moreInput = [diceManager handleUserInput:@"Would you like to roll again?(y/n)"];
            if ([moreInput isEqualToString:@"n"]) {
                gameON = NO;
            }
            
        }
        
    }
    return 0;
}
