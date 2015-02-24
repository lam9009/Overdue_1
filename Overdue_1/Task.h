//
//  Task.h
//  Overdue_1
//
//  Created by Alfred on 24/2/15.
//  Copyright (c) 2015 Maptier. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *description1;
@property (strong, nonatomic) NSDate *date;
@property (nonatomic) BOOL isCompleted;

- (id)initWithData:(NSDictionary *)data;

@end
