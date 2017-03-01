//
//  TestClass.h
//  RuntimeDemo
//
//  Created by 我是五高你敢信 on 2017/3/1.
//  Copyright © 2017年 我是五高你敢信. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestClass : NSObject

@property (nonatomic, strong) NSArray *publicProperty1;
@property (nonatomic, strong) NSString *publicProperty2;

+ (void)classMethod:(NSString *)value;
- (void)publicMethod1:(NSString *)value1 second:(NSString *)value2;
- (void)publicMethod2:(NSString *)value;

@end
