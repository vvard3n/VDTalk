//
//  VDContactViewController.m
//  VDTalk
//
//  Created by Harwyn T'an on 10/23/15.
//  Copyright © 2015 Harwyn T'an. All rights reserved.
//

#import "VDContactViewController.h"
#import "VDBasicTableViewCellModel.h"
#import "VDEnterpriseCell.h"

@interface VDContactViewController ()

@property (strong, nonatomic) NSArray* dataArray;

@end

@implementation VDContactViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.tableView.sectionHeaderHeight = 44;

    //self.tableView.backgroundColor = [UIColor whiteColor];
    //self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;

    [self setupCellModel];
}

- (void)setupCellModel
{
    VDBasicTableViewCellModel* model10 = [VDBasicTableViewCellModel modelWithTitle:@"手机通讯录" iconName:@"contact_icon_mobile_contact" destinationControllerClass:[UITableViewController class]];
    VDBasicTableViewCellModel* model11 = [VDBasicTableViewCellModel modelWithTitle:@"钉钉好友" iconName:@"contact_icon_mobile_contact" destinationControllerClass:[UITableViewController class]];
    VDBasicTableViewCellModel* model20 = [VDBasicTableViewCellModel modelWithTitle:@"我的群组" iconName:@"contact_icon_mobile_contact" destinationControllerClass:[UITableViewController class]];
    VDBasicTableViewCellModel* model30 = [VDBasicTableViewCellModel modelWithTitle:@"特别关注" iconName:@"contact_icon_mobile_contact" destinationControllerClass:[UITableViewController class]];

    self.dataArray = @[ @[ model10, model11 ],
        @[ model20 ],
        @[ model30 ] ];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView*)tableView
{
    return self.dataArray.count;
}

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataArray[section] count];
}

- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    NSString* ID = @"BasicCell";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (nil == cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    VDBasicTableViewCellModel* model = self.dataArray[indexPath.section][indexPath.row];
    cell.imageView.image = [UIImage imageNamed:model.icon];
    cell.textLabel.text = model.title;
    return cell;
}

- (void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath
{
    VDBasicTableViewCellModel* model = self.dataArray[indexPath.section][indexPath.row];
    if (model.destinationControllerClass != nil) {
        UIViewController* view = [[model.destinationControllerClass alloc] init];
        view.title = model.title;
        [self.navigationController pushViewController:view animated:YES];
    }
}

- (UIView*)tableView:(UITableView*)tableView viewForHeaderInSection:(NSInteger)section
{
    NSLog(@"123");
    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 44)];
    view.backgroundColor = [UIColor whiteColor];
    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 25)];
    label.text = @"我是标题";
    [view addSubview:label];
    return view;
}

- (CGFloat)tableView:(UITableView*)tableView heightForHeaderInSection:(NSInteger)section
{
    return 44;
}
@end
