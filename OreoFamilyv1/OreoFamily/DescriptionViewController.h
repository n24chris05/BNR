//
//  DescriptionViewController.h
//  OreoFamily
//
//  Created by Chris Arquelada on 5/25/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DescriptionViewController : UIViewController{
    
    NSArray *tableViewData;
    int rowSelectedPreviously;
}
@property (nonatomic)int rowSelectedPreviously;
@end
