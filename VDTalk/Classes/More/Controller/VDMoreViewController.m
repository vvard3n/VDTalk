//
//  VDMoreViewController.m
//  VDTalk
//
//  Created by Harwyn T'an on 10/23/15.
//  Copyright © 2015 Harwyn T'an. All rights reserved.
//

#import "VDMoreViewController.h"
#import "VDProfileCell.h"
#import "VDBasicTableViewCellModel.h"
#import "VDSettingViewController.h"

@interface VDMoreViewController ()
@property (nonatomic,strong)NSArray *dataArray;
@end

@implementation VDMoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupCellModel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupCellModel {
    VDProfileCell *pcell = [VDProfileCell profileCellWithTableView:self.tableView];
    VDBasicTableViewCellModel *model00 = [VDBasicTableViewCellModel modelWithTitle:@"认证企业大礼包" iconName:@"contact_icon_mobile_contact" destinationControllerClass:[UITableViewController class]];
    VDBasicTableViewCellModel *model10 = [VDBasicTableViewCellModel modelWithTitle:@"体验站" iconName:@"contact_icon_mobile_contact" destinationControllerClass:[UITableViewController class]];
    VDBasicTableViewCellModel *model20 = [VDBasicTableViewCellModel modelWithTitle:@"1" iconName:@"contact_icon_mobile_contact" destinationControllerClass:[UITableViewController class]];
    VDBasicTableViewCellModel *model21 = [VDBasicTableViewCellModel modelWithTitle:@"2" iconName:@"contact_icon_mobile_contact" destinationControllerClass:[UITableViewController class]];
    VDBasicTableViewCellModel *model30 = [VDBasicTableViewCellModel modelWithTitle:@"设置" iconName:@"contact_icon_mobile_contact" destinationControllerClass:[VDSettingViewController class]];
    
    self.dataArray = @[@[pcell],
                            @[model00],
                            @[model10],
                            @[model20,model21],
                            @[model30]
                            ];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.dataArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.dataArray[section] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    switch (indexPath.section) {
        case 0:
            cell = [VDProfileCell profileCellWithTableView:tableView];
            break;
    
        default:
            cell = [tableView dequeueReusableCellWithIdentifier:@"BasicCell"];
            if (cell == nil) {
                cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"BasicCell"];
            }
            VDBasicTableViewCellModel *model = self.dataArray[indexPath.section][indexPath.row];
            cell.imageView.image = [UIImage imageNamed:model.icon];
            cell.textLabel.text = model.title;
            break;
    }
    
    return cell;
}
// 行高
//- (CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath {
//    if (indexPath.row == 0) {
//        return 65;
//    }
//    else {
//        return 44;
//    }
//}

// section标题
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if(section == 1)
        return @"测试";
    return nil;
}

- (void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath
{
    if (indexPath.section == 0 && indexPath.row == 0) {
        VDProfileCell *pcell = self.dataArray[0][0];
        if (pcell != nil) {
            UIViewController *view = [[UITableViewController alloc]init];
            view.title = @"%userName";
            [self.navigationController pushViewController:view animated:YES];
        }
    }
    else
    {
        VDBasicTableViewCellModel* model = self.dataArray[indexPath.section][indexPath.row];
        if (model.destinationControllerClass != nil) {
            UIViewController* view = [[model.destinationControllerClass alloc] initWithStyle:UITableViewStyleGrouped];
            view.title = model.title;
            [self.navigationController pushViewController:view animated:YES];
        }
    }
}

@end
