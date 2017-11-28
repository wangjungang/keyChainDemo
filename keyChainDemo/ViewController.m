//
//  ViewController.m
//  keyChainDemo
//
//  Created by 王俊钢 on 2017/11/28.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

#import "ViewController.h"
#import "PassWordTool.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addpassword];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 读取密码

 @param sender
 */
- (IBAction)read:(id)sender {
    [self readclick];
}

/**
 删除密码

 @param sender
 */
- (IBAction)deleteclick:(id)sender {
    [PassWordTool deletePassWord];
}

-(void)addpassword
{
    NSString *password = @"123456";
    [PassWordTool savePassWord:password];
    
}

-(void)readclick
{
    NSString *str = [PassWordTool readPassWord];
    NSLog(@"password ====%@",str);
}

@end
