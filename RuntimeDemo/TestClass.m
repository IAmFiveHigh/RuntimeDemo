//
//  TestClass.m
//  RuntimeDemo
//
//  Created by 我是五高你敢信 on 2017/3/1.
//  Copyright © 2017年 我是五高你敢信. All rights reserved.
//

#import "TestClass.h"

@interface TestClass () {
    
    NSInteger var1;
}

@property (nonatomic, strong) NSMutableArray *privateProperty1;
@property (nonatomic, strong) NSDictionary *privateProperty2;

@end

@implementation TestClass

+ (void)classMethod:(NSString *)value {
    
    NSLog(@"classMethod");
}

- (void)publicMethod1:(NSString *)value1 second:(NSString *)value2 {
    
    NSLog(@"publicMethod1 value1=%@ value2=%@",value1,value2);
}

- (void)publicMethod2:(NSString *)value {
    
    NSLog(@"publicMethod2 value = %@",value);
}

@end
