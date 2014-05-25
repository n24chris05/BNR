//
//  ThirdViewController.h
//  NavigationLogic
//
//  Created by Chris Arquelada on 5/25/14.
//  Copyright (c) 2014 nothing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController{
    IBOutlet UILabel *bigLabel;
    NSString *selectedData;
}
@property (nonatomic,readwrite,copy)NSString *selectedData;
@property (nonatomic,strong)IBOutlet UILabel *bigLabel;
@end
