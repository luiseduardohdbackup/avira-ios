//
//  AVTilesMenuView.m
//  Avira
//
//  Created by Chinh Le on 6/18/15.
//  Copyright (c) 2015 2359 Media. All rights reserved.
//

#import "AVTilesMenuView.h"

@interface AVTilesMenuView()

@property (nonatomic,strong) IBOutletCollection(UIImageView) NSArray *imageViewCollection;
@property (nonatomic,strong) IBOutletCollection(UILabel) NSArray *sectionHeaderCollection;
@property (nonatomic,strong) IBOutletCollection(UILabel) NSArray *sectionDescriptionCollection;

@end

@implementation AVTilesMenuView

- (void)configureViewWithImages:(NSArray *)images withHeaders:(NSArray *)headers withDescriptions:(NSArray *)descriptions
{
    for (int i=0; i<[self.imageViewCollection count]; i++) {
        UIImage *image = images[i];
        NSString *header = headers[i];
        NSString *description = descriptions[i];
        
        for (UIImageView *imageView in self.imageViewCollection) {
            if (imageView.tag == i) {
                imageView.image = image;
                break;
            }
        }
        
        for (UILabel *sectionHeader in self.sectionHeaderCollection) {
            if (sectionHeader.tag == i) {
                sectionHeader.text = header;
            }
        }
        
        for (UILabel *sectionDescription in self.sectionDescriptionCollection) {
            if (sectionDescription.tag == i) {
                sectionDescription.text = description;
            }
        }
    }
}

@end
