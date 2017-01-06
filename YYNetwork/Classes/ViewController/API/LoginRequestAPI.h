//
//  LoginRequestAPI.h
//  QianShanJYDoctor
//
//  Created by iosdev on 2016/10/19.
//  Copyright © 2016年 QSYJ. All rights reserved.
//

#import "QSBaseRequest.h"

@interface LoginRequestAPI : QSBaseRequest

- (instancetype)initWithUserName:(NSString *) name withPassword:(NSString *) password;

@end
