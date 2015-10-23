//
//  VDMessageViewController.m
//  VDTalk
//
//  Created by Harwyn T'an on 10/23/15.
//  Copyright © 2015 Harwyn T'an. All rights reserved.
//

#import "VDMessageViewController.h"
#import "VDMessageCell.h"

@interface VDMessageViewController ()

@end

@implementation VDMessageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.rowHeight = 60;
}

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    VDMessageCell* cell = [VDMessageCell messageCellWithTableView:tableView];
    return cell;
}

@end
