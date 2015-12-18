//
//  ProtocolDelegate.h
//  GCProtocol&Delegate
//
//  Created by chenyufeng on 1/8/15.
//  Copyright (c) 2015 chenyufengweb. All rights reserved.
//

#import <Foundation/Foundation.h>

//实现一个protocol；
/**
 *  可以理解为Java中的接口interface;
 */
@protocol ProtocolDelegate <NSObject>

// 必须实现的方法
@required
- (void)execute;

// 可选实现的方法
@optional
- (void)function1;
- (void)function2;
- (void)function3;

@end
