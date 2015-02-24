//
//  ViewController.h
//  Overdue_1
//
//  Created by Alfred on 24/2/15.
//  Copyright (c) 2015 Maptier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)addTaskBarButtonPressed:(UIBarButtonItem *)sender;
- (IBAction)reorderBarButtonPressed:(UIBarButtonItem *)sender;

@end

