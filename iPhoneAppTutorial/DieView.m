//
//  DieView.m
//  iPhoneAppTutorial
//
//  Created by Chris Arquelada on 4/29/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "DieView.h"

@implementation DieView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(void)showDie:(int)num
{
    if (self.dieImage==nil)
    {
        //alloc
        self.dieImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 90, 90)];
        [self addSubview:self.dieImage];
        //put diemage into dieImmageView
        //self refers to dieView itself

    }
    //Construct the file name
    NSString *fileName = [NSString stringWithFormat:@"dice%d",num];
    
    self.dieImage.image = [UIImage imageNamed:fileName];
    
    
    
}


@end

/*

https://www.youtube.com/watch?annotation_id=annotation_919921&feature=iv&src_vid=MNcSceT36to&v=2fJfCUXK9oQ
*/