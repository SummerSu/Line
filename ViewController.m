//
//  ViewController.m
//  Line
//
//  Created by 孙苏 on 2017/6/8.
//  Copyright © 2017年 sunsu. All rights reserved.
//

#import "ViewController.h"
#import "Department.h"
#import "Patient.h"

#import "Centre.h"


@interface ViewController ()
{
    int departmentNum;
    int  index;
    
    long allTime;

}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    allTime = 0;
    
    Centre * c = [[Centre alloc]init];
    c =  [self createData];
    
    [c start];    
}

-(Centre *)createData
{
    Centre * c = [Centre new];
        //创建科室3个
        NSArray * titleArray = @[@"A",@"B",@"C"];
        NSArray * timeArray = @[@"5",@"9",@"11"];
        for (int i = 0; i < 3; i++) {
            Department   * d = [[Department  alloc]initWithName:titleArray[i] andTime:[timeArray[i] intValue]];

            [c.departments addObject:d];
//            NSLog(@"departments=%@-d=%@",c.departments,d.departmentName);
        }
    
    
        //创建病人10个
    int patientNum = 13;
        for (int i = 0; i < patientNum; i++) {
    // Patient   * p = [[Patient  alloc]initWithName:@"123" andDepartment:treatArray[i]];
            Patient   * p = [[Patient  alloc]initWithName:@"123" andDepartment:c.departments];
            for (Department * d in c.departments) {
                [p setTotalTime:d.time];
            }
                       [p setPatientName:[NSString stringWithFormat:@"patient-%d",i]];
            [c.patients addObject:p];
        }
    
    
    int dAllTime = [timeArray[0] intValue] + [timeArray[1] intValue]+[timeArray[2] intValue];
    NSLog(@"dAllTime=%d",patientNum *dAllTime);


    return c;
}



@end
