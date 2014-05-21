//
//  ViewController.m
//  iPhoneAppTutorial
//
//  Created by Chris Arquelada on 4/29/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *sumLabel;

@end

@implementation ViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.model = [[DiceDataController alloc]init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)rollButtonClicked:(id)sender
{
   
    
    //getDiceRoll model from DiceDataController
    int roll1 = [self.model getDiceRoll];
    int roll2 = [self.model getDiceRoll];
    
    NSString *sumText = [NSString stringWithFormat:@"Sum is %d", roll1 + roll2];
    
    self.sumLabel.text=sumText;
    
    
    [self.firstDie showDie:roll1];
    [self.secondDie showDie:roll2];
    
}
@end
