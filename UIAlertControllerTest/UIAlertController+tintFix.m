//
//  UIAlertController+tintFix.m
//  UIAlertControllerTest
//
//  Created by Flor, Daniel J on 11/6/15.
//  Copyright (c) 2015 ObiDan. All rights reserved.
//

#import "UIAlertController+tintFix.h"
#import <objc/objc-runtime.h>

@implementation UIAlertController (tintFix)

+ (void)tintFix {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Method method  = class_getInstanceMethod(self, @selector(viewWillAppear:));
        Method swizzle = class_getInstanceMethod(self, @selector(swizzledViewWillAppear:));
        method_exchangeImplementations(method, swizzle);});
}

- (void)swizzledViewWillAppear:(BOOL)animated {
    [self swizzledViewWillAppear:animated];
    for (UIView *view in self.view.subviews) {
        if (view.tintColor == self.view.tintColor) {
            //only do those that match the main view, so we don't strip the red-tint from destructive buttons.
            self.view.tintColor = [UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0];
            [view setNeedsDisplay];
        }
    }
}

@end
