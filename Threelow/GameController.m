//
//  GameController.m
//  Threelow
//
//  Created by Ekam Singh Dhaliwal on 2019-05-29.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _diceArray = [[NSMutableArray alloc] init];
        _heldDice = [[NSMutableArray alloc] init];
        _lastRoundHeld = [[NSMutableArray alloc] init];
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
    // before creating 5 dice, always clear the array first
    //functio here to delete array
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

- (void)diceRollValues:(NSMutableArray *)leftDice {
    for (Dice *dice in leftDice) {
        [dice rollDice];
        printf("%d ", [dice value]);
    }
    printf("\n");
}

- (void)holdDie:(NSString *)userSelectedValues {
    NSArray *indexArr = [userSelectedValues componentsSeparatedByString:@" "];
    
    for (NSString *num in indexArr) {
        [self.heldDice addObject:num];
        [self.lastRoundHeld addObject:[self.diceArray objectAtIndex:[num intValue]]];
        [self.diceArray replaceObjectAtIndex:[num intValue] withObject:@"ekam"];
    }
    NSMutableArray *tmp = [[NSMutableArray alloc] init];
    for(Dice *num in self.diceArray) {
        if ([num  isEqual: @"ekam"]) {
        continue;
        }
        [tmp addObject:num];
    }
    
    [self.diceArray removeAllObjects];
    [self.diceArray addObjectsFromArray:tmp];

    
    
    printf("[ ");
    for (Dice *num in _lastRoundHeld) {
        printf(" %d ", [num value]);
    }
    printf(" ]\n");
}



- (int)score {
    return 0; 
}

@end
