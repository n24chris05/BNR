//
//  DieView.h
//  iPhoneAppTutorial
//
//  Created by Chris Arquelada on 4/29/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DieView : UIView

//Display image property
@property (nonatomic,strong) UIImageView *dieImage;

-(void)showDie:(int)num;

@end
