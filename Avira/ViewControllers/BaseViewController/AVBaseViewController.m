//
//  AVBaseViewController.m
//  Avira
//
//  Created by Chinh Le on 6/18/15.
//  Copyright (c) 2015 2359 Media. All rights reserved.
//

#import "AVBaseViewController.h"

@interface AVBaseViewController ()

@end

@implementation AVBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (instancetype)loadFromStoryboard:(NSString *)storyboardName withBundle:(NSBundle *)bundle
{
    return [[UIStoryboard storyboardWithName:storyboardName bundle:bundle ? : [NSBundle mainBundle]] instantiateViewControllerWithIdentifier:NSStringFromClass(self)];
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
