//
//  Task.m
//  Overdue_1
//
//  Created by Alfred on 24/2/15.
//  Copyright (c) 2015 Maptier. All rights reserved.
//

#import "Task.h"

@implementation Task

- (id)initWithData:(NSDictionary *)data
{
    self = [super init];
    if (self) {
        self.title = data[TASK_TITLE];
        self.description1 = data[TASK_DESCRIPTION];
        self.date = data[TASK_DATE];
        self.isCompleted = [data[TASK_COMPLETION] boolValue];
    }
    return self;
}
- (id)init
{
    self = [self initWithData:nil];
    return self;
}

@end
