//
//  TabView.h
//  Care
//
//  Created by mhand on 15/3/3.
//  Copyright (c) 2015年 mhand. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol tabViewDelegate<NSObject>
-(void)selectViewControlls:(UIButton *)sender;
@end;
@interface TabView : UIView
@property(nonatomic,retain)id<tabViewDelegate>delegate;
@end
