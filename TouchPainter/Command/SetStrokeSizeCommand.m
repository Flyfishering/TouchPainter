//
//  StrokeSizeCommand.m
//  TouchPainter
//
//  Created by Carlo Chung on 11/9/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import "SetStrokeSizeCommand.h"
#import "FLY_CoordinatingController.h"
#import "FLY_CanvasViewController.h"

@implementation SetStrokeSizeCommand

@synthesize delegate=delegate_;

- (void) execute
{
  // get the current stroke size
  // from whatever it's my delegate
  CGFloat strokeSize = 1;
    strokeSize = [delegate_ didRequestForStrokeSizeCommand:self];
//  [delegate_ command:self didRequestForStrokeSize:&strokeSize];
  
  // get a hold of the current
  // canvasViewController from
  // the coordinatingController
  // (see the Mediator pattern chapter
  // for details)
    FLY_CoordinatingController *coordinator = [FLY_CoordinatingController sharedInstance];
    FLY_CanvasViewController *controller = [coordinator canvasViewController];
  
  // assign the stroke size to
  // the canvasViewController
  [controller setStrokeSize:strokeSize];
}

@end
