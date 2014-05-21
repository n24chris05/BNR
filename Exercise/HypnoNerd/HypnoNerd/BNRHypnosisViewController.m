//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by John Gallagher on 1/6/14.
//  Copyright (c) 2014 John Gallagher. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@interface BNRHypnosisViewController () <UITextFieldDelegate>
@end

@implementation BNRHypnosisViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

        // Set the tab bar item's title
        self.tabBarItem.title = @"Hypnotize";

        // Create a UIImage from a file
        // This will use Hypno@2x on retina display devices
        UIImage *image = [UIImage imageNamed:@"Hypno.png"];

        // Put that image on the tab bar item
        self.tabBarItem.image = image;
    }

    return self;
}

- (void)loadView
{
    // Create a view
    CGRect frame = [UIScreen mainScreen].bounds;
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] initWithFrame:frame];

    CGRect textFieldRect = CGRectMake(40,70, 240, 30);
    UITextField *textField = [[UITextField alloc]initWithFrame:textFieldRect];
    
    //Setting the border style on the text field will allow us to see it more easily
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.placeholder = @"Hypnotize me ";
    textField.returnKeyType = UIReturnKeyDone;
    [backgroundView addSubview:textField];
    
    //When done button pressed exit the keyboard
    //There will be a warning on this line. we will discuss it shortly.
    textField.delegate=self;
    
    // Set it as *the* view of this view controller
    self.view = backgroundView;
}

- (void)viewDidLoad
{
    // Always call the super implementation of viewDidLoad
    [super viewDidLoad];

    NSLog(@"BNRHypnosisViewController loaded its view");
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self drawHypnoticMessage:textField.text];
    
    textField.text = @"";
    [textField resignFirstResponder];
    return YES;
}



-(void)drawHypnoticMessage:(NSString *)message
{
    for (int i=0; i < 20; i++){
        
        UILabel *messageLabel = [[UILabel alloc]init];
        
        //Configure the label's color and text
        messageLabel.backgroundColor = [UIColor clearColor];
        messageLabel.textColor = [UIColor whiteColor];
        messageLabel.text = message;
        
        //This method resizes the label, which will be relative
        //to the text that it is displaying
        [messageLabel sizeToFit];
        
        //Get a random x value that fits with the hypnosis view's width
        int width = (int)(self.view.bounds.size.width -messageLabel.bounds.size.width);
        int x = arc4random() % width;
        
        //Get a random y value that fits within the hpnosis view's height
        int height = (int)(self.view.bounds.size.height) - messageLabel.bounds.size.height;
        int y = arc4random() % height;
        
        //Update hthe label's frame
        CGRect frame = messageLabel.frame;
        frame.origin = CGPointMake(x, y);
        messageLabel.frame =frame;
        
        //Add the label to the hierarchy
        [self.view addSubview:messageLabel];
        
        
        
        

        
    }

}

@end