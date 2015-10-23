//
//  VDMessageCellTableViewCell.m
//  VDTalk
//
//  Created by Harwyn T'an on 10/23/15.
//  Copyright © 2015 Harwyn T'an. All rights reserved.
//

#import "VDMessageCell.h"

@interface VDMessageCell ()

@property (weak, nonatomic) IBOutlet UIImageView* headerView;
@property (weak, nonatomic) IBOutlet UILabel* nickNameView;
@property (weak, nonatomic) IBOutlet UILabel* msgView;
@property (weak, nonatomic) IBOutlet UILabel* timeView;
@property (weak, nonatomic) IBOutlet UIButton* notifyNumView;

@end

@implementation VDMessageCell

+ (instancetype)messageCellWithTableView:(UITableView*)tableView
{
    VDMessageCell* cell = [tableView dequeueReusableCellWithIdentifier:KIdentifier];
    if (nil == cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"VDMessageCell" owner:nil options:nil].lastObject;
    }
    return cell;
}

- (void)awakeFromNib
{
    //圆形头像
    self.headerView.layer.cornerRadius = self.headerView.bounds.size.width * 0.5;
    self.notifyNumView.contentEdgeInsets = UIEdgeInsetsMake(2, 2, 2, 2);

#warning Temp code
    [self.notifyNumView setTitle:@"999+"
                        forState:UIControlStateNormal];
}

@end
