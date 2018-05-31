//
//  FLY_ThumbnailViewController.h
//  TouchPainter
//
//  Created by seasaw on 2018/5/8.
//  Copyright © 2018年 wangbinbin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScribbleThumbnailCell.h"
#import "ScribbleManager.h"
#import "CommandBarButton.h"

@interface FLY_ThumbnailViewController : UIViewController<UITableViewDelegate,
UITableViewDataSource>

{
@private
    IBOutlet UINavigationItem *navItem_;
    ScribbleManager *scribbleManager_;
}

@end
