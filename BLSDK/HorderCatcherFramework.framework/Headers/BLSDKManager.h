//
//  BLSDKManager.h
//  HorderCatcherFramework
//
//  Created by gaohj on 2019/3/12.
//  Copyright © 2019年 gaohj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^BLSDKPayBlock)(NSDictionary *orderDict);

@interface BLSDKManager : NSObject

#pragma mark - property

/*
 * 直播间背景颜色 (16进制)例如：FF5E4C （默认）
 */
@property (nonatomic, copy) NSString *liveRoomBgColorHexStr;


/*
 * 标题栏背景色 (16进制)例如：FF5E4C （默认）
 * 在调用方法 enterWithNavigationController:userInfo: 前设置
 */
@property (nonatomic, copy) NSString *navigationBarColorHexStr;


/*
 * 个人信息页背景图片 (图片名) 例如：xxxx.png
 */
@property (nonatomic, copy) NSString *personalBgImageName;


/*
 * 直播间发言模块第三方可选择性接入, 默认：NO 
 */
@property (nonatomic, assign) BOOL liveRoomChatSwitch;


#pragma mark - method

/*
 *  单例
 */
+ (instancetype)shareInstance;

/* SDK 入口：
 *@params navi:传进来当前导航栏
 *@params userInfo:  @{@"appId":@"appID", @"thirdId":@"用户ID"}
 */
- (void)enterWithNavigationController:(UINavigationController*)navi userInfo:(NSDictionary*)userInfo;

/* 微信支付：
 *@params navi:传进来当前导航栏
 *@params userInfo:  @{@"appId":@"appID", @"thirdId":@"用户ID"}
 */
- (void)wechatPayBlock:(BLSDKPayBlock)payCallBack;

@end

NS_ASSUME_NONNULL_END
