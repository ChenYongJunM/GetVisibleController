//
//  TestViewController.m
//  GetTopViewController
//
//  Created by CYJ on 16/5/6.
//  Copyright © 2016年 CYJ. All rights reserved.
//

#import "TestViewController.h"
#import "UIViewController+VisibleController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIViewController *vc = [TestViewController getVisibleController];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"2222" message:@"222222221" delegate:vc cancelButtonTitle:@"翘哦" otherButtonTitles:nil, nil];
    [alert show];
    
    UIView *bgView = [UIView new];
    bgView.frame = CGRectMake(0, 200, 200, 200);
    bgView.backgroundColor = [UIColor redColor];
    [vc.view addSubview:bgView];
    
    
    
    UIViewController *vvv = [self getCurrentVC];
}

- (UIViewController *)getCurrentVC
{
    UIViewController *result = nil;
    
    UIWindow * window = [[UIApplication sharedApplication] keyWindow];
    if (window.windowLevel != UIWindowLevelNormal)
    {
        NSArray *windows = [[UIApplication sharedApplication] windows];
        for(UIWindow * tmpWin in windows)
        {
            if (tmpWin.windowLevel == UIWindowLevelNormal)
            {
                window = tmpWin;
                break;
            }
        }
    }
    
    UIView *frontView = [[window subviews] objectAtIndex:0];
    id nextResponder = [frontView nextResponder];
    
    if ([nextResponder isKindOfClass:[UIViewController class]])
        result = nextResponder;
    else
        result = window.rootViewController;
    
    return result;
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
