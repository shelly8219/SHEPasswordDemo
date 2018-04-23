//
//  ViewController.m
//  SHECodeDemo
//
//  Created by xxx on 2018/4/23.
//  Copyright © 2018年 xxx. All rights reserved.
//

#import "ViewController.h"
#import "SHECodeView.h"
#define KSW  [UIScreen mainScreen].bounds.size.width
#define KSH  [UIScreen mainScreen].bounds.size.height
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    SHECodeView *codeView=[[SHECodeView alloc]initWithFrame:CGRectMake(0, 100, KSW, 44) withNum:6];
    codeView.returnBlock=^(NSString *pwStr)
    {
        NSLog(@"%@",pwStr);
    };
    [self.view addSubview:codeView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
