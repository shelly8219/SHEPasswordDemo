//
//  SHECodeView.m
//  SHECodeDemo
//
//  Created by xxx on 2018/4/23.
//  Copyright © 2018年 xxx. All rights reserved.
//

#import "SHECodeView.h"

@implementation SHECodeView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype)initWithFrame:(CGRect)frame withNum:(NSInteger)num
{
    self=[super initWithFrame:frame];
    if (self) {
        lbArray=[NSMutableArray array];
        
        UITextField *bgTf=[[UITextField alloc]initWithFrame:CGRectMake(0, 0,1 , 1)];
        bgTf.textColor=[UIColor clearColor];
        bgTf.tintColor=[UIColor clearColor];
        [bgTf addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
        bgTf.keyboardType=UIKeyboardTypeNumberPad;
        [bgTf becomeFirstResponder];
        [self addSubview:bgTf];
        
        CGFloat tfWidth=frame.size.height;
        CGFloat tfSpace=(frame.size.width-tfWidth*num)/(num+1);
        for (int i=0; i<num; i++) {
            SHECodeLabel *codeLab=[[SHECodeLabel alloc]initWithFrame:CGRectMake(tfSpace*(i+1)+tfWidth*i, 0, tfWidth, tfWidth)];
            codeLab.tag=100+i;
            [self addSubview:codeLab];
            [lbArray addObject:codeLab];
        }
    }
    return self;
}
- (void)textFieldDidChange:(UITextField *)textField
{
 
    if (textField.text.length > lbArray.count) {
        
        textField.text = [textField.text substringToIndex:lbArray.count];
        
    }
     if (textField.text.length == lbArray.count) {

         if (_returnBlock!=nil) {
             _returnBlock(textField.text);
         }
     }
    for (UILabel *pwLab in lbArray) {
        if (pwLab.tag<(100+textField.text.length)) {
            pwLab.text=@"●";
        }else{
            pwLab.text=@"";
        }
    }
    
}
@end
