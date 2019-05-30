//
//  DiceManager.m
//  Threelow
//
//  Created by Ekam Singh Dhaliwal on 2019-05-29.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import "DiceManager.h"

@implementation DiceManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _diceArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *)handleUserInput:(NSString *)userInput {
    
    NSLog(@"%@", userInput);
    char input[255];
    fgets(input, 255, stdin);
    NSString *theInput = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
    theInput = [theInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return theInput;
}

- (void)initializeDice {
    Dice *dice1 = [[Dice alloc] init]; 
    Dice *dice2 = [[Dice alloc] init];
    Dice *dice3 = [[Dice alloc] init];
    Dice *dice4 = [[Dice alloc] init];
    Dice *dice5 = [[Dice alloc] init];
    [self.diceArray addObject:dice1];
    [self.diceArray addObject:dice2];
    [self.diceArray addObject:dice3];
    [self.diceArray addObject:dice4];
    [self.diceArray addObject:dice5];
}

- (void)diceRollValues {
    for (Dice *dice in self.diceArray) {
        [dice rollDice];
        NSLog(@"%@", dice);
    }
}

@end
