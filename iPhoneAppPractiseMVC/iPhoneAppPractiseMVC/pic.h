//
//  pic.h
//  iPhoneAppPractiseMVC
//
//  Created by Chris Arquelada on 4/28/14.
//  Copyright (c) 2014 Chris Arquelada. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface pic : UIView
@property (nonatomic,strong) UIImageView *picView;
-(void)showPicture:(NSString *)name;
@end
