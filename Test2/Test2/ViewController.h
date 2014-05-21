//
//  ViewController.h
//  Test2
//
//  Created by Chris Arquelada on 5/5/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>


@property (weak, nonatomic) IBOutlet UITextField *textField;



-(IBAction)go:(id)sender;
@end
