//
//  DisclosureDetailViewController.h
//  SetNav
//
//  Created by Chris Arquelada on 5/27/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DisclosureDetailViewController : UIViewController

@property (nonatomic,readonly,weak) UILabel *label;
@property (nonatomic,copy) NSString *message;

@end
