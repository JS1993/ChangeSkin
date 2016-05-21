//
//  ViewController.m
//  ChangeSkin
//
//  Created by  江苏 on 16/5/21.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加控件
    for (NSInteger i=0; i<9;i++) {
        
        UISwitch *sw=[[UISwitch alloc]init];
        
        CGFloat x=117+i/3*50;
        CGFloat y=100+i%3*50;
        sw.center=CGPointMake(x, y);
        
        sw.on=YES;
        
        [self.view addSubview:sw];
    }
    
}

- (IBAction)changeColor:(UISegmentedControl *)sender {
    
    //改变颜色
    switch (sender.selectedSegmentIndex) {
        case 0:
            
            [UISwitch appearance].onTintColor=[UIColor greenColor];
            
            break;
        case 1:
            
            [UISwitch appearance].onTintColor=[UIColor blueColor];
            
            break;
        case 2:
            
            [UISwitch appearance].onTintColor=[UIColor redColor];
            
            break;
        default:
            break;
    }
    
    //使用appearance属性必须在显示完控件之前
    [self.view removeFromSuperview];
    
    [[UIApplication sharedApplication].keyWindow addSubview:self.view];
}


@end
