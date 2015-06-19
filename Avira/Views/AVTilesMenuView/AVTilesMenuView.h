//
//  AVTilesMenuView.h
//  Avira
//
//  Created by Chinh Le on 6/18/15.
//  Copyright (c) 2015 2359 Media. All rights reserved.
//

#import "AVBaseView.h"

@interface AVTilesViewData : NSObject

@property (nonatomic,strong) UIImage *tileImage;
@property (nonatomic,copy) NSString *tileHeader;
@property (nonatomic,copy) NSString *tileDescription;

- (instancetype)initWithImage:(UIImage *)image withHeader:(NSString *)header withDescription:(NSString *)description;

@end

@interface AVTilesMenuView : AVBaseView

- (void)configureViewWithTiles:(NSArray *)tiles;

@end
