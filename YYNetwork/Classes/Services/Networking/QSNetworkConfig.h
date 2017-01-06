//
//  QSNetworkConfig.h
//  QianShanJY
//
//  Created by Jim on 15/9/10.
//  Copyright (c) 2015年 chinasun. All rights reserved.
//

#import <Foundation/Foundation.h>



typedef NS_ENUM(NSInteger, QSNetworkEnvironment) {
    QSNetwork_Development = 1,
    QSNetwork_Production  = 2,
};

@interface QSNetworkConfig : NSObject

@property (strong, nonatomic) NSString *basePingURL;
@property (strong, nonatomic) NSString *baseURL;
@property (strong, nonatomic) NSString *basePictureURL;

@property (assign, nonatomic) QSNetworkEnvironment networkEnvironment;

+ (instancetype)sharedInstance;

- (void)setNetworkEnvironment:(QSNetworkEnvironment)environment;

- (NSString *)getPicBaseAddress;

- (NSString *)getBaseAddress;

@end
