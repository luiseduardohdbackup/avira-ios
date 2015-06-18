//
//  AVMenuBarViewController.m
//  Avira
//
//  Created by Chinh Le on 6/18/15.
//  Copyright (c) 2015 2359 Media. All rights reserved.
//

#import "AVMenuBarViewController.h"

const CGFloat MenuBarEnlargeAmount = 30;

@interface AVMenuBarViewController () <RMPScrollingMenuBarControllerDelegate>

@end

@implementation AVMenuBarViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self AVsetup];
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self enlargeMenuBarBy:MenuBarEnlargeAmount];
    [self putMenuBarAtBottom];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)AVsetup
{
    self.delegate = self;
    
    // Customize appearance of menu bar.
    self.view.backgroundColor = [UIColor whiteColor];
    self.menuBar.indicatorColor = [UIColor blueColor];
    //menuController.menuBar.style = RMPScrollingMenuBarStyleInfinitePaging;
    //menuController.menuBar.showsIndicator = NO;
    //menuController.menuBar.showsSeparatorLine = NO;
    
    // Set ViewControllers for menu bar controller
    NSMutableArray* viewControllers = [NSMutableArray array];
    for(int i = 0; i < 10; i++){
        UIViewController* vc = [[UIViewController alloc] init];
        vc.view.backgroundColor = [UIColor colorWithWhite:0.3+0.05*i alpha:1.0];
        [viewControllers addObject:vc];
    }
    
    [self setViewControllers:viewControllers];
}

- (void)enlargeMenuBarBy:(CGFloat)pixels
{
    [self.menuBar setFrame:CGRectMake(0, 0, self.menuBar.frame.size.width, self.menuBar.frame.size.height+pixels)];
    [self.containerView setFrame:CGRectMake(0, self.containerView.frame.origin.y+pixels, self.containerView.frame.size.width, self.containerView.frame.size.height-pixels)];
}

- (void)putMenuBarAtBottom
{
    CGFloat menuBarY = self.view.bounds.size.height - self.menuBar.frame.size.height;
    [self.menuBar setFrame:CGRectMake(0, menuBarY, self.menuBar.frame.size.width, self.menuBar.frame.size.height)];
    [self.containerView setFrame:CGRectMake(0, 0, self.containerView.frame.size.width, self.containerView.frame.size.height)];
}

#pragma mark - RMPScrollingMenuBarControllerDelegate methods
- (RMPScrollingMenuBarItem*)menuBarController:(RMPScrollingMenuBarController *)menuBarController
                           menuBarItemAtIndex:(NSInteger)index
{
    RMPScrollingMenuBarItem* item = [[RMPScrollingMenuBarItem alloc] init];
    
    item.title = [NSString stringWithFormat:@"Title %02ld oihaodiasjdioad", (long)(index+1)];
    
    // Customize appearance of menu bar item.
    UIButton* button = item.button;
    [button setTitleColor:[UIColor lightGrayColor]
                 forState:UIControlStateNormal];
    [button setTitleColor:[UIColor grayColor]
                 forState:UIControlStateDisabled];
    [button setTitleColor:[UIColor blueColor]
                 forState:UIControlStateSelected];
    return item;
}

- (void)menuBarController:(RMPScrollingMenuBarController *)menuBarController
 willSelectViewController:(UIViewController *)viewController
{
    NSLog(@"will select %@", viewController);
}

- (void)menuBarController:(RMPScrollingMenuBarController *)menuBarController
  didSelectViewController:(UIViewController *)viewController
{
    NSLog(@"did select %@", viewController);
}

- (void)menuBarController:(RMPScrollingMenuBarController *)menuBarController
  didCancelViewController:(UIViewController *)viewController
{
    NSLog(@"did cancel %@", viewController);
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
