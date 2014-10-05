GetWeatherByIp
==============

通过设备的ip地址确定位置以获得对应的天气信息

1.此库通过链接气象局服务器,获取手机的ip地址,返回城市ID号.
2.通过城市ID号以及,weather.com.cn的jason接口,获得当前的天气信息.
3.此库需要导入的框架有:
MobileCoreServices.framework
CFNetwork.framework
SystemConfiguration.framework
libz.dylib
4.通过调用以下方法可以获得不同的信息（注：不使用的方法请注释掉）:

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