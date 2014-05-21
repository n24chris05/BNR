//
//  BNRReminderViewController.m
//  HypnoNerd
//
//  Created by Chris Arquelada on 4/30/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController ()

@property (nonatomic,weak)IBOutlet UIDatePicker *datePicker;

@end


@implementation BNRReminderViewController


-(IBAction)addReminder:(id)sender
{

    NSDate *date = self.datePicker.date;
    NSLog (@"Setting a reminder for %@",date);
    
    UILocalNotification *note = [[UILocalNotification alloc]init];
    
    note.alertBody = @"Hypnotize me";
    note.fireDate = date;
    
    [[UIApplication sharedApplication]scheduledLocalNotifications];
    
}

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self)
    {
        //Set the tab item's title
        self.tabBarItem.title = @"Reminde";
        
        //Create a UIMage from a file
        //This will use HYpno@2x.png on retina display devices
        UIImage *i= [UIImage imageNamed:@"Time.png"];
        
        //put that image on the tab bar item
        self.tabBarItem.image = i;
        
        
        
    }
    return self;

}
@end
