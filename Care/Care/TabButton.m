//
//  TabButton.m
//  Care
//
//  Created by zerozheng on 15/3/4.
//  Copyright (c) 2015年 mhand. All rights reserved.
//

#import "TabButton.h"

@implementation TabButton


-(instancetype)initWithImage:(NSString *)image andTitle:(NSString *)string
{
    if (self = [super init]) {
        [self setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
        [self setTitle:string forState:UIControlStateNormal];
        [self.titleLabel setFont:[UIFont systemFontOfSize:10]];
        [self.titleLabel setContentMode:UIViewContentModeCenter];
    }
    return self;
}

-(CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat buttonWidth = [UIScreen mainScreen].bounds.size.width/5;
    return CGRectMake((buttonWidth-30)/2.0, 5, 30, 30);
}

-(CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat buttonWidth = [UIScreen mainScreen].bounds.size.width/5;
    return CGRectMake((buttonWidth-30)/2.0, 34, contentRect.size.width, 10);
}
@end
