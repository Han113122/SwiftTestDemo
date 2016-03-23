//
//  ViewController.m
//  TYContrastTest
//
//  Created by Mac on 16/3/18.
//  Copyright © 2016年 TY. All rights reserved.
//

#import "ViewController.h"

typedef NS_ENUM(NSInteger, TYTestEnum) {
    TYTestEnum1 = 0,
    TYTesta = 1
};

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *nameArray = @[@"fda", @"fdsa", @"jkl"];
    for (NSString *name in nameArray) {
        NSLog(@"%@", name);
    } UIButton
}

- (instancetype)init {
    if (self = [super init]) {
        self.view.backgroundColor = [UIColor redColor];
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        
    }
    return self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)test {
    NSInteger fda = 1;
    switch (fda) {
        case 0: {
        
        }
            
            break;
        case 1: {
        
        }
            break;
        default:
        {
        
        }
            break;
    }
}

@end
