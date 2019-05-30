//
//  Dice.m
//  Threelow
//
//  Created by Ekam Singh Dhaliwal on 2019-05-29.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(void)rollDice {
    self.value = arc4random_uniform(6);
}

@end
