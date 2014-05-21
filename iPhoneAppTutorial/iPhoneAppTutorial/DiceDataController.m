//  Model class
//  DiceDataController.m
//  iPhoneAppTutorial
//
//  Created by Chris Arquelada on 4/29/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "DiceDataController.h"

@implementation DiceDataController

-(int)getDiceRoll
{
    int roll = (arc4random() % 6) + 1;
    
    return roll;
}

@end
