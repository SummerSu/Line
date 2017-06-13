//
//  Patient.m
//  Registration
//
//  Created by 孙苏 on 2017/6/2.
//  Copyright © 2017年 sunsu. All rights reserved.
//

#import "Patient.h"
#import "Department.h"

@implementation Patient

- (instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
+ (instancetype)patientWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}



-(instancetype)initWithName:(NSString * )name andDepartment:(NSArray *)departs
{
    if (self = [super init]) {
        _totalTime = 0;
        
        if (departs != NULL) {
            self.process =  [NSMutableDictionary dictionary];
        }
        for (Department * d in departs) {
            [self.process setValue:d.departmentName forKey:@"0"];
        }
    }
    return self;
}

-(void)removeDoctor:(NSString *)name
{
    [self.process removeObjectForKey:@"0"];
}

-(void)setTotalTime:(long)totalTime
{
    _totalTime += totalTime;
//    NSLog(@"settotalTime%ld",_totalTime);
}


@end
