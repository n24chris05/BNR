//
//  Member.m
//  FamilyDisplay
//
//  Created by Chris Arquelada on 5/2/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "Member.h"

@implementation Member

+(instancetype)randomName
{
    //Create an immutable array of three
    NSArray *name = @[@"Chris",@"Nicol",@"Oreo",@"Feebie",@"Mizzy",@"Maro"];
    
    //Create a random number from the number of names;
    NSInteger nameIndex = arc4random() % [name count];
    
    int randomValue = arc4random() % 29;
    
    NSString *randomnameList = [NSString stringWithFormat:@"%@",[name objectAtIndex:nameIndex]];
    
    Member *newItem = [[self alloc]initWithFamily:randomnameList age:randomValue];
    
    return newItem;

}
-(instancetype)init{
    return [self initWithName:@"CHris"];
}

-(instancetype)initWithName:(NSString *)name
{
    return [self initWithName:name];
}

-(instancetype)initWithFamily:(NSString *)name
                          age:(int)value
{
    //Call the superclass's designated initialier
    self = [super init];
    
    //did it successded
    if (self){
        //Give the instance variable initial value;
        _firstName = name;
        _age = value;
    }
    return self;

}


-(void)setAge:(int)a
{
    _age = a;
    
}

-(int)age
{
    return _age;

}


@end
