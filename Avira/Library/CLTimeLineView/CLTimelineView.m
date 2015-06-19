//
//  CLTimelineView.m
//  Avira
//
//  Created by Chinh Le on 6/19/15.
//  Copyright (c) 2015 2359 Media. All rights reserved.
//

#import "CLTimelineView.h"
#import "CLTimelineDateSliderView.h"

static double const defaultDateSliderViewFrameRatio = 0.35;

@interface CLTimelineView()

@property (nonatomic,strong) CLTimelineDateSliderView *dateSliderView;

@end

@implementation CLTimelineView

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self commonInit];
    }
    
    return self;
}

- (id)init
{
    if (self = [super init]) {
        [self commonInit];
    }
    
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self commonInit];
    }
    
    return self;
}

- (void)commonInit
{
    self.dateSliderView = [[CLTimelineDateSliderView alloc] init];
    [self addSubview:self.dateSliderView];
    self.dateSliderView.backgroundColor = [UIColor redColor];
    
    [self adjustDateSliderViewFrameWithRatio:defaultDateSliderViewFrameRatio];
}

#pragma mark - View setup

- (void)adjustDateSliderViewFrameWithRatio:(double)ratio
{
    CGRect dateSliderFrame = CGRectMake(0, 0, self.bounds.size.width * ratio, self.bounds.size.height);
    self.dateSliderView.frame = dateSliderFrame;
}

@end
