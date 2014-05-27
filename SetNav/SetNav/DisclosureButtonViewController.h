//
//  DisclosureButtonViewController.h
//  SetNav
//
//  Created by Chris Arquelada on 5/27/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "SecondLabelViewController.h"

@class DisclosureDetailViewController;

@interface DisclosureButtonViewController : SecondLabelViewController

@property (nonatomic,copy) NSArray *movies;
@property (strong,nonatomic) DisclosureDetailViewController *detailController;
@end
