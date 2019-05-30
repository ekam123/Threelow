//
//  main.m
//  Threelow
//
//  Created by Ekam Singh Dhaliwal on 2019-05-29.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Dictionary to play with for fun
        NSDictionary *diceNumbers = @{@"1":@"⚀", @"2":@"⚁", @"3": @"⚂", @"4":@"⚃", @"5":@"⚄", @"6":@"⚅"};
        
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
        
        [dice1 rollDice];
        [dice2 rollDice];
        [dice3 rollDice];
        [dice4 rollDice];
        [dice5 rollDice];
        
        NSLog(@"%d %d %d %d %d",[dice1 value],
                                [dice2 value],
                                [dice3 value],
                                [dice4 value],
                                [dice5 value]);
        

        
        
    }
    return 0;
}
