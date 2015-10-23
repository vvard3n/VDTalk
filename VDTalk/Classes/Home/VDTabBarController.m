//
//  VDViewController.m
//  VDTalk
//
//  Created by Harwyn T'an on 10/23/15.
//  Copyright © 2015 Harwyn T'an. All rights reserved.
//

#import "VDTabBarController.h"
#import "VDMessageViewController.h"
#import "VDContactViewController.h"
#import "VDMoreViewController.h"

@interface VDTabBarController ()

@end

@implementation VDTabBarController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self loadChildControllers];
}

- (void)loadChildControllers
{
    [self setupChildNavgationControllerWithRootViewController:[[VDMessageViewController alloc] init] rootViewControllerTitle:@"会话" tabBarImageName:@"tab_conversation"];

    [self setupChildNavgationControllerWithRootViewController:[[UITableViewController alloc] init] rootViewControllerTitle:@"OA" tabBarImageName:@"tab_ding"];

    [self setupChildNavgationControllerWithRootViewController:[[UITableViewController alloc] init] rootViewControllerTitle:@"工作" tabBarImageName:@"tab_oa"];

    [self setupChildNavgationControllerWithRootViewController:[[VDContactViewController alloc] initWithStyle:UITableViewStyleGrouped] rootViewControllerTitle:@"联系人" tabBarImageName:@"tab_contact"];

    [self setupChildNavgationControllerWithRootViewController:[[UITableViewController alloc] init] rootViewControllerTitle:@"更多" tabBarImageName:@"tab_more"];
}

/**
 *  创建NavtionController，并添加rootViewController
 */
- (void)setupChildNavgationControllerWithRootViewController:(UIViewController*)rootViewController rootViewControllerTitle:(NSString*)title tabBarImageName:(NSString*)name
{
    rootViewController.title = title;
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController:rootViewController];
    nav.tabBarItem.image = [UIImage imageNamed:name];
    [self addChildViewController:nav];
}
@end
