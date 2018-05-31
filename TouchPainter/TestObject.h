//
//  TestObject.h
//  TouchPainter
//
//  Created by seasaw on 2018/5/12.
//  Copyright © 2018年 wangbinbin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FLY_CanvasViewController.h"

@interface TestObject : NSObject
@property (nonatomic, strong) FLY_CanvasViewController *canvasViewController;
+ (instancetype)shareInstance;
- (IBAction)testAction:(id)sender;
@end
