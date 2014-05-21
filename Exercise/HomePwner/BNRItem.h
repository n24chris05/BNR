//
//  BNRItem.h
//  RandomItems
//
//  Created by Chris Arquelada on 4/2/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
    
    

}



+(instancetype)randomItem;


//  Designated initializer for BNRItem
-(instancetype)initWithItemName:(NSString *)name
                 valueInDollars:(int)value
                   serialNumber:(NSString *)sNumber;

-(instancetype)initWithItemName:(NSString *)name;

///////////////////////////////////////ARC
//////////////////////////////////////////arch end

@end
