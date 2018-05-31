//
//  FLY_PaletteViewController.h
//  TouchPainter
//
//  Created by seasaw on 2018/5/8.
//  Copyright © 2018年 wangbinbin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CommandBarButton.h"
#import "CommandSlider.h"
#import "SetStrokeColorCommand.h"
#import "SetStrokeSizeCommand.h"

@interface FLY_PaletteViewController : UIViewController                                   <SetStrokeColorCommandDelegate,
SetStrokeSizeCommandDelegate>

{
@private
    IBOutlet CommandSlider *redSlider_;
    IBOutlet CommandSlider *greenSlider_;
    IBOutlet CommandSlider *blueSlider_;
    IBOutlet CommandSlider *sizeSlider_;
    IBOutlet UIView *paletteView_;
}
//@property(nonatomic, strong)CommandSlider *redSlider_;
//@property(nonatomic, strong)CommandSlider *greenSlider_;
//@property(nonatomic, strong)CommandSlider *blueSlider_;
//@property(nonatomic, strong)CommandSlider *sizeSlider_;
// slider event handler
- (IBAction) onCommandSliderValueChanged:(CommandSlider *)slider;

@end
