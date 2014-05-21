//
//  pic.m
//  iPhoneAppPractiseMVC
//
//  Created by Chris Arquelada on 4/28/14.
//  Copyright (c) 2014 Chris Arquelada. All rights reserved.
//

#import "pic.h"

@implementation pic

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
-(void)showPicture:(NSString *)name
{
    if (self.picView ==nil)
    {
        self.picView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 250, 200)];
        [self addSubview:self.picView];
        
        //[self name];
    }
    NSString *filename = [NSString stringWithFormat:@"%@.JPG",name];
    self.picView.image = [UIImage imageNamed:filename];

}
@end
