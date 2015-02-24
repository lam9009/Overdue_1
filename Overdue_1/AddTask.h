//
//  AddTask.h
//  Overdue_1
//
//  Created by Alfred on 24/2/15.
//  Copyright (c) 2015 Maptier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddTask : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UIDatePicker *dataPicker;

- (IBAction)addTaskButtonPressed:(UIButton *)sender;
- (IBAction)cancelButtonPressed:(UIButton *)sender;

@end
