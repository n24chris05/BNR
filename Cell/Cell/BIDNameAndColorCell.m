//
//  BIDNameAndColorCell.m
//  Cell
//
//  Created by Chris Arquelada on 5/7/14.
//  Copyright (c) 2014 Chris Arquelada. All rights reserved.
//

#import "BIDNameAndColorCell.h"

@implementation BIDNameAndColorCell
{
    UILabel *_nameValue;
    UILabel *_colorValue;
}



- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        CGRect nameLabelRect = CGRectMake(0, 5, 70, 15);
        
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
