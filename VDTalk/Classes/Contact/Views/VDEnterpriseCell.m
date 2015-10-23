//
//  VDEnterpriseCell.m
//  VDTalk
//
//  Created by Harwyn T'an on 10/23/15.
//  Copyright © 2015 Harwyn T'an. All rights reserved.
//

#import "VDEnterpriseCell.h"

@implementation VDEnterpriseCell

+ (instancetype)enterpriseCellWithTableView:(UITableView*)tableView
{
    VDEnterpriseCell* cell = [tableView dequeueReusableCellWithIdentifier:@"EnterpriseCell"];
    if (nil == cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"VDEnterpriseCell" owner:nil options:nil].lastObject;
    }
    return cell;
}

@end
