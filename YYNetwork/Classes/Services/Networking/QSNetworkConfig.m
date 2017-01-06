//
//  QSNetworkConfig.m
//  QianShanJY
//
//  Created by Jim on 15/9/10.
//  Copyright (c) 2015年 chinasun. All rights reserved.
//

#import "QSNetworkConfig.h"


//       千山降压所有请求地址 定义

//     ------  内网环境  -------
#define DevelopmentBasePingUrl              @"192.168.1.114"
//内网数据服务器地址
#define DevelopmentBaseUrl                  @"http://192.168.1.114:8084"
//内网图片服务器地址
#define DevelopmentPictureBaseUrl           @"http://192.168.1.114:8084"


////     ------  外网环境  -------
//#define ProductionBasePingUrl                   @"114.67.57.183"
////外网数据服务器地址
//#define ProductionBaseUrl                   @"http://114.67.57.183:8081"
////外网图片服务器地址
//#define ProductionPictureBaseUrl            @"http://114.67.57.183:8082"

//                     ------  正式发布环境  -------
#define ProductionBasePingUrl               @"doctorapi.chinasunhealth.com"
//外网数据服务器地址
#define ProductionBaseUrl                   @"http://doctorapi.chinasunhealth.com"
//外网图片服务器地址
#define ProductionPictureBaseUrl            @"http://doctorapi.chinasunhealth.com"



@implementation QSNetworkConfig

+ (instancetype)sharedInstance
{
    static QSNetworkConfig *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (void)setNetworkEnvironment:(QSNetworkEnvironment)environment
{
    _networkEnvironment = environment;
    if (_networkEnvironment == QSNetwork_Development) {
        self.basePingURL = DevelopmentBasePingUrl;
        self.baseURL = DevelopmentBaseUrl;
        self.basePictureURL = DevelopmentPictureBaseUrl;
    }
    else {
        self.basePingURL = ProductionBasePingUrl;
        self.baseURL = ProductionBaseUrl;
        self.basePictureURL = ProductionPictureBaseUrl;
    }
}

- (NSString *)getPicBaseAddress
{
    return _basePictureURL;
}

- (NSString *)getBaseAddress{
    return _baseURL;
}

@end
