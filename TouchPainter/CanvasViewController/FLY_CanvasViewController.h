//
//  FLY_CanvasViewController.h
//  TouchPainter
//
//  Created by seasaw on 2018/5/8.
//  Copyright © 2018年 wangbinbin. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Scribble.h"
#import "CanvasView.h"
#import "CanvasViewGenerator.h"
#import "CommandBarButton.h"
#import "NSMutableArray+Stack.h"
@interface FLY_CanvasViewController : UIViewController
{
@private
    CGPoint startPoint_;
}

@property (nonatomic, strong) CanvasView *canvasView;
@property (nonatomic, strong) Scribble *scribble;
@property (nonatomic, strong) UIColor *strokeColor;
@property (nonatomic, assign) CGFloat strokeSize;

- (void) loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator;

- (IBAction) onBarButtonHit:(id) button;
- (IBAction) onCustomBarButtonHit:(CommandBarButton *)barButton;

- (NSInvocation *) drawScribbleInvocation;
- (NSInvocation *) undrawScribbleInvocation;

- (void) executeInvocation:(NSInvocation *)invocation withUndoInvocation:(NSInvocation *)undoInvocation;
- (void) unexecuteInvocation:(NSInvocation *)invocation withRedoInvocation:(NSInvocation *)redoInvocation;
@end
