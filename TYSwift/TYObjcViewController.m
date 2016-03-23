//
//  TYObjcViewController.m
//  TYSwift
//
//  Created by Mac on 16/3/18.
//  Copyright © 2016年 TY. All rights reserved.
//

#import "TYObjcViewController.h"

typedef NS_ENUM(NSInteger, TYTestType) {
    TYTestTypeOne = 0,
    TYTestTypeTwo
};

@interface TYObjcViewController ()

@property (assign, nonatomic) TYTestType testType;

@end

@implementation TYObjcViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    TYTestType *type = TYTestTypeOne;
}

@end
