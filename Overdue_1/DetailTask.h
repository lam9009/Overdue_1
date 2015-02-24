//
//  DetailTask.h
//  Overdue_1
//
//  Created by Alfred on 24/2/15.
//  Copyright (c) 2015 Maptier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailTask : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *task;
@property (strong, nonatomic) IBOutlet UILabel *taskDetails;
@property (strong, nonatomic) IBOutlet UILabel *date;
- (IBAction)editButtonPressed:(UIButton *)sender;

@end
