//
//  ViewController.m
//  GCProtocol&Delegate
//
//  Created by baijiawei on 1/8/15.
//  Copyright (c) 2015 1147626297@qq.com. All rights reserved.
//

#import "ViewController.h"
#import "ProtocolDelegate.h"
#import "ViewControllerB.h"

//第一个界面；
@interface ViewController () <ProtocolDelegate, ViewControllerBDelegate>

@end

@implementation ViewController

// 这里实现B控制器的协议方法，在B的协议中声明；
- (void)sendValue:(NSString *)value{
  UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"成功" message:value delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
  [alertView show];
}

//ProtocolDelegate委托暂时没用到，只是做个演示；
- (void)execute{

}


- (IBAction)pressed:(id)sender {
  //如果项目本身是根据nib文件构建的，就使用下面的方式绑定delegate，并跳转；
  ViewControllerB *vb    = [[ViewControllerB alloc] initWithNibName:@"ViewControllerB" bundle:[NSBundle mainBundle]];
  vb.delegate            = self;

  [self.navigationController pushViewController:vb animated:true];

}


@end






