//
//  UCDoctorInfoData.m
//
//  Created by 锋 向 on 2016/10/20
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "UCDoctorInfoData.h"


NSString *const kUCDoctorInfoDataId = @"id";
NSString *const kUCDoctorInfoDataDescription = @"description";
NSString *const kUCDoctorInfoDataSex = @"sex";
NSString *const kUCDoctorInfoDataMobile = @"mobile";
NSString *const kUCDoctorInfoDataJobNumber = @"jobNumber";
NSString *const kUCDoctorInfoDataDoctorType = @"doctorType";
NSString *const kUCDoctorInfoDataAdeptAt = @"adeptAt";
NSString *const kUCDoctorInfoDataLevel = @"level";
NSString *const kUCDoctorInfoDataBriefIntroduction = @"briefIntroduction";
NSString *const kUCDoctorInfoDataHospital = @"hospital";
NSString *const kUCDoctorInfoDataIconUrl = @"iconUrl";
NSString *const kUCDoctorInfoDataEmail = @"email";
NSString *const kUCDoctorInfoDataName = @"name";


@interface UCDoctorInfoData ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation UCDoctorInfoData

@synthesize dataIdentifier = _dataIdentifier;
@synthesize dataDescription = _dataDescription;
@synthesize sex = _sex;
@synthesize mobile = _mobile;
@synthesize jobNumber = _jobNumber;
@synthesize doctorType = _doctorType;
@synthesize adeptAt = _adeptAt;
@synthesize level = _level;
@synthesize briefIntroduction = _briefIntroduction;
@synthesize hospital = _hospital;
@synthesize iconUrl = _iconUrl;
@synthesize email = _email;
@synthesize name = _name;


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
            self.dataIdentifier = [[self objectOrNilForKey:kUCDoctorInfoDataId fromDictionary:dict] doubleValue];
            self.dataDescription = [self objectOrNilForKey:kUCDoctorInfoDataDescription fromDictionary:dict];
            self.sex = [[self objectOrNilForKey:kUCDoctorInfoDataSex fromDictionary:dict] doubleValue];
            self.mobile = [self objectOrNilForKey:kUCDoctorInfoDataMobile fromDictionary:dict];
            self.jobNumber = [[self objectOrNilForKey:kUCDoctorInfoDataJobNumber fromDictionary:dict] doubleValue];
            self.doctorType = [self objectOrNilForKey:kUCDoctorInfoDataDoctorType fromDictionary:dict];
            self.adeptAt = [self objectOrNilForKey:kUCDoctorInfoDataAdeptAt fromDictionary:dict];
            self.level = [self objectOrNilForKey:kUCDoctorInfoDataLevel fromDictionary:dict];
            self.briefIntroduction = [self objectOrNilForKey:kUCDoctorInfoDataBriefIntroduction fromDictionary:dict];
            self.hospital = [self objectOrNilForKey:kUCDoctorInfoDataHospital fromDictionary:dict];
            self.iconUrl = [self objectOrNilForKey:kUCDoctorInfoDataIconUrl fromDictionary:dict];
            self.email = [self objectOrNilForKey:kUCDoctorInfoDataEmail fromDictionary:dict];
            self.name = [self objectOrNilForKey:kUCDoctorInfoDataName fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.dataIdentifier] forKey:kUCDoctorInfoDataId];
    [mutableDict setValue:self.dataDescription forKey:kUCDoctorInfoDataDescription];
    [mutableDict setValue:[NSNumber numberWithDouble:self.sex] forKey:kUCDoctorInfoDataSex];
    [mutableDict setValue:self.mobile forKey:kUCDoctorInfoDataMobile];
    [mutableDict setValue:[NSNumber numberWithDouble:self.jobNumber] forKey:kUCDoctorInfoDataJobNumber];
    [mutableDict setValue:self.doctorType forKey:kUCDoctorInfoDataDoctorType];
    [mutableDict setValue:self.adeptAt forKey:kUCDoctorInfoDataAdeptAt];
    [mutableDict setValue:self.level forKey:kUCDoctorInfoDataLevel];
    [mutableDict setValue:self.briefIntroduction forKey:kUCDoctorInfoDataBriefIntroduction];
    [mutableDict setValue:self.hospital forKey:kUCDoctorInfoDataHospital];
    [mutableDict setValue:self.iconUrl forKey:kUCDoctorInfoDataIconUrl];
    [mutableDict setValue:self.email forKey:kUCDoctorInfoDataEmail];
    [mutableDict setValue:self.name forKey:kUCDoctorInfoDataName];

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

    self.dataIdentifier = [aDecoder decodeDoubleForKey:kUCDoctorInfoDataId];
    self.dataDescription = [aDecoder decodeObjectForKey:kUCDoctorInfoDataDescription];
    self.sex = [aDecoder decodeDoubleForKey:kUCDoctorInfoDataSex];
    self.mobile = [aDecoder decodeObjectForKey:kUCDoctorInfoDataMobile];
    self.jobNumber = [aDecoder decodeDoubleForKey:kUCDoctorInfoDataJobNumber];
    self.doctorType = [aDecoder decodeObjectForKey:kUCDoctorInfoDataDoctorType];
    self.adeptAt = [aDecoder decodeObjectForKey:kUCDoctorInfoDataAdeptAt];
    self.level = [aDecoder decodeObjectForKey:kUCDoctorInfoDataLevel];
    self.briefIntroduction = [aDecoder decodeObjectForKey:kUCDoctorInfoDataBriefIntroduction];
    self.hospital = [aDecoder decodeObjectForKey:kUCDoctorInfoDataHospital];
    self.iconUrl = [aDecoder decodeObjectForKey:kUCDoctorInfoDataIconUrl];
    self.email = [aDecoder decodeObjectForKey:kUCDoctorInfoDataEmail];
    self.name = [aDecoder decodeObjectForKey:kUCDoctorInfoDataName];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_dataIdentifier forKey:kUCDoctorInfoDataId];
    [aCoder encodeObject:_dataDescription forKey:kUCDoctorInfoDataDescription];
    [aCoder encodeDouble:_sex forKey:kUCDoctorInfoDataSex];
    [aCoder encodeObject:_mobile forKey:kUCDoctorInfoDataMobile];
    [aCoder encodeDouble:_jobNumber forKey:kUCDoctorInfoDataJobNumber];
    [aCoder encodeObject:_doctorType forKey:kUCDoctorInfoDataDoctorType];
    [aCoder encodeObject:_adeptAt forKey:kUCDoctorInfoDataAdeptAt];
    [aCoder encodeObject:_level forKey:kUCDoctorInfoDataLevel];
    [aCoder encodeObject:_briefIntroduction forKey:kUCDoctorInfoDataBriefIntroduction];
    [aCoder encodeObject:_hospital forKey:kUCDoctorInfoDataHospital];
    [aCoder encodeObject:_iconUrl forKey:kUCDoctorInfoDataIconUrl];
    [aCoder encodeObject:_email forKey:kUCDoctorInfoDataEmail];
    [aCoder encodeObject:_name forKey:kUCDoctorInfoDataName];
}

- (id)copyWithZone:(NSZone *)zone
{
    UCDoctorInfoData *copy = [[UCDoctorInfoData alloc] init];
    
    if (copy) {

        copy.dataIdentifier = self.dataIdentifier;
        copy.dataDescription = [self.dataDescription copyWithZone:zone];
        copy.sex = self.sex;
        copy.mobile = [self.mobile copyWithZone:zone];
        copy.jobNumber = self.jobNumber;
        copy.doctorType = [self.doctorType copyWithZone:zone];
        copy.adeptAt = [self.adeptAt copyWithZone:zone];
        copy.level = [self.level copyWithZone:zone];
        copy.briefIntroduction = [self.briefIntroduction copyWithZone:zone];
        copy.hospital = [self.hospital copyWithZone:zone];
        copy.iconUrl = [self.iconUrl copyWithZone:zone];
        copy.email = [self.email copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
    }
    
    return copy;
}


@end
