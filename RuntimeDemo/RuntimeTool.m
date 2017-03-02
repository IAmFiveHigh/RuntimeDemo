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

+ (NSArray *)fetchPropertyList:(Class)class {
    
    unsigned int count = 0;
    
    objc_property_t *propertyList = class_copyPropertyList(class, &count);
    
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:count];
    
    for (unsigned int i=0; i<count; i++) {
        const char *propertyName = property_getName(propertyList[i]);
        [array addObject:[NSString stringWithUTF8String:propertyName]];
    }
    free(propertyList);
    return array;
}

+ (NSArray *)fetchMethodList:(Class)class {
    
    unsigned int count = 0;
    
    Method *methodList = class_copyMethodList(class, &count);
    
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:count];
    
    for (unsigned int i=0; i<count; i++) {
        
        Method method = methodList[i];
        SEL methodName = method_getName(method);
        [array addObject:NSStringFromSelector(methodName)];
    }
    
    free(methodList);
    return array;
}

+ (void)addMethod:(SEL)methodSel class:(Class)class methodImp:(SEL)methodSelImp {
    
    Method method = class_getInstanceMethod(class, methodSelImp);
    IMP methodImp = method_getImplementation(method);
    const char *type = method_getTypeEncoding(method);
    class_addMethod(class, methodSel, methodImp, type);
}

@end
