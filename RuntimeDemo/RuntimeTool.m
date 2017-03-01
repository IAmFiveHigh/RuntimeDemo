//
//  RuntimeTool.m
//  RuntimeDemo
//
//  Created by 我是五高你敢信 on 2017/3/1.
//  Copyright © 2017年 我是五高你敢信. All rights reserved.
//

#import "RuntimeTool.h"

@implementation RuntimeTool

+ (NSString *)fetchClassName:(Class)class {
    
    const char *className = class_getName(class);
    return [NSString stringWithUTF8String:className];
}

+ (NSArray *)fetchIvarList:(Class)class {
    
    unsigned int count = 0;
    Ivar *ivarList = class_copyIvarList(class, &count);
    
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:count];
    
    for (unsigned int i=0; i<count; i++) {
        NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:2];
        const char *name = ivar_getName(ivarList[i]);
        const char *ivarType = ivar_getTypeEncoding(ivarList[i]);
        dict[@"name"] = [NSString stringWithUTF8String:name];
        dict[@"type"] = [NSString stringWithUTF8String:ivarType];
        [array addObject:dict];
    }
    free(ivarList);
    return array;
}

@end
