//
//  VDViewController.m
//  VDTalk
//
//  Created by Harwyn T'an on 10/23/15.
//  Copyright © 2015 Harwyn T'an. All rights reserved.
//

#import "VDTabBarController.h"
#import "VDNavigationViewController.h"
#import "VDMessageViewController.h"
#import "vdContactViewController.h"

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
    [self setupChildNavgationControllerWithClass:[VDNavigationViewController class] tabBarImageName:@"tab_conversation" rootContorllerClass:[VDMessageViewController class] rootViewContollerTitle:@"会话"];

    //    [self setupChildNavgationControllerWithClass:[VDNavigationViewController class] tabBarImageName:@"tab_conversation" rootContorllerClass:[VDContactViewController class] rootViewContollerTitle:@"联系人"];

    UIViewController* rootV = [[VDContactViewController alloc] initWithStyle:UITableViewStyleGrouped];
    rootV.title = @"联系人";
    UINavigationController* nav = [[VDNavigationViewController alloc] initWithRootViewController:rootV];
    nav.tabBarItem.image = [UIImage imageNamed:@"tab_conversation"];
    [self addChildViewController:nav];
}

/**
 *  添加导航视图
 *
 *  @param class                   导航视图类
 *  @param name                    tabBar名称
 *  @param rootViewContorllerClass 导航视图 - rootView
 *  @param title                   rootView标题
 */
- (void)setupChildNavgationControllerWithClass:(Class) class tabBarImageName:(NSString*)name rootContorllerClass:(Class)rootViewContorllerClass rootViewContollerTitle:(NSString*)title {
    UIViewController* rootV = [[rootViewContorllerClass alloc] init];
    rootV.title = title;
    UINavigationController* nav = [[class alloc] initWithRootViewController:rootV];
    nav.tabBarItem.image = [UIImage imageNamed:name];
    [self addChildViewController:nav];
}
@end
