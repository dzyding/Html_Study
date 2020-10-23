//
//  CdntAction.h
//  ArchitectureOCDemo
//
//  Created by DaiMing on 2018/6/19.
//  Copyright © 2018年 Starming. All rights reserved.
//

#import <Foundation/Foundation.h>

#define CLS(cls) NSStringFromClass((cls))
#define ACT(s) NSStringFromSelector((s))

@interface CdntAction : NSObject

@property (nonatomic, strong) NSString *classMethod;
@property (nonatomic, strong) NSMutableDictionary *parameters;
// state
@property (nonatomic, strong) NSString *toState;

+ (CdntAction *)classMethod:(NSString *)classMethod;
+ (CdntAction *)classMethod:(NSString *)classMethod parameters:(NSMutableDictionary *)parameters;
+ (CdntAction *)classMethod:(NSString *)classMethod parameters:(NSMutableDictionary *)parameters toState:(NSString *)toState;

// Chain helper
+ (CdntAction *(^)(NSString *))clsmtd; // 类和方法
+ (CdntAction *(^)(NSString *))cls;    // 类
- (CdntAction *(^)(NSString *))mtd;    // 方法
- (CdntAction *(^)(NSMutableDictionary *))pa; // 可选：参数
- (CdntAction *(^)(NSString *))toSt;   // 可选：更改状态

// 能在编译期检查类和方法的方法
+ (CdntAction *(^)(Class))clas;    // 类
- (CdntAction *(^)(SEL))mted;    // 方法

@end
