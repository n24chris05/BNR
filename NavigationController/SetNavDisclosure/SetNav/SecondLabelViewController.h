//
//  SecondLabelViewController.h
//  SetNav
//
//  Created by Chris Arquelada on 5/27/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DisclosureDetailViewController;

@interface SecondLabelViewController : UITableViewController

@property (strong,nonatomic)UIImage *rowImage;
@property (nonatomic,copy)NSArray *movies;
@end
