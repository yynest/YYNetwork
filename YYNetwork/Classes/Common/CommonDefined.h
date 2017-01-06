//
//  Common.h
//  QianShanJYDoctor
//
//  Created by iosdev on 2016/10/19.
//  Copyright © 2016年 QSYJ. All rights reserved.
//

#ifndef CommonDefined_h
#define CommonDefined_h

//// 此宏用来替换NSLocalizedString
#define QSText(key) \
[[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]

//打印log:输出需要信息的同时, 还输出所在类、 函数(方法)名以及行数
#ifdef DEBUG
#define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#else
#define DLog(...)
#endif


#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define IS_RETINA ([[UIScreen mainScreen] scale] >= 2.0)

//#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
//#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
#define SCREEN_MAX_LENGTH (MAX(SCREEN_WIDTH, SCREEN_HEIGHT))
#define SCREEN_MIN_LENGTH (MIN(SCREEN_WIDTH, SCREEN_HEIGHT))

#define IS_IPHONE_4_OR_LESS (IS_IPHONE && SCREEN_MAX_LENGTH < 568.0)
#define IS_IPHONE_5S (IS_IPHONE && SCREEN_MAX_LENGTH == 568.0)
#define IS_IPHONE_6 (IS_IPHONE && SCREEN_MAX_LENGTH == 667.0)
#define IS_IPHONE_6P (IS_IPHONE && SCREEN_MAX_LENGTH == 736.0)




// ----------相关通知宏定义------------

//通知：修改用户信息
#define Notifi_User_Info_Change @"Notifi_User_Info_Change"
//通知:第三方登录回调
#define Notifi_Third_Login      @"Notifi_Third_Login"

//-----------相关通用宏定义-------------

//app 内网外网环境宏定义
#define Common_NetSetting @"Common_NetSetting"


//服务电话

#define SERVER_PHONE  @"tel://0731-81876707"

//图文问诊 高血压问题为 1
#define HIGH_QUESTIONS  @"1"

//screen width and height
#define MAIN_SCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width
#define MAIN_SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height




//检查系统版本
#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)


#define CELL_CONTENT_FONT_SIZE [UIFont systemFontOfSize:16.f]


//xiangfeng,常用的宏定义
//默认图片，头像
#define IMAGE_DEFAULT       [UIImage imageNamed:@"default_image"]
#define IMAGE_HEAD_DEFAULT  [UIImage imageNamed:@"default_imageHead"]
//边距
#define NO_VIEW_EDGEDISTANCE 16

//判断NSString 对象是否为空
#define _noNull(str) (str == nil || [str isEqualToString:@"(null)"]? @"":str)

#endif /* CommonDefined_h */


