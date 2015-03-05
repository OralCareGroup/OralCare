//
//  TabView.m
//  Care
//
//  Created by mhand on 15/3/3.
//  Copyright (c) 2015年 mhand. All rights reserved.
//

#define KColor [[UIColor alloc] initWithRed:(arc4random()%256/256.0) green:(arc4random()%256/256.0) blue:(arc4random()%256/256.0) alpha:(arc4random()%256/256.0)]

#import "TabView.h"
#import "TabButton.h"

@implementation TabView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGFloat buttonWidth = [UIScreen mainScreen].bounds.size.width/5;
    

    
    NSArray *normalimages =@[@"image_HomeIcon",@"image_Assistant",@"image_FAQIcon",@"image_FAQIcon",@"image_MoreIcon"];
    
    NSArray *seletedimages = @[@"image_HomeIconSelected",@"image_AssistantSel",@"image_FAQIconSelected",@"image_FAQIconSelected",@"image_MoreIconSelected"];
    NSArray *itemName = @[@"主页",@"消息",@"圈子",@"地图",@"我的",];
    for (int i=0; i<5; i++) {
        TabButton *tabButton=[[TabButton alloc] initWithImage:normalimages[i] andTitle:itemName[i]];
        [tabButton setBackgroundColor:KColor];
        [tabButton setImage:[UIImage imageNamed:seletedimages[i]] forState:UIControlStateSelected];
        tabButton.frame=CGRectMake(i*buttonWidth, 0, buttonWidth, 49);
        tabButton.tag=i;
        [tabButton addTarget:self action:@selector(selectedTab:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:tabButton];
    }

}
-(void)selectedTab:(UIButton *)sender{
    
    [self.delegate selectViewControlls:sender];
    
}


@end
