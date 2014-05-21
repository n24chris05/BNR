//
//  BIDViewController.h
//  Simple Table
//
//  Created by Chris Arquelada on 5/6/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
@property (copy, nonatomic)NSArray *dwarves;

@end
