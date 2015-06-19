//
//  AVAviraViewController.m
//  Avira
//
//  Created by Chinh Le on 6/18/15.
//  Copyright (c) 2015 2359 Media. All rights reserved.
//

#import "AVAviraViewController.h"

@interface AVAviraViewController ()

@end

@implementation AVAviraViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setup
{
    NSMutableArray *tiles = [NSMutableArray new];
    
    AVTilesViewData *data = [[AVTilesViewData alloc] initWithImage:nil withHeader:@"Life & Pulse" withDescription:@"Find your balance and enhance your well being"];
    [tiles addObject:data];
    
    data = [[AVTilesViewData alloc] initWithImage:nil withHeader:@"Soul of Wellness" withDescription:@"Avira's wellness facilities form the ..."];
    [tiles addObject:data];
    
    data = [[AVTilesViewData alloc] initWithImage:nil withHeader:@"Floor Plans" withDescription:@"Each Garden Terrace home is designed to..."];
    [tiles addObject:data];
    
    data = [[AVTilesViewData alloc] initWithImage:nil withHeader:@"Avira Map" withDescription:@"The Estate represents the residential .."];
    [tiles addObject:data];
    
    [self.tilesView configureViewWithTiles:tiles];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
