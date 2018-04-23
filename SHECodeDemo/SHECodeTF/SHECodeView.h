//
//  SHECodeView.h
//  SHECodeDemo
//
//  Created by 天津一侨科技有限公司 on 2018/4/23.
//  Copyright © 2018年 xxx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SHECodeLabel.h"

@interface SHECodeView : UIView
{
    NSMutableArray *lbArray;
    NSInteger index;//次数
}
@property (nonatomic,strong) void (^returnBlock)(NSString *pwStr);
-(instancetype)initWithFrame:(CGRect)frame withNum:(NSInteger)num;
@end
