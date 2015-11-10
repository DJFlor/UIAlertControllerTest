//
//  UIAlertController+tintFix.h
//  UIAlertControllerTest
//
//  Created by Flor, Daniel J on 11/6/15.
//  Copyright (c) 2015 ObiDan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (tintFix)

+ (void)tintFix;

- (void)swizzledViewWillAppear:(BOOL)animated;

@end
