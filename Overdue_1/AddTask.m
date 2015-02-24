//
//  AddTask.m
//  Overdue_1
//
//  Created by Alfred on 24/2/15.
//  Copyright (c) 2015 Maptier. All rights reserved.
//

#import "AddTask.h"

@interface AddTask ()

@end

@implementation AddTask

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - helper method
- (Task *)returnNewTaskObject
{
    Task *taskObject = [[Task alloc] init];
    taskObject.title = self.textField.text;
    taskObject.description1 = self.textView.text;
    taskObject.date = self.dataPicker.date;
    taskObject.isCompleted = NO;
    return taskObject;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)addTaskButtonPressed:(UIButton *)sender {
    [self.delegate didAddTask:[self returnNewTaskObject]];
}

- (IBAction)cancelButtonPressed:(UIButton *)sender {
    [self.delegate didCancel];
}
@end
