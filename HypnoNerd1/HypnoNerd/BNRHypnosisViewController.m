//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by Chris Arquelada on 4/30/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"
@interface BNRHypnosisViewController () <UITextFieldDelegate>

@end

@implementation BNRHypnosisViewController


-(void)loadView//inherit from vies
{
    CGRect frame = [UIScreen mainScreen].bounds;
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc]initWithFrame:frame];
    
    
    //Display textField
    CGRect textFieldRect = CGRectMake(40, 70, 240, 30);
    UITextField *textField = [[UITextField alloc]initWithFrame:textFieldRect];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.placeholder = @"Hypnotize me";
    textField.returnKeyType = UIReturnKeyDone;
    
    //There will be a warning on this line. we will discuss it shortly.
    textField.delegate = self;
    
    
    [backgroundView addSubview:textField];
    
    
    //Setting the border style on the txt field will allow us to see it more easily
    //Set it as *the* view of this view controller]
    self.view = backgroundView;
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self drawHypnoticMessage:textField.text];
    
    textField.text =@ "";
    [textField resignFirstResponder];
    return YES;

}
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self)
    {
        //Set the tab bar item's title
        self.tabBarItem.title = @"Hypnotize";
        
        //Create a UIImage from a file
        //This will use Hypno@2x.png on retina display devies
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        
        ///Put the image on the tab bar item
        self.tabBarItem.image = i;
    
    }
    
    return self;
    
    

}
-(void)drawHypnoticMessage:(NSString *)mesage
{
    for (int i =0; i <20; i++){
    
        UILabel *messageLabel = [[UILabel alloc]init];
        
        //Configure the label's color and text
        messageLabel.backgroundColor = [UIColor clearColor];
        messageLabel.textColor = [UIColor whiteColor];
        messageLabel.text = mesage;
        
        //This method resizes the label, which will be relative
        //to the text that it is displaying
        [messageLabel sizeToFit];
        
        //Get random x value that fits with the hpnosis view's width
        int width = (int)(self.view.bounds.size.width - messageLabel.bounds.size.width);
        int x = arc4random() % width;
        
        //Get random y value that fits within the hpnosis view's height
        int height = (int)(self.view.bounds.size.height - messageLabel.bounds.size.height);
        int y = arc4random() % height;
        
        //Update the label's frame
        CGRect frame = messageLabel.frame;
        frame.origin =   CGPointMake(x, y);
        messageLabel.frame = frame;
        
        
        //Add the label to the hierarchy
        [self.view addSubview:messageLabel];
    }

}
@end
