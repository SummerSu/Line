//
//  Department.h
//  Registration
//
//  Created by 孙苏 on 2017/6/2.
//  Copyright © 2017年 sunsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;


@interface Department : NSObject

@property (nonatomic, assign) int time;
@property (nonatomic, strong) NSString * departmentName;
@property (nonatomic, strong) NSString * startTime;

@property (nonatomic, strong) NSMutableArray * lineArray;




//诊室增加病人
-(void)addPatient:(Patient *)p;
//诊断
-(void)diagnose;
//删除病人
-(void)removePatient:(Patient *)p;
//获取当前队列的长度
-(NSInteger)getCurrentQueueLength;

-(instancetype)initWithName:(NSString *)name andTime:(int)time;

@end
