//
//  SecondViewController.h
//  NavigationLogic
//
//  Created by Chris Arquelada on 5/24/14.
//  Copyright (c) 2014 nothing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController{
    NSArray *tableViewData;
    int rowSelectedPreviously;
}

@property (nonatomic)int rowSelectedPreviously;

@end
