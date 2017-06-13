//
//  Patient.h
//  Registration
//
//  Created by 孙苏 on 2017/6/2.
//  Copyright © 2017年 sunsu. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject
{
    
}
@property (nonatomic, strong) NSString * patientName;

//@property (nonatomic, strong) NSMutableArray * treatArray;

@property (nonatomic, strong) NSMutableDictionary * process;

@property (nonatomic, assign) long totalTime;

//初始化
-(instancetype)initWithName:(NSString * )name andDepartment:(NSArray *)departs;

 //删除医生
-(void)removeDoctor:(NSString *)name;



- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)patientWithDict:(NSDictionary *)dict;



@end
