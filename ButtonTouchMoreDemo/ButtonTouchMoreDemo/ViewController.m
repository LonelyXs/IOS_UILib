//
//  ViewController.m
//  ButtonTouchMoreDemo
//
//  Created by 徐帅 on 2017/7/24.
//  Copyright © 2017年 徐帅. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "UIButton+TouchMore.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"21";
    UIButton *testBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    [testBtn setTimeInterval:0.5];
    [testBtn setTitle:@"clickMe" forState:UIControlStateNormal];
    [testBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [testBtn addTarget:self action:@selector(clickedMe:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testBtn];
    
}


- (void)clickedMe:(id)sender {

    NSLog(@"ckilceMe__+++++");
    SecondViewController *Vc = [[SecondViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]init];
    [nav pushViewController:Vc animated:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
