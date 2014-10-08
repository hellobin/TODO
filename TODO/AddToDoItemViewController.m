//
//  AddToDoItemViewController.m
//  TODO
//
//  Created by luobin on 14-8-27.
//  Copyright (c) 2014年 pinidea.com. All rights reserved.
//

#import "AddToDoItemViewController.h"

@interface AddToDoItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *button_done;

@end

@implementation AddToDoItemViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (sender != self.button_done)
    {
        return;
    }
    if (self.textField.text.length>0)
    {
        self.todo_item = [[ToDoItem alloc]init];
        self.todo_item.item_name = self.textField.text;
        self.todo_item.completed = NO;
    }
}

@end
