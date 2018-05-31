//
//  TestObject.m
//  TouchPainter
//
//  Created by seasaw on 2018/5/12.
//  Copyright © 2018年 wangbinbin. All rights reserved.
//

#import "TestObject.h"

@implementation TestObject
static TestObject *instance = nil;
+ (instancetype)shareInstance{
    if (instance == nil) {
        instance = [[TestObject alloc] init];
    }
    return instance;
}

- (IBAction)testAction:(id)sender{
    NSLog(@"%s",__func__);
}
@end
