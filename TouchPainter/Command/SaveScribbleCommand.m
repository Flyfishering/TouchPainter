//
//  SaveScribbleCommand.m
//  TouchPainter
//
//  Created by Carlo Chung on 10/22/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import "SaveScribbleCommand.h"
#import "ScribbleManager.h"
#import "FLY_CoordinatingController.h"
#import "UIView+UIImage.h"

@implementation SaveScribbleCommand

- (void) execute
{
  // get a hold of all necessary information
  // from an instance of CanvasViewController
  // for saving its Scribble
  FLY_CoordinatingController *coordinatingController = [FLY_CoordinatingController sharedInstance];
  FLY_CanvasViewController *canvasViewController = [coordinatingController canvasViewController];
  UIImage *canvasViewImage = [[canvasViewController canvasView] image];
  Scribble *scribble = [canvasViewController scribble];
  
  // use an instance of ScribbleManager
  // to save the scribble and its thumbnail
  ScribbleManager *scribbleManager = [[ScribbleManager alloc] init];
  [scribbleManager saveScribble:scribble thumbnail:canvasViewImage];
  
  // finally show an alertbox that says
  // after the scribble is saved
  UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Your scribble is saved"
                                                      message:nil
                                                     delegate:nil
                                            cancelButtonTitle:@"OK"
                                            otherButtonTitles:nil];
  [alertView show];
}

@end
