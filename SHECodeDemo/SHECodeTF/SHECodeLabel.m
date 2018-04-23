//
//  SHECodeLabel.m
//  SHECodeDemo
//
//  Created by xxx on 2018/4/23.
//  Copyright © 2018年 xxx. All rights reserved.
//

#import "SHECodeLabel.h"

@implementation SHECodeLabel

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if (self) {
        self.layer.borderWidth=1.0;
        self.layer.borderColor=[UIColor blueColor].CGColor;
        self.layer.cornerRadius=2.0;
        self.clipsToBounds=YES;
        self.textColor=[UIColor blackColor];
        self.textAlignment=NSTextAlignmentCenter;
    }
    return self;
}
@end
