//
//  AVTilesMenuViewController.m
//  Avira
//
//  Created by Chinh Le on 6/18/15.
//  Copyright (c) 2015 2359 Media. All rights reserved.
//

#import "AVTilesMenuViewController.h"
#import "Constants.h"

@interface AVTilesMenuViewController ()

@end

@implementation AVTilesMenuViewController

+ (instancetype)newInstance
{
    AVTilesMenuViewController *newSelf = [[[self class] alloc] init];
    newSelf.tilesView = [[[NSBundle mainBundle] loadNibNamed:@"AVTilesMenuView" owner:self options:nil] firstObject];
    newSelf.view = newSelf.tilesView;
    [newSelf setup];
    return newSelf;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setup
{
    
}

@end
