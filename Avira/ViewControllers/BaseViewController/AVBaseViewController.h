//
//  AVBaseViewController.h
//  Avira
//
//  Created by Chinh Le on 6/18/15.
//  Copyright (c) 2015 2359 Media. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AVBaseViewController : UIViewController

+ (instancetype)loadFromStoryboard:(NSString *)storyboardName withBundle:(NSBundle *)bundle;

@end
