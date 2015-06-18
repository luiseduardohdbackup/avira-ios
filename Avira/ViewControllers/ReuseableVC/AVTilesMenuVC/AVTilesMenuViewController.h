//
//  AVTilesMenuViewController.h
//  Avira
//
//  Created by Chinh Le on 6/18/15.
//  Copyright (c) 2015 2359 Media. All rights reserved.
//

#import "AVBaseViewController.h"
#import "AVTilesMenuView.h"

@interface AVTilesMenuViewController : AVBaseViewController

@property (nonatomic,strong) AVTilesMenuView *tilesView;

+ (instancetype)newInstance;

@end
