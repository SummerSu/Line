//
//  Department.m
//  Registration
//
//  Created by 孙苏 on 2017/6/2.
//  Copyright © 2017年 sunsu. All rights reserved.
//

#import "Department.h"
#import "Patient.h"

#import "Centre.h"

@implementation Department

-(instancetype)initWithName:(NSString *)name andTime:(int)time
{
    if (self = [super init]) {
        self.lineArray = [NSMutableArray array];
        self.departmentName = name;
        self.time = time;
        self.startTime = @"0";
    }
    return self;
}


//诊室增加病人
-(void)addPatient:(Patient *)p
{
    [self.lineArray  addObject:p];

}
//诊断
-(void)diagnose
{
    Patient * p = self.lineArray.firstObject;
    [p removeDoctor:self.departmentName];
//    p.totalTime = self.time;
    [p setTotalTime:self.time];
    [p.process setValue:self.departmentName forKey:@"1"];
    NSLog(@"name =  %@,time=%d,startTime=%@",self.departmentName,_time,self.startTime);
    [self removePatient:p];

    Centre * vc = [[Centre alloc]init];
    [vc assignPatient:(p)];
}



//删除病人
-(void)removePatient:(Patient *)p
{
    [self.lineArray removeObject:p];
}

//获取当前队列的长度
-(NSInteger)getCurrentQueueLength
{
    return self.lineArray.count == 0?0:self.lineArray.count-1;
}









//-(instancetype)init
//{
//    if (self = [super init]) {
//        self.lineArray  = [NSMutableArray array];
//    }
//    return self;
//}
//
//-(void)addPatient:(Patient *)p
//{
//    if (self.lineArray.count == 0) {
//        [self.lineArray addObject:p];
//    }else{
//       long time = self.lineArray.count * [self.departmentTime longLongValue];
//        
//    }
//    
//}
//
//
//-(void)doctorSurgerPatient:(Patient *)p
//{
//    NSLog(@"病人正在看病，需要%@分钟",self.departmentTime);
//   
//}
//
//
//-(BOOL)isEmpty
//{
//    if(self.lineArray.count == 0)
//    {
//        return YES;
//    }
//    return NO;
//}


@end
