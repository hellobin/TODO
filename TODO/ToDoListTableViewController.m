//
//  ToDoListTableViewController.m
//  TODO
//
//  Created by luobin on 14-8-27.
//  Copyright (c) 2014年 pinidea.com. All rights reserved.
//

#import "ToDoListTableViewController.h"
#import "ToDoItem.h"
#import "AddToDoItemViewController.h"

@interface ToDoListTableViewController ()

@end

@implementation ToDoListTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self)
    {
      
    }
    return self;
}

- (void)dealloc
{
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.to_do_items = [[NSMutableArray alloc]init];
    [self load_init_item_data];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.to_do_items count];
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCell" forIndexPath:indexPath];
    ToDoItem *todo_item = [self.to_do_items objectAtIndex:indexPath.row];
    cell.textLabel.text = todo_item.item_name;
    if (todo_item.completed) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    return cell;
}

- (IBAction)unwindToDoList:(UIStoryboardSegue *)segue
{
    AddToDoItemViewController *source = [segue sourceViewController];
    ToDoItem *todo_item = source.todo_item;
    if (todo_item)
    {
        [self.to_do_items addObject:todo_item];
        [self.tableView reloadData];
    }
}

- (void)load_init_item_data
{
    ToDoItem *item_1 = [[ToDoItem alloc]init];
    item_1.item_name = @"buy milk";
    [self.to_do_items addObject:item_1];
    ToDoItem *item_2 = [[ToDoItem alloc]init];
    item_2.item_name = @"buy eggs";
    [self.to_do_items addObject:item_2];
    ToDoItem *item_3 = [[ToDoItem alloc]init];
    item_3.item_name = @"read a book";
    [self.to_do_items addObject:item_3];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    ToDoItem *select_item = [self.to_do_items objectAtIndex:indexPath.row];
    select_item.completed = !select_item.completed;
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
    
}

@end
