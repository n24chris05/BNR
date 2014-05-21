//
//  BIDViewController.m
//  Simple Table
//
//  Created by Chris Arquelada on 5/6/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BIDViewController.h"

@interface BIDViewController ()

@end

@implementation BIDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.dwarves = @[@"Sleepy",@"Sneezy",@"Bashful",@"Happy",@"Doc",@"Grumpy",@"Dopey", @"Throin",
    @"Dorin", @"Nori",@"Ori",@"Balin",@"Dwalin",@"Fili",@"Kili",@"Oin", @"Gloin",@"Bifur",@"Bambur"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark -TableView-- tableViewNumberOfRowsInsection
-(NSInteger)tableView:(UITableView *)tableView
numberOfRowsInSection:(NSInteger)section
{
    return [self.dwarves count];
}

#pragma mark -TableView -- tableViewCellForRowAtIndexPath
-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath
//NSIndexPath -- this is the mechanism that table views use to wrap the section
//and row intto a single object. To get the row or the section out of an NSIndexPath,
//you just access its row property or its section property, both of which return init;
{
    static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
    
    if (cell ==nil){
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:SimpleTableIdentifier];
    }
    
    
    cell.textLabel.text = self.dwarves [indexPath.row];
    return cell;

}
-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row ==0){
        return nil;
    }else {
        return indexPath;
    }
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *rowValue = self.dwarves[indexPath.row];
    NSString *message = [[NSString alloc]initWithFormat:@"You selected %@", rowValue];
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Row Selected"
                                                   message:message
                                                  delegate:nil
                                         cancelButtonTitle:@"Yes I Did"
                                         otherButtonTitles:nil];
    
    [alert show];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}
@end
