//
//  ToDoItem.m
//  TODO
//
//  Created by luobin on 14-9-29.
//  Copyright (c) 2014年 pinidea.com. All rights reserved.
//

#import "ToDoItem.h"

@interface ToDoItem()
@property NSDate  *complete_date;
@end

@implementation ToDoItem


-(void)mark_as_completed:(BOOL)is_completed
{
  
}

-(void)set_complete_date
{
  if (self.completed)
  {
    self.complete_date = [NSDate date];
  }
  else
  {
    self.complete_date = nil;
  }

}
@end
