//
//  VDBasicTableViewCellModel.m
//  VDTalk
//
//  Created by Haijun on 10/23/15.
//  Copyright © 2015 Harwyn T'an. All rights reserved.
//

#import "VDBasicTableViewCellModel.h"

@implementation VDBasicTableViewCellModel

+ (instancetype)modelWithTitle:(NSString*)title iconName:(NSString*)name destinationControllerClass:(Class)destinationControllerClass
{
    VDBasicTableViewCellModel* model = [[VDBasicTableViewCellModel alloc] init];
    model.title = title;
    model.icon = name;
    model.destinationControllerClass = destinationControllerClass;
    return model;
}

@end
