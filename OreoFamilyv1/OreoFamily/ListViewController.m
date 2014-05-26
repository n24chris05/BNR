//
//  ListViewController.m
//  OreoFamily
//
//  Created by Chris Arquelada on 5/25/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "ListViewController.h"
#import "DescriptionViewController.h"

@interface ListViewController ()

@end

@implementation ListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        tableViewData = [[NSArray alloc]initWithObjects:@"Oreo",@"Feebie",@"Mizzy",@"Feero",@"Zio",@"Yassi",@"Maru", nil];
        UINavigationItem *navItem = self.navigationItem;
        navItem.title = @"Family";
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
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DescriptionViewController *secondView = [[DescriptionViewController alloc]initWithNibName:@"DescriptionViewController" bundle:nil];
    secondView.rowSelectedPreviously = indexPath.row;

    [self.navigationController pushViewController:secondView animated:YES];
    
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
