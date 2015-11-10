//
//  ViewController.m
//  UIAlertControllerTest
//
//  Created by Flor, Daniel J on 11/6/15.
//  Copyright (c) 2015 ObiDan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)onButtonAlert:(id)sender {

    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil
                                                                   message:@"FOO!"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction
                      actionWithTitle:@"Bar."
                      style:UIAlertActionStyleDefault
                      handler:nil]];
    
    [self presentViewController:alert animated:YES completion:nil];

}

@end
