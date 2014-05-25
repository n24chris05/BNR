//
//  SecondViewController.m
//  NavigationLogic
//
//  Created by Chris Arquelada on 5/24/14.
//  Copyright (c) 2014 nothing. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize rowSelectedPreviously;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Second View";
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
-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *selected = [tableViewData objectAtIndex:indexPath.row];
    ThirdViewController *thirdView = [[ThirdViewController alloc]initWithNibName:@"ThirdViewController" bundle:nil];
    thirdView.selectedData  =selected;
    [self.navigationController pushViewController:thirdView animated:YES];
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (rowSelectedPreviously ==0){
        tableViewData = [NSArray arrayWithObjects:@"0",@"1" ,nil];
    }else if (rowSelectedPreviously ==1){
        tableViewData = [NSArray arrayWithObjects:@"2",@"3", nil];
    }else {
        tableViewData = [NSArray arrayWithObjects:@"4",@"5", nil];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
