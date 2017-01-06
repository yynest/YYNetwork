//
//  LoginRequestAPI.m
//  QianShanJYDoctor
//
//  Created by iosdev on 2016/10/19.
//  Copyright © 2016年 QSYJ. All rights reserved.
//

#import "LoginRequestAPI.h"

@implementation LoginRequestAPI {
    NSString *_name;
    NSString *_password;
}

- (instancetype)initWithUserName:(NSString *) name withPassword:(NSString *) password {
    self = [super init];
    if (self){
        _name = name;
        _password = password;
    }
    
    return self;
}

- (NSString *)requestURL
{
    return @"/doctor/login";
}

- (id)requestArgument {
    return @{
             @"name":_name,
             @"pw":_password
             };
}

@end
