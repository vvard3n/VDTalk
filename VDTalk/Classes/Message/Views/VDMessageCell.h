//
//  VDMessageCellTableViewCell.h
//  VDTalk
//
//  Created by Harwyn T'an on 10/23/15.
//  Copyright © 2015 Harwyn T'an. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VDMessageCell : UITableViewCell

#define KIdentifier @"MessageCell"

/**
 *  创建MessageCell，已实现Cell重用
 *
 *  @param tableView 需加载到的TableView
 *
 *  @return MessageCell
 */
+ (instancetype)messageCellWithTableView:(UITableView*)tableView;

@end
