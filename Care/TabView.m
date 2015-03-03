//
//  TabView.m
//  Care
//
//  Created by mhand on 15/3/3.
//  Copyright (c) 2015年 mhand. All rights reserved.
//

#import "TabView.h"

@implementation TabView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    for (int i=0; i<5; i++) {
        UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
        
        
        button.frame=CGRectMake(i*75, 0, 75, 49);
        button.tag=i;
        [button addTarget:self action:@selector(selectedTab:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
    }

}
-(void)selectedTab:(UIButton *)sender{
    
    [self.delegate selectViewControlls:sender];
    
}


@end
