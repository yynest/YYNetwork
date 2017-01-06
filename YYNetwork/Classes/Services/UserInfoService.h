//
//  UserInfoService.h
//  QianShanJYDoctor
//
//  Created by iosdev on 2016/10/17.
//  Copyright © 2016年 QSYJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseHeader.h"

@class UCDoctorInfoData;

@interface UserInfoService : NSObject

//user id
@property (nonatomic, strong) NSNumber *userId;

//员号
@property (nonatomic, strong) NSNumber *jobNumber;

//医生基本资料
@property (nonatomic, strong) UCDoctorInfoData *doctorInfo;


+ (instancetype)sharedInstance;

// 注销后清空所有数据
- (void)clearAllData;

@end
