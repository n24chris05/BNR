//
//  BNRItemStore.h
//  Homepwner
//
//  Created by Chris Arquelada on 5/1/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;


@interface BNRItemStore : NSObject

@property(nonatomic,readonly)NSArray *allItems;

//Notice that this is a clas method prefixed with a + instead of -
+(instancetype)sharedStore;
-(BNRItem *)createItem;

@end
