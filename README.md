GetWeatherByIp
==============

<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
通过设备的ip地址确定位置以获得对应的天气信息
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
0.采取自动引用计数（ARC）
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
1.此库通过链接气象局服务器,获取手机的ip地址,返回城市ID号.
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
2.通过城市ID号以及,weather.com.cn的jason接口,获得当前的天气信息.
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
3.此库需要导入的框架有:
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
MobileCoreServices.framework
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
CFNetwork.framework
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
SystemConfiguration.framework
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
libz.dylib
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
4.通过调用以下方法可以获得不同的信息（注：不使用的方法请注释掉）:
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
// 获取当前天气信息的图片
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
@property (nonatomic, copy)void(^getWeatherImage)(UIImage *img);
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
// 获取当前天气信息的图片名称
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
@property (nonatomic, copy)void(^getWeatherImageName)(NSString *imgName);
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
// 获取当前天气的状态
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
@property (nonatomic, copy)void(^getWeatherState)(NSString *state);
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
// 获取当前的城市
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
@property (nonatomic, copy)void(^getCity)(NSString *city);
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
// 获取当前城市的最高温度
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
@property (nonatomic, copy)void(^getHightTemperature)(NSString *hightTemperature);
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
// 获取当前城市的最低温度
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
@property (nonatomic, copy)void(^getLowTemperature)(NSString *lowTemperature);
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
// 获取此条天气预报发布的时间
</p>
<p style="color: rgb(56, 56, 56); font-family: Verdana, Helvetica, 'Microsoft YaHei', sans-serif; font-size: 13px; line-height: 23px;">
@property (nonatomic, copy)void(^getTime)(NSString *time);
</p>

