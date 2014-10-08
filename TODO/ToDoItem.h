//
//  ToDoItem.h
//  TODO
//
//  Created by luobin on 14-9-29.
//  Copyright (c) 2014年 pinidea.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *item_name;
@property BOOL     completed;
@property NSDate   *create_date;

-(void)mark_as_completed:(BOOL)is_completed;
@end
