//
//  BNRDetailViewController.m
//  HomePwner
//
//  Created by Chris Arquelada on 5/23/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRDetailViewController.h"
#import "BNRItem.h"

@interface BNRDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *serialNumberField;
@property (weak, nonatomic) IBOutlet UITextField *valueField;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;



@end

@implementation BNRDetailViewController

-(void)viewDidAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    BNRItem *item =self.item;
    
    self.nameField.text = item.itemName;
    self.serialNumberField.text = item.serialNumber;
    self.valueField.text  =[NSString stringWithFormat:@"%d",item.valueInDollars];
    
    //you need an NSdateFormatter that will turn a date into a simple date string
    static NSDateFormatter *dateFormatter =nil;
    self.serialNumberField.keyboardType = UIKeyboardTypeNumberPad;
    self.valueField.keyboardType = UIKeyboardTypeNumberPad;
    if (!dateFormatter){
        dateFormatter = [[NSDateFormatter alloc]init];
        dateFormatter.dateStyle = NSDateFormatterMediumStyle;
        dateFormatter.timeStyle = NSDateFormatterNoStyle;
        
    }
    
    //user filtered NSDate object to set dateLabel contents
    self.dateLabel.text = [dateFormatter stringFromDate:item.dateCreated];
    
}
-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    //clear first responder
    [self.view endEditing:YES];
    
    //'save' changes to item
    BNRItem *item = self.item;
    item.itemName = self.nameField.text;
    item.serialNumber = self.serialNumberField.text;
    item.valueInDollars = [self.valueField.text intValue];
    
}
-(void)setItem:(BNRItem *)item
{
    _item =item;
    self.navigationItem.title = item.itemName;
}

@end
