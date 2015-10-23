//
//  VDBasicTableViewCellModel.h
//  VDTalk
//
//  Created by Haijun on 10/23/15.
//  Copyright © 2015 Harwyn T'an. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VDBasicTableViewCellModel : NSObject

@property (copy, nonatomic) NSString* icon;
@property (copy, nonatomic) NSString* title;
@property (copy, nonatomic) Class destinationControllerClass;

+ (instancetype)modelWithTitle:(NSString*)title iconName:(NSString*)name destinationControllerClass:(Class)destinationControllerClass;

@end
