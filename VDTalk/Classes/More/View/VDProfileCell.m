//
//  VDProfileCell.m
//  VDTalk
//
//  Created by Harwyn T'an on 10/23/15.
//  Copyright © 2015 Harwyn T'an. All rights reserved.
//

#import "VDProfileCell.h"

@implementation VDProfileCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (instancetype)profileCellWithTableView:(UITableView*)tableView
{
    VDProfileCell* cell = [tableView dequeueReusableCellWithIdentifier:@"profileCell"];
    if (nil == cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"VDProfileCell" owner:nil options:nil].lastObject;
    }
    return cell;
}

@end
