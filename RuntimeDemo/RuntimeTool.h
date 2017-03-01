//
//  RuntimeTool.h
//  RuntimeDemo
//
//  Created by 我是五高你敢信 on 2017/3/1.
//  Copyright © 2017年 我是五高你敢信. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface RuntimeTool : NSObject

/**
 获取类名

 @param class 类
 @return NSString类型的类名
 */
+ (NSString *)fetchClassName:(Class)class;

/**
 获取类中成员变量

 @param class 类
 @return 成员变量的Array
 */
+ (NSArray *)fetchIvarList:(Class)class;

@end
