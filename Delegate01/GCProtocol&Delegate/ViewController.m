//
//  ViewController.m
//  GCProtocol&Delegate
//
//  Created by chenyufeng on 1/8/15.
//  Copyright (c) 2015 chenyufengweb. All rights reserved.
//

#import "ViewController.h"
#import "ProtocolDelegate.h"
#import "ViewControllerB.h"

//第一个界面；
@interface ViewController () <ProtocolDelegate, ViewControllerBDelegate>

@end

@implementation ViewController

//因为是基于storyboard的segue来构建，当界面跳转时，自动回调该方法；
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ViewControllerB *vc = segue.destinationViewController;
    [vc setDelegate:self];

}

// 这里实现B控制器的协议方法
- (void)sendValue:(NSString *)value{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"成功" message:value delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alertView show];
}

//该方法是ProtocolDelegate中的@required方法；
- (void)execute{
    
}


- (IBAction)pressed:(id)sender {

  NSLog(@"1111");

}


@end






