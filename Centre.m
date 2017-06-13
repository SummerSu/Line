//
//  Centre.m
//  Line
//
//  Created by 孙苏 on 2017/6/8.
//  Copyright © 2017年 sunsu. All rights reserved.
//

#import "Centre.h"
#import "Department.h"

@implementation Centre

-(instancetype)init
{
    if (self = [super init]) {
        _patients = [NSMutableArray array];
        _departments    = [NSMutableArray array];
    }
    return self;
}


-(void)start
{
    for (Patient *p in self.patients) {
        [self assignPatient:p];
        NSLog(@"patientName=%@,totalTime=%ld",p.patientName,p.totalTime);
    }
    
    for (Department *d  in self.departments) {
        [d diagnose];
    }
    
    
    
}


-(BOOL)hasUser
{
    for (Department *d in self.departments) {
        if (d.getCurrentQueueLength>0) {
            return YES;
        }
    }
    return NO;
}

-(void)assignPatient:(Patient *)p
{
    for (Department * d in self.departments) {
        BOOL state = [p.process objectForKey:@"0"];
        if (state) {
            long time = [d getCurrentQueueLength]*d.time;
            [p setTotalTime:time];
            [d addPatient:p];
        }
    }
    
}

@end
