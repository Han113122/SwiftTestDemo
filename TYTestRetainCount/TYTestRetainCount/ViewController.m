//
//  ViewController.m
//  TYTestRetainCount
//
//  Created by Mac on 16/4/20.
//  Copyright © 2016年 TY. All rights reserved.
//


#import "ViewController.h"

typedef BOOL (^action)(NSInteger ff, CGFloat aa);

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *aa = @"abc";
    NSLog(@"%p", aa);
    NSString *str = [aa mutableCopy];
    NSLog(@"str count %lu", [str retainCount]);
    NSLog(@"%p", str);
    NSArray *array = [NSArray arrayWithObject:str];
    [array autorelease];
        [array autorelease];
        [array autorelease];
    NSLog(@"str count %lu", [str retainCount]);
    NSLog(@"%lu", [array retainCount]);
    
    
    
}

- (BOOL)aaad:(BOOL (^)(CGFloat aa, NSString *aaa))action {
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
