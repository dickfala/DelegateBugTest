//
//  SecondViewController.m
//  PopTest
//
//  Created by Chang YuanYu on 2015/3/22.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)passValueDelegatBtnAction:(id)sender {
    if( [self.delegate respondsToSelector:@selector(passSecondVC:didAddValue:)])
    {
        [self.delegate passSecondVC:self didAddValue:@"this is string from sencond vc"];
    }
    [self.navigationController popViewControllerAnimated:YES];

}
@end
