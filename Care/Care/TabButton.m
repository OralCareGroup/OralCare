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
    }
    return self;
}

-(CGRect)imageRectForContentRect:(CGRect)contentRect
{
    return CGRectMake((75-30)/2.0, 5, 30, 30);
}

-(CGRect)titleRectForContentRect:(CGRect)contentRect
{
    return CGRectMake((75-30)/2.0, 34, 10, 30);
}
@end
