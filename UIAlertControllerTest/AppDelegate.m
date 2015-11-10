//
//  AppDelegate.m
//  UIAlertControllerTest
//
//  Created by Flor, Daniel J on 11/6/15.
//  Copyright (c) 2015 ObiDan. All rights reserved.
//

#import "AppDelegate.h"
#import "UIAlertController+tintFix.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [UIAlertController tintFix];
    return YES;
}

@end
