//
//  DisclosureButtonViewController.m
//  SetNav
//
//  Created by Chris Arquelada on 5/27/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "DisclosureButtonViewController.h"
#import "DisclosureDetailViewController.h"



static NSString *CellIdentifier =@"Cell";
@implementation DisclosureButtonViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Disclosure Button";
        self.rowImage = [UIImage imageNamed:@"disclosureButtonControllerIcon.png"];
        self.movies = @[@"Toy Story",@"A Bug's Life", @"Toy story 2",
                        @"Monster Inc",@"Finding Nemo",@"The Incredibles",
                        @"Cars",@"Ratattuie",@"WALL-E",@"Up",
                        @"Toy story 3",@"Cars 2",@"Brave"];
        self.detailController = [[DisclosureDetailViewController alloc]init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellIdentifier];
}



#pragma mark -Table View data source
-(NSInteger )tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.movies count];
    
}
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    cell.textLabel.text = self.movies[indexPath.row];
    
    return cell;
}

#pragma  mark -Table View delegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Hey do you see the disclosure button?"
                                                   message:@"Touch that to drill instead"
                                                  delegate:nil
                                         cancelButtonTitle:@"Wont happen again"
                                         otherButtonTitles:nil];

    [alert show];
}
-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    self.detailController.title = @"Disclosure button Pressed";
    NSString *selectedMovie =self.movies[indexPath.row];
    NSString *detailMessage= [[NSString alloc]initWithFormat:@"This is detail for %@",selectedMovie];
    self.detailController.message = detailMessage;
    self.detailController.title = selectedMovie;
    [self.navigationController pushViewController:self.detailController animated:YES];
}


@end