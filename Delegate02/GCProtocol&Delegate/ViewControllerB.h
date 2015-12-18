//
//  ViewControllerB.h
//  GCProtocol&Delegate
//
//  Created by chenyufeng on 1/8/15.
//  Copyright (c) 2015 chenyufengweb. All rights reserved.
//

#import <UIKit/UIKit.h>

// 新建一个协议，协议的名字一般是由“类名+Delegate”
/**
 *  在该协议中声明的方法，在第一个界面中实现，在该界面中调用；
 */
@protocol ViewControllerBDelegate <NSObject>

@required
- (void)sendValue:(NSString *)value;

@end

@interface ViewControllerB : UIViewController

// 委托代理人，代理一般需使用弱引用(weak)
//这里的delegate要设置在.h中；
@property (weak, nonatomic) id<ViewControllerBDelegate> delegate;

@end
