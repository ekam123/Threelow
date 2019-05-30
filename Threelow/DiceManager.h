//
//  DiceManager.h
//  Threelow
//
//  Created by Ekam Singh Dhaliwal on 2019-05-29.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

NS_ASSUME_NONNULL_BEGIN

@interface DiceManager : NSObject

@property NSMutableArray *diceArray;


- (NSString *)handleUserInput:(NSString *)userInput;

- (void)initializeDice;

- (void)diceRollValues; 

@end

NS_ASSUME_NONNULL_END
