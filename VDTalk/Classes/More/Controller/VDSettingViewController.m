//
//  VDSettingViewController.m
//  VDTalk
//
//  Created by Haijun on 10/24/15.
//  Copyright © 2015 Harwyn T'an. All rights reserved.
//

#import "VDSettingViewController.h"
#import "VDBasicTableViewCellModel.h"

@interface VDSettingViewController ()
@property (nonatomic,strong)NSArray *dataArray;
@end

@implementation VDSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupCellModel];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupCellModel {
    
    VDBasicTableViewCellModel *model00 = [VDBasicTableViewCellModel modelWithTitle:@"账号与安全" iconName:@"contact_icon_mobile_contact" destinationControllerClass:[UITableViewController class]];
    VDBasicTableViewCellModel *model10 = [VDBasicTableViewCellModel modelWithTitle:@"新消息通知" iconName:@"contact_icon_mobile_contact" destinationControllerClass:[UITableViewController class]];
    VDBasicTableViewCellModel *model11 = [VDBasicTableViewCellModel modelWithTitle:@"隐私" iconName:@"contact_icon_mobile_contact" destinationControllerClass:[UITableViewController class]];
    VDBasicTableViewCellModel *model12 = [VDBasicTableViewCellModel modelWithTitle:@"通用" iconName:@"contact_icon_mobile_contact" destinationControllerClass:[UITableViewController class]];
    VDBasicTableViewCellModel *model20 = [VDBasicTableViewCellModel modelWithTitle:@"关于" iconName:@"contact_icon_mobile_contact" destinationControllerClass:[UITableViewController class]];
    VDBasicTableViewCellModel *model30 = [VDBasicTableViewCellModel modelWithTitle:@"退出登录" iconName:@"contact_icon_mobile_contact" destinationControllerClass:[UITableViewController class]];
    self.dataArray = @[
                       @[model00],
                       @[model10,model11,model12],
                       @[model20],
                       @[model30]
                       ];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.dataArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.dataArray[section] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    // = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];

    // Configure the cell...
    cell = [tableView dequeueReusableCellWithIdentifier:@"BasicCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"BasicCell"];
    }
    VDBasicTableViewCellModel *model = self.dataArray[indexPath.section][indexPath.row];
    cell.imageView.image = [UIImage imageNamed:model.icon];
    cell.textLabel.text = model.title;
    
    return cell;
}

- (void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath
{
        VDBasicTableViewCellModel* model = self.dataArray[indexPath.section][indexPath.row];
        if (model.destinationControllerClass != nil) {
            UIViewController* view = [[model.destinationControllerClass alloc] initWithStyle:UITableViewStyleGrouped];
            view.title = model.title;
            [self.navigationController pushViewController:view animated:YES];
        }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
