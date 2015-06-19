//
//  AVTilesMenuView.m
//  Avira
//
//  Created by Chinh Le on 6/18/15.
//  Copyright (c) 2015 2359 Media. All rights reserved.
//

#import "AVTilesMenuView.h"

@implementation AVTilesViewData

- (instancetype)initWithImage:(UIImage *)image withHeader:(NSString *)header withDescription:(NSString *)description
{
    if (self=[super init]) {
        self.tileImage = image;
        self.tileHeader = header;
        self.tileDescription = description;
    }
    
    return self;
}

@end

@interface AVTilesMenuView()

@property (nonatomic,strong) IBOutletCollection(UIImageView) NSArray *imageViewCollection;
@property (nonatomic,strong) IBOutletCollection(UILabel) NSArray *sectionHeaderCollection;
@property (nonatomic,strong) IBOutletCollection(UILabel) NSArray *sectionDescriptionCollection;

@property (nonatomic,strong) NSArray *tiles;

@end

@implementation AVTilesMenuView

- (void)configureViewWithTiles:(NSArray *)tiles
{
    self.tiles = tiles;
    
    for (int i=0; i<[tiles count]; i++) {
        AVTilesViewData *data = tiles[i];
        
        for (UIImageView *imageView in self.imageViewCollection) {
            if (imageView.tag == i) {
                imageView.image = data.tileImage;
                break;
            }
        }
        
        for (UILabel *sectionHeader in self.sectionHeaderCollection) {
            if (sectionHeader.tag == i) {
                sectionHeader.text = data.tileHeader;
            }
        }
        
        for (UILabel *sectionDescription in self.sectionDescriptionCollection) {
            if (sectionDescription.tag == i) {
                sectionDescription.text = data.tileDescription;
            }
        }
    }
}

@end
