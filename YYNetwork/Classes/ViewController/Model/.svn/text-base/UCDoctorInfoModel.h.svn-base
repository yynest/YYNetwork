//
//  UCDoctorInfoModel.h
//
//  Created by 锋 向 on 2016/10/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UCDoctorInfoData;

@interface UCDoctorInfoModel : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) double errCode;
@property (nonatomic, strong) NSString *errMsg;
@property (nonatomic, strong) UCDoctorInfoData *data;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
