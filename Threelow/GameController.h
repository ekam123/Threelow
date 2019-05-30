//
//  GameController.h
//  Threelow
//
//  Created by Ekam Singh Dhaliwal on 2019-05-29.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

@property NSMutableArray *diceArray;
@property NSMutableArray *heldDice;
@property NSMutableArray *lastRoundHeld; 


- (NSString *)handleUserInput:(NSString *)userInput;

- (void)holdDie:(NSString *)userSelectedValues; 

- (void)initializeDice;

- (void)diceRollValues:(NSMutableArray *)leftDice;

- (int)score; 

@end

NS_ASSUME_NONNULL_END
