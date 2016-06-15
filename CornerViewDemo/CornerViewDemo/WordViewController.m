//
//  WordViewController.m
//  CornerViewDemo
//
//  Created by LiCheng on 16/6/15.
//  Copyright © 2016年 Li_Cheng. All rights reserved.
//

#import "WordViewController.h"

@interface WordViewController ()

@end

@implementation WordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpFilletView];
    
    [self setUpFilletImageView];

}

#pragma mark - 创建圆角view
-(void)setUpFilletView{
    
    UIView *view = [[UIView alloc] initWithFrame:(CGRectMake(50, 100, 200, 200))];
    view.backgroundColor = [UIColor brownColor];
    
    // 设置圆角的角度(当view的宽和高相等, 且 圆角角度为宽的一半时 为圆形)
    view.layer.cornerRadius = 20;
    
    // 设置允许裁剪
    view.layer.masksToBounds = YES;
    
    // 设置边框
    view.layer.borderWidth = 5;
    
    // 设置边框颜色
    view.layer.borderColor = [[UIColor redColor] CGColor];
    
    
    [self.view addSubview:view];
}

#pragma mark - 创建圆角imageView
-(void)setUpFilletImageView{
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:(CGRectMake(50, 350, 200, 200))];
    imageView.image = [UIImage imageNamed:@"222.jpg"];
    
    // 设置圆角的角度(当view的宽和高相等, 且 圆角角度为宽的一半时 为圆形)
    imageView.layer.cornerRadius = 100;
    
    // 设置允许裁剪
    imageView.layer.masksToBounds = YES;
    
    // 设置边框
    imageView.layer.borderWidth = 2;
    
    // 设置边框颜色
    imageView.layer.borderColor = [[UIColor redColor] CGColor];
    
    [self.view addSubview:imageView];
}








- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
