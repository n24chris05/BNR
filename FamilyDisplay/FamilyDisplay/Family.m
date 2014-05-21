//
//  Family.m
//  FamilyDisplay
//
//  Created by Chris Arquelada on 5/3/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "Family.h"

@implementation Family

+(instancetype)sharedFamily
{
    static Family *shareFamily = nil;
    
    //create shareFamily if not yet created
    if (!shareFamily){
        shareFamily = [[self alloc ]initPrivate];
    }
    
    return shareFamily;
}

-(instancetype)initPrivate
{

    self = [super init];
    
    return self;
}

-(instancetype)init
{
    @throw [NSException exceptionWithName:@"Singleton" reason:@"Use + [Family sharedFamily]" userInfo:nil];
    
    return nil;
    
}
@end
