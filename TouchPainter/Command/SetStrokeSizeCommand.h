//
//  StrokeSizeCommand.h
//  TouchPainter
//
//  Created by Carlo Chung on 11/9/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Command.h"

@class SetStrokeSizeCommand;

@protocol SetStrokeSizeCommandDelegate

- (CGFloat)didRequestForStrokeSizeCommand:(SetStrokeSizeCommand *)command;

@end


@interface SetStrokeSizeCommand : Command 

@property (nonatomic, assign) id <SetStrokeSizeCommandDelegate> delegate;

- (void) execute;

@end
