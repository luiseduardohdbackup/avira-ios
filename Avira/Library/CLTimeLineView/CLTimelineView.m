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
@property (nonatomic,strong) UITableView *tableView;

@property (nonatomic,strong) NSLayoutConstraint *dateSliderViewWidthConstraint;

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
    
    self.tableView = [[UITableView alloc] init];
    [self addSubview:self.tableView];
    self.tableView.backgroundColor = [UIColor blackColor];
    
    // Add constraints for those 2
    self.dateSliderView.translatesAutoresizingMaskIntoConstraints = NO;
    self.tableView.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSDictionary *viewsDictionary = [NSDictionary dictionaryWithObjectsAndKeys:self.dateSliderView,@"dateSliderView",self.tableView, @"tableView", nil];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-0-[dateSliderView]-0-[tableView]-0-|"
                                                                 options:0 metrics:nil views:viewsDictionary]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[dateSliderView]-0-|"
                                                                 options:0 metrics:nil views:viewsDictionary]];
    [self adjustDateSliderViewWidthWithRatio:defaultDateSliderViewFrameRatio];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
}

#pragma mark - View setup

- (void)adjustDateSliderViewWidthWithRatio:(double)ratio
{
//    CGRect dateSliderFrame = CGRectMake(0, 0, self.bounds.size.width * ratio, self.bounds.size.height);
//    self.dateSliderView.frame = dateSliderFrame;
    [self removeConstraint:self.dateSliderViewWidthConstraint];
    self.dateSliderViewWidthConstraint = [NSLayoutConstraint constraintWithItem:self.dateSliderView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeWidth multiplier:ratio constant:0];
    [self addConstraint:self.dateSliderViewWidthConstraint];
    
}

@end
