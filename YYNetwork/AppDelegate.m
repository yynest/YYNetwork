//
//  AppDelegate.m
//  YYNetwork
//
//  Created by iosdev on 2017/1/5.
//  Copyright © 2017年 QSYJ. All rights reserved.
//

#import "AppDelegate.h"
#import "QSNetworkConfig.h"
#import "BaseHeader.h"
#import "YYMonitorNetwork.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 初始化网络请求工具
#ifdef DEBUG
    [[QSNetworkConfig sharedInstance] setNetworkEnvironment:QSNetwork_Production];//QSNetwork_Development
#else
    // Release模式下下网络环境为生产环境
    [[QSNetworkConfig sharedInstance] setNetworkEnvironment:QSNetwork_Production];
#endif
    //监听网络变化，并提示
    [[YYMonitorNetwork sharedInstance] monitorNetworkStateChange];
    
    //设置可否操作
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeNone];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleCustom];
    [SVProgressHUD setMinimumDismissTimeInterval:2.0];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
