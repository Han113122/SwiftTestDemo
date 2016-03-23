//
//  ViewController.m
//  TYMianShiTest
//
//  Created by Mac on 16/3/17.
//  Copyright © 2016年 TY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    for (NSInteger idx = 0; idx < 1000000; idx ++) {
//        @autoreleasepool {
            NSString *string = @"fdalfdjsalkf放大发大水范德萨范德萨范德萨发的发的撒发生发的萨芬撒地方撒旦法师范德萨范德萨发生大发等范德萨范德萨发生发生解放路的；案件发的；啦费加大了；房间大；类似法律思考；djslfk";
            NSLog(@"%p", string);
            string = [string stringByAppendingString:@"fdafdsa"];
        NSLog(@"%p", string);

            if (idx == 50000) {
                NSLog(@"%@", string);
            }
//        }
    }
    NSString *afdsa = [[NSString alloc] initWithFormat:@"%@", @"fdasfds"];
    NSLog(@"%p", afdsa);
//
    NSLog(@"%p", &afdsa);
//

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
