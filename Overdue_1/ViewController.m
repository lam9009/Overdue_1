//
//  ViewController.m
//  Overdue_1
//
//  Created by Alfred on 24/2/15.
//  Copyright (c) 2015 Maptier. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSMutableArray *)taskObjects
{
    if (!_taskObjects) {
        _taskObjects = [[NSMutableArray alloc] init];
    }
    return _taskObjects;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[AddTask class]]) {
        AddTask *addTaskVC = segue.destinationViewController;
        addTaskVC.delegate = self;
    }
}
- (IBAction)addTaskBarButtonPressed:(UIBarButtonItem *)sender {
    [self performSegueWithIdentifier:@"toAddTaskVCSegue" sender:nil];
}

- (IBAction)reorderBarButtonPressed:(UIBarButtonItem *)sender {
}
#pragma mark - add task VC delegate methods
-(void)didAddTask:(Task *)task
{
    [self.taskObjects addObject:task];
    NSMutableArray *taskObjectsAsPropertyLists = [[[NSUserDefaults standardUserDefaults] arrayForKey:TASK_OBJECTS_KEY] mutableCopy];
    if (!taskObjectsAsPropertyLists) taskObjectsAsPropertyLists = [[NSMutableArray alloc] init];
    /* create a method before finishing this to convert task to property list */
    [taskObjectsAsPropertyLists addObject:[self taskObjectAsAPropertyList:task]];
    [[NSUserDefaults standardUserDefaults] setObject:taskObjectsAsPropertyLists forKey:TASK_OBJECTS_KEY];
    [[NSUserDefaults standardUserDefaults] synchronize];
    [self dismissViewControllerAnimated:YES completion:nil];
    [self.tableView reloadData];
}
-(void)didCancel
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - helper method for add task VC delegate
- (NSDictionary *)taskObjectAsAPropertyList:(Task *)taskObject
{
    NSDictionary *dictionary = @{TASK_TITLE : taskObject.title, TASK_DESCRIPTION : taskObject.description, TASK_DATE : taskObject.date, TASK_COMPLETION : @(taskObject.isCompleted)};
    return dictionary;
}
@end
