//
//  FLY_CoordinatingController.h
//  TouchPainter
//
//  Created by seasaw on 2018/5/8.
//  Copyright © 2018年 wangbinbin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FLY_CanvasViewController.h"
#import "FLY_PaletteViewController.h"
#import "FLY_ThumbnailViewController.h"

typedef NS_ENUM(NSInteger,ButtonTag) {
    kButtonTagDone,
    kButtonTagOpenPaletteView,
    kButtonTagOpenThumbnailView

};
@interface FLY_CoordinatingController : NSObject

@property (nonatomic, strong) UIViewController *activeViewController;
@property (nonatomic, strong) FLY_CanvasViewController *canvasViewController;

+ (FLY_CoordinatingController *) sharedInstance;
- (IBAction) requestViewChangeByObject:(id)object;
@end
