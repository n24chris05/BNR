//
//  Member.h
//  FamilyDisplay
//
//  Created by Chris Arquelada on 5/2/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Member : NSObject
{
    NSString *_firstName;
    int _age;
    NSDate *_dateCreated;

}
+(instancetype)randomName;

//Designated initializer for Mem
-(instancetype)initWithFamily:(NSString *)name
                          age:(int)value;
-(instancetype)initWithName:(NSString *)name;
-(void)setAge:(int ) a;

@end
