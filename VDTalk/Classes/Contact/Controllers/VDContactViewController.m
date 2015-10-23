//
//  VDContactViewController.m
//  VDTalk
//
//  Created by Harwyn T'an on 10/23/15.
//  Copyright © 2015 Harwyn T'an. All rights reserved.
//

#import "VDContactViewController.h"
#import "VDEnterpriseCell.h"

@interface VDContactViewController ()

@end

@implementation VDContactViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView*)tableView
{
    return 5;
}

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    UITableViewCell* cell;
    if (indexPath.row == 0) {
        cell = [VDEnterpriseCell enterpriseCellWithTableView:tableView];
    }
    else {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"123"];
        cell.imageView.image = [UIImage imageNamed:@"contact_icon_mobile_contact"];
        cell.textLabel.text = @"测试...";
    }
    return cell;
}

- (CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath
{
    if (indexPath.row == 0) {
        return 85;
    }
    else {
        return 44;
    }
}
@end
