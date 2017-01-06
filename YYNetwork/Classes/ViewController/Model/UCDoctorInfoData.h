//
//  UCDoctorInfoData.h
//
//  Created by 锋 向 on 2016/10/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface UCDoctorInfoData : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) double dataIdentifier;
@property (nonatomic, strong) NSString *dataDescription;
@property (nonatomic, assign) double sex;
@property (nonatomic, strong) NSString *mobile;
@property (nonatomic, assign) double jobNumber;
@property (nonatomic, strong) NSString *doctorType;
@property (nonatomic, strong) NSString *adeptAt;
@property (nonatomic, strong) NSString *level;
@property (nonatomic, strong) NSString *briefIntroduction;
@property (nonatomic, strong) NSString *hospital;
@property (nonatomic, strong) NSString *iconUrl;
@property (nonatomic, assign) id email;
@property (nonatomic, strong) NSString *name;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
