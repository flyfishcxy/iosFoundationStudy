//
//  main.m
//  ARC基本概念
//
//  Created by chen on 2017/6/28.
//  Copyright © 2017年 chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

#pragma mark --ARC  永远不写retain，release和autorelease三个关键字
void test1()
{
    // ARC 默认情况下所有的指针都是强指针
    
    //Person *p = [[[Person alloc] init] autorelease];
    Person *p = [[Person alloc] init];
    //[p retain];
    //[p release];
}

#pragma mark --ARC的判断准则: 只要没有强指针指向对象, 对象就会释放
void test2()
{
    // ARC 默认情况下所有的指针都是强指针
    //默认的情况下所有的指针都是强指针
    Person *p = [[Person alloc] init];
    
    //如果不想使用强指针的话，就将指针置为nil
    p = nil;
    
}

#pragma mark --ARC 强指针和弱指针
void test3(){
    
    //强指针加关键字__strong
    __strong Person *p = [[Person alloc] init];
    
    // 弱指针
    __weak Person *p2 = p;
    p = nil; //调用dealloc函数，将强指针置为nil。
    
    // 在开发中, 千万不要使用一个弱指针保存一个刚刚创建的对象
    // 立即释放
    __weak Person *p3 = [[Person alloc] init];
    
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        test2();
        
    }
    return 0;
}
