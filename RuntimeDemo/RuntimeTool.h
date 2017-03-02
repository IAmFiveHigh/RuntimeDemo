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

/**
 获取类中属性

 @param class 类
 @return 类中属性的Array
 */
+ (NSArray *)fetchPropertyList:(Class)class;


/**
 获取类中的方法

 @param class 类
 @return 类中方法的Array
 */
+ (NSArray *)fetchMethodList:(Class)class;

/**
 给类添加方法

 @param methodSel 方法名
 @param class 类
 @param methodImp 方法的实现
 */
+ (void)addMethod:(SEL)methodSel class:(Class)class methodImp:(SEL)methodSelImp;
@end
