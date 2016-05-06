//
//  SecondViewController.m
//  GetTopViewController
//
//  Created by CYJ on 16/5/6.
//  Copyright © 2016年 CYJ. All rights reserved.
//

#import "SecondViewController.h"
#import "UIViewController+VisibleController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIViewController *vc = [SecondViewController getVisibleController];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"2222" message:@"222222221" delegate:vc cancelButtonTitle:@"翘哦" otherButtonTitles:nil, nil];
    [alert show];
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
