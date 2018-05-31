//
//  FLY_CoordinatingController.m
//  TouchPainter
//
//  Created by seasaw on 2018/5/8.
//  Copyright © 2018年 wangbinbin. All rights reserved.
//

#import "FLY_CoordinatingController.h"
@interface FLY_CoordinatingController()

@end


@implementation FLY_CoordinatingController

static FLY_CoordinatingController *instance = nil;



#pragma mark - Singleton Implementation
+ (FLY_CoordinatingController *)sharedInstance{
    if (instance == nil){
        @synchronized(self){
            if (instance == nil){
                instance = [[super alloc] init];
            }
        }
    }
    return instance;
}

- (id)copy{
    return [FLY_CoordinatingController sharedInstance];
}

- (id)mutableCopy{
    return [FLY_CoordinatingController sharedInstance];
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    if (instance == nil){
        @synchronized(self){
            if (instance == nil){
                instance = [super allocWithZone:zone];
            }
        }
    }
    return instance;
}


#pragma mark -
#pragma mark A method for view transitions

- (IBAction) requestViewChangeByObject:(id)object
{
    
    if ([object isKindOfClass:[UIBarButtonItem class]])
    {
        switch ([(UIBarButtonItem *)object tag])
        {
            case kButtonTagOpenPaletteView:
            {
                // load a PaletteViewController
                FLY_PaletteViewController *controller = [[FLY_PaletteViewController alloc] init];
                
                // transition to the PaletteViewController
                [self.canvasViewController presentViewController:controller animated:YES completion:nil];
                
                // set the activeViewController to
                // paletteViewController
                self.activeViewController = controller;
            }
                break;
            case kButtonTagOpenThumbnailView:
            {
                // load a ThumbnailViewController
                FLY_ThumbnailViewController *controller = [[FLY_ThumbnailViewController alloc] init];
                
                
                // transition to the ThumbnailViewController
                [self.canvasViewController presentViewController:controller animated:YES completion:nil];
                
                // set the activeViewController to
                // ThumbnailViewController
                self.activeViewController = controller;
            }
                break;
            default:
                // just go back to the main canvasViewController
                // for the other types
            {
                // The Done command is shared on every
                // view controller except the CanvasViewController
                // When the Done button is hit, it should
                // take the user back to the first page in
                // conjunction with the design
                // other objects will follow the same path
                [self.canvasViewController dismissViewControllerAnimated:YES completion:nil];
                
                // set the activeViewController back to
                // canvasViewController
                self.activeViewController = self.canvasViewController;
            }
                break;
        }
    }
    // every thing else goes to the main canvasViewController
    else
    {
        [self.canvasViewController dismissViewControllerAnimated:YES completion:nil];

        
        // set the activeViewController back to
        // canvasViewController
        self.activeViewController = self.canvasViewController;
    }
    
}

@end
