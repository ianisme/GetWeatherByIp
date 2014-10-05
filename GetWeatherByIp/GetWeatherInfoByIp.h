//
//  GetWeatherImage.h
//  Demo
//
//  Created by ian on 14-4-11.
//  Copyright (c) 2014年 ian. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface GetWeatherInfoByIp : NSObject


@property (nonatomic, strong)NSString *intString;
@property (nonatomic, strong)UIImage *weatherImage;
@property (nonatomic, strong)NSString *weatherImageName;
@property (nonatomic, strong)NSString *weatherState;
@property (nonatomic, strong)NSString *city;
@property (nonatomic, strong)NSString *highTemperature;
@property (nonatomic, strong)NSString *lowTemperature;
@property (nonatomic, strong)NSString *time;

// 获取当前天气信息的图片
@property (nonatomic, copy)void(^getWeatherImage)(UIImage *img);
// 获取当前天气信息的图片名称
@property (nonatomic, copy)void(^getWeatherImageName)(NSString *imgName);
// 获取当前天气的状态
@property (nonatomic, copy)void(^getWeatherState)(NSString *state);
// 获取当前的城市
@property (nonatomic, copy)void(^getCity)(NSString *city);
// 获取当前城市的最高温度
@property (nonatomic, copy)void(^getHightTemperature)(NSString *hightTemperature);
// 获取当前城市的最低温度
@property (nonatomic, copy)void(^getLowTemperature)(NSString *lowTemperature);
// 获取此条天气预报发布的时间
@property (nonatomic, copy)void(^getTime)(NSString *time);

@end
