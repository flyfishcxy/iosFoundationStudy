//
//  Person.m
//  ARC基本概念
//
//  Created by chen on 2017/6/28.
//  Copyright © 2017年 chen. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)dealloc
{
   
    
    //ARC不能写dealloc函数 [super dealloc];
    
    //ARC forbids explicit message send of 'dealloc'
    NSLog(@"%s",__func__);
    
}

@end
