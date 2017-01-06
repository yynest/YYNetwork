//
//  ViewController.m
//  YY_iconDemo
//
//  Created by Fedora on 2016/12/12.
//  Copyright © 2016年 opq. All rights reserved.
//

#import "ViewController.h"
#import "BaseHeader.h"

#import "QSBaseRequest.h"
#import "UCDoctorInfoModel.h"
#import "UserInfoService.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 获取医生基本资料
    [self requestData];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)requestData {
    QSBaseRequest *api = [[QSBaseRequest alloc] initWithUserId:[NSNumber numberWithInteger:1] requestURL:@"/doctor/get"];
    [api startWithCompletionBlockWithSuccess:^(QSBaseRequest *request) {
        UCDoctorInfoModel *model = [UCDoctorInfoModel modelObjectWithDictionary:request.responseJSONObject];
        if ((int )model.errCode == 0) {
            [UserInfoService sharedInstance].doctorInfo = model.data;
        }
        else{
            [SVProgressHUD showInfoWithStatus:@"网络异常"];
        }
    }failure:^(QSBaseRequest *request) {
        [SVProgressHUD showInfoWithStatus:@"网络异常"];
    }];
}




@end
