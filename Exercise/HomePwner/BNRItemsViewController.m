//
//  BNRItemsViewController.m
//  Homepwner
//
//  Created by Chris Arquelada on 5/1/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRItemsViewController.h"
#import "BNRItem.h"
#import "BNRItemStore.h"

@implementation BNRItemsViewController

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    /*
    //Create an instance of UITableViewCell, with default apperance
    UITableViewCell *cell  = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    */
    //Create a recycle cell;
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    
    //Set the text of the cell with the description of the item
    //that is the nth index of items, whre n = row this cell
    //Will appear on the table view
    NSArray *items =[[BNRItemStore sharedStore]allItems];
    BNRItem *item = items[indexPath.row] ;
    
    cell.textLabel.text = [item description];

    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [[[BNRItemStore sharedStore]allItems]count] ;
}


-(instancetype)init
{
    //Call the superclass's designated initializer
    self = [super initWithStyle:UITableViewStylePlain];
    
    if (self){
    
        for (int i = 0; i < 5; i++){
        
            [[BNRItemStore sharedStore]createItem];
            
            
        }
    }
    return self;

    
}

-(instancetype)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}
-(void)viewDidLoad
{
    
    /*
     “Previously, you created the table view cell explicitly, but now you are giving that control to Apple to get the benefits of the reuse identifier. For this to work, you need to tell the table view which kind of cell it should instantiate if there are no cells in the reuse pool.”
     
    */
    [super viewDidLoad];
    [self.tableView registerClass: [UITableViewCell class]forCellReuseIdentifier:@"UITableViewCell"];
    
}

@end
