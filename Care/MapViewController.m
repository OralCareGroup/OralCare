//
//  MapViewController.m
//  Care
//
//  Created by mhand on 15/3/3.
//  Copyright (c) 2015年 mhand. All rights reserved.
//

#import "MapViewController.h"
#import "TabBarViewController.h"
#define KSCREEM_HEIGHT     [UIScreen mainScreen].bounds.size.height
#define KSCREEM_WIDTH      [UIScreen mainScreen].bounds.size.width
@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initNewTabbar];

    // Do any additional setup after loading the view.
}-(void)initNewTabbar{
    
    self.tabView=[[TabView alloc]initWithFrame:CGRectMake(0,KSCREEM_HEIGHT-49,KSCREEM_WIDTH, 49)];
    self.tabView.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"tabbar_background.png"]];
    [self.view addSubview:self.tabView];
    TabBarViewController *myTab=(TabBarViewController *)self.tabBarController;
    self.tabView.delegate=myTab;
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
