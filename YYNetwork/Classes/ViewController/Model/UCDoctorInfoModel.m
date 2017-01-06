//
//  UCDoctorInfoModel.m
//
//  Created by 锋 向 on 2016/10/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "UCDoctorInfoModel.h"
#import "UCDoctorInfoData.h"


NSString *const kUCDoctorInfoModelErrCode = @"errCode";
NSString *const kUCDoctorInfoModelErrMsg = @"errMsg";
NSString *const kUCDoctorInfoModelData = @"data";


@interface UCDoctorInfoModel ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation UCDoctorInfoModel

@synthesize errCode = _errCode;
@synthesize errMsg = _errMsg;
@synthesize data = _data;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.errCode = [[self objectOrNilForKey:kUCDoctorInfoModelErrCode fromDictionary:dict] doubleValue];
            self.errMsg = [self objectOrNilForKey:kUCDoctorInfoModelErrMsg fromDictionary:dict];
            self.data = [UCDoctorInfoData modelObjectWithDictionary:[dict objectForKey:kUCDoctorInfoModelData]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.errCode] forKey:kUCDoctorInfoModelErrCode];
    [mutableDict setValue:self.errMsg forKey:kUCDoctorInfoModelErrMsg];
    [mutableDict setValue:[self.data dictionaryRepresentation] forKey:kUCDoctorInfoModelData];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.errCode = [aDecoder decodeDoubleForKey:kUCDoctorInfoModelErrCode];
    self.errMsg = [aDecoder decodeObjectForKey:kUCDoctorInfoModelErrMsg];
    self.data = [aDecoder decodeObjectForKey:kUCDoctorInfoModelData];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_errCode forKey:kUCDoctorInfoModelErrCode];
    [aCoder encodeObject:_errMsg forKey:kUCDoctorInfoModelErrMsg];
    [aCoder encodeObject:_data forKey:kUCDoctorInfoModelData];
}

- (id)copyWithZone:(NSZone *)zone
{
    UCDoctorInfoModel *copy = [[UCDoctorInfoModel alloc] init];
    
    if (copy) {

        copy.errCode = self.errCode;
        copy.errMsg = [self.errMsg copyWithZone:zone];
        copy.data = [self.data copyWithZone:zone];
    }
    
    return copy;
}


@end
