//
//  ViewController.m
//  iPhoneAppPractiseMVC
//
//  Created by Chris Arquelada on 4/28/14.
//  Copyright (c) 2014 Chris Arquelada. All rights reserved.
//

#import "ViewController.h"
#import "dataModel.h"
#import "pic.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet pic *imageView;

@end

@implementation ViewController
- (IBAction)showNameButton:(UIButton *)sender {
    
    //dataModel *datamodel = [[dataModel alloc]init];
    //[datamodel showName];
    
    self.label.text = [sender currentTitle];
    
    pic * view = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 250, 200)];
    [imageView addSubView:view];
    NSLog(@"%@",[sender currentTitle]);
    
}

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
