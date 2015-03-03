//
//  HomeViewController.h
//  Care
//
//  Created by mhand on 15/3/3.
//  Copyright (c) 2015年 mhand. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabView.h"
@interface HomeViewController : UIViewController<UIScrollViewDelegate,UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate>
@property(nonatomic,retain)TabView *tabView;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end
