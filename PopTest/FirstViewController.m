//
//  ViewController.m
//  PopTest
//
//  Created by Chang YuanYu on 2015/3/22.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()<SecondViewControllerDelegate>
{
    SecondViewController *secondVC;
}
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    secondVC = (SecondViewController*)[mainStoryboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    secondVC.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) passSecondVC:(SecondViewController *)vc didAddValue:(NSString *)str
{
    NSLog(@"second str:%@",str);
}

- (IBAction)pushBtnAction:(id)sender {
    SecondViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    [self.navigationController pushViewController:controller animated:YES];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"segue");
    id vc = segue.destinationViewController;
        if( [vc isKindOfClass:[SecondViewController class]])
        {
            SecondViewController *secondVC = vc;
            secondVC.delegate = self;
        }
}

@end
