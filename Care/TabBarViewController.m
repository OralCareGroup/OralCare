//
//  TabBarViewController.m
//  Care
//
//  Created by mhand on 15/3/3.
//  Copyright (c) 2015年 mhand. All rights reserved.
//

#import "TabBarViewController.h"
#import "NavLoginViewController.h"
#define K_GETFROM_STORYBOARD(SBNAME,VCNAME)  [[UIStoryboard storyboardWithName:SBNAME bundle:[NSBundle mainBundle]]     instantiateViewControllerWithIdentifier:VCNAME]

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBar.hidden=YES;

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)selectViewControlls:(UIButton *)sender{

    if (sender.tag==4) {
        

    NavLoginViewController  *loginVC=K_GETFROM_STORYBOARD(@"Main", @"login");
    
    [self presentViewController:loginVC animated:YES completion:^{
        
        self.selectedIndex=sender.tag;
        
        
    }];
    

}
    else{
        self.selectedIndex=sender.tag;

    }
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
