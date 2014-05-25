//
//  DescriptionViewController.m
//  OreoFamily
//
//  Created by Chris Arquelada on 5/25/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "DescriptionViewController.h"

@interface DescriptionViewController ()

@end

@implementation DescriptionViewController
@synthesize rowSelectedPreviously;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Description";
    }
    return self;
}
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableViewData count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MainCell"];
    
    if (cell ==nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MainCell"];
        
        
    }
       cell.textLabel.text =[tableViewData objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    if (rowSelectedPreviously == 0){
        tableViewData = [NSArray arrayWithObjects:@"Guwapo",@"Astig", nil];
    }else if (rowSelectedPreviously==1){
        tableViewData = [NSArray arrayWithObjects:@"Ganda",@"Sweet", nil];
    }else if (rowSelectedPreviously==2){
        tableViewData = [NSArray arrayWithObjects:@"BOOM PANES",@"Bangsit", nil];
    }else if (rowSelectedPreviously ==3){
        tableViewData = [NSArray arrayWithObjects:@"Pogi", nil];
    }else if (rowSelectedPreviously ==4){
        tableViewData = [NSArray arrayWithObjects:@"Warshack", nil];
    }else if (rowSelectedPreviously ==5){
        tableViewData = [NSArray arrayWithObjects:@"Yassi",@"GUM GUM",nil];
    }else {
        tableViewData = [NSArray arrayWithObjects:@"DUMB DUMB", nil];
    }
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] init];
    
    return view;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
