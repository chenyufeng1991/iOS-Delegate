//
//  ViewControllerB.m
//  GCProtocol&Delegate
//
//  Created by baijiawei on 1/8/15.
//  Copyright (c) 2015 1147626297@qq.com. All rights reserved.
//

#import "ViewControllerB.h"

//第二个界面；
@interface ViewControllerB ()

@property (strong, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewControllerB

- (IBAction)backAction:(id)sender{

  //界面跳转的时候调用该方法；
  [self.delegate sendValue:self.textField.text]; // 通知执行协议方法
  //返回传递消息；
  [self.navigationController popViewControllerAnimated:YES];
}

@end
