//
//  ViewController.m
//  RuntimeDemo
//
//  Created by 我是五高你敢信 on 2017/3/1.
//  Copyright © 2017年 我是五高你敢信. All rights reserved.
//

#import "ViewController.h"
#import "TestClass.h"

#import "RuntimeTool.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self fetch];
    
    
}

- (void)fetch {
    NSString *className = [RuntimeTool fetchClassName:[TestClass class]];
    NSLog(@"测试的类名 = %@",className);
    
    NSArray *classIvarArray = [RuntimeTool fetchIvarList:[TestClass class]];
    NSLog(@"测试的类成员变量 = %@",classIvarArray);
    
    NSArray *classPropertyArray = [RuntimeTool fetchPropertyList:[TestClass class]];
    NSLog(@"测试的类的属性 = %@",classPropertyArray);
    
    NSArray *classMethodArray = [RuntimeTool fetchMethodList:[TestClass class]];
    NSLog(@"测试的类的实例方法 = %@",classMethodArray);
   
}

- (void)methodAdd {
    NSLog(@"methodAdd");
}

@end
