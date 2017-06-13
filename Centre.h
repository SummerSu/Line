//
//  Centre.h
//  Line
//
//  Created by 孙苏 on 2017/6/8.
//  Copyright © 2017年 sunsu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Centre : NSObject
@property (nonatomic, strong) NSMutableArray * departments;
@property (nonatomic, strong) NSMutableArray * patients;


-(void)start;
-(BOOL)hasUser;

-(void)assignPatient:(Patient *)p;

@end
