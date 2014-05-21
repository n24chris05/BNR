//
//  ViewController.m
//  Test2
//
//  Created by Chris Arquelada on 5/5/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "ViewController.h"



@implementation ViewController

-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    self.textField.text = nil;
}


-(IBAction)go:(id)sender
{
    [self.textField resignFirstResponder];
    NSString *s = [NSString stringWithFormat:@"Hello, %@",self.textField.text];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Finally"
                                                   message:s
                                                  delegate:self
                                         cancelButtonTitle:@"Thanks!"
                                         otherButtonTitles: nil];
    
    [alert show];
    

}

@end
