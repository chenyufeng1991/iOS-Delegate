//
//  AppDelegate.m
//  GCProtocol&Delegate
//
//  Created by chenyufeng on 1/8/15.
//  Copyright (c) 2015 chenyufengweb. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {



  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  self.window.rootViewController = [[ViewController alloc] init];

  self.naviController = [[UINavigationController alloc] initWithRootViewController:self.window.rootViewController];

  [self.window addSubview:self.naviController.view];
  [self.window makeKeyAndVisible];


  return YES;
}

@end
