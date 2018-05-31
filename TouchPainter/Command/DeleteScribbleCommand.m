//
//  DeleteScribbleCommand.m
//  TouchPainter
//
//  Created by Carlo Chung on 11/8/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import "DeleteScribbleCommand.h"
#import "FLY_CoordinatingController.h"
#import "FLY_CanvasViewController.h"

@implementation DeleteScribbleCommand

- (void) execute
{
  // get a hold of the current
  // CanvasViewController from
  // the CoordinatingController
  FLY_CoordinatingController *coordinatingController = [FLY_CoordinatingController sharedInstance];
  FLY_CanvasViewController *canvasViewController = coordinatingController.canvasViewController;
  
  // create a new scribble for
  // canvasViewController
  Scribble *newScribble = [[Scribble alloc] init];
    canvasViewController.scribble = newScribble;
//  [canvasViewController setScribble:newScribble];
}


@end
