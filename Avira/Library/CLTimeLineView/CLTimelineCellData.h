//
//  CLTimelineCellData.h
//  Avira
//
//  Created by Chinh Le on 6/19/15.
//  Copyright (c) 2015 2359 Media. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CLTimelineCellData : NSObject

@property (nonatomic,strong) NSURL *imageURL;
@property (nonatomic,copy) NSString *imageCaption;
@property (nonatomic,strong) NSDate *imageDate;

@end
