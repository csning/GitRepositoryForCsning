//
//  ViewController.m
//  Demo_GItHub_test
//
//  Created by csning－pc on 15/8/25.
//  Copyright (c) 2015年 csning. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"this is a test");
    NSLog(@"this is the second test");
    [[NSNotificationCenter  defaultCenter] addObserver:self selector:@selector(程序猿:) name:UIApplicationDidEnterBackgroundNotification object:nil];
    
}
- (void)程序猿:(NSString *)fast {
    NSLog(@"%@",[NSRunLoop currentRunLoop]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
