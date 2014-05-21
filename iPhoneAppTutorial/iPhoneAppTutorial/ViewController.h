//
//  ViewController.h
//  iPhoneAppTutorial
//
//  Created by Chris Arquelada on 4/29/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DieView.h"
#import "DiceDataController.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet DieView *firstDie;
@property (weak, nonatomic) IBOutlet DieView *secondDie;
@property (strong, nonatomic)DiceDataController *model;

@end
