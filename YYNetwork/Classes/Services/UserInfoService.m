//
//  UserInfoService.m
//  QianShanJYDoctor
//
//  Created by iosdev on 2016/10/17.
//  Copyright © 2016年 QSYJ. All rights reserved.
//

#import "UserInfoService.h"
#import "UserDefaultsHelper.h"
#import "UCDoctorInfoModel.h"

@implementation UserInfoService

+ (instancetype)sharedInstance {
    static UserInfoService *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
}


- (instancetype)init {
    self = [super init];
    if (self) {
        [self initUserID];
        
    }
    return self;
}

- (void)initUserID {
    _userId = [UserDefaultsHelper getLoginUserID];
}

- (NSNumber *)userId {
    if (!_userId) {
        _userId = [UserDefaultsHelper getLoginUserID];
    }
    return _userId;
}

- (NSNumber *)jobNumber{
    return [UserDefaultsHelper getjobNumber];
}

- (void)clearAllData {
    self.userId = nil;
    [UserDefaultsHelper clearUserDefaults];
    [self clearDatabase];
}

// 注销后清空数据库所有表
- (void)clearDatabase {
    
}

@end
