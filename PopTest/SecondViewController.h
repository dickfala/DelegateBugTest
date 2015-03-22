//
//  SecondViewController.h
//  PopTest
//
//  Created by Chang YuanYu on 2015/3/22.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SecondViewController;
@protocol SecondViewControllerDelegate <NSObject>

@optional
-(void)passSecondVC:(SecondViewController*)vc didAddValue:(NSString*) str;
@end

@interface SecondViewController : UIViewController


@property (nonatomic,assign) id<SecondViewControllerDelegate> delegate;

- (IBAction)passValueDelegatBtnAction:(id)sender;


@end
