GetWeatherByIp
==============

<p class="p1">
通过设备的<span class="s1">ip</span>地址确定位置以获得对应的天气信息
</p>
<p class="p2">
<br />

</p>
<p class="p1">
<span class="s1">1.</span>此库通过链接气象局服务器<span class="s1">,</span>获取手机的<span class="s1">ip</span>地址<span class="s1">,</span>返回城市<span class="s1">ID</span>号<span class="s1">.</span>
</p>
<p class="p3">
2.<span class="s2">通过城市</span>ID<span class="s2">号以及</span>,weather.com.cn<span class="s2">的</span>jason<span class="s2">接口</span>,<span class="s2">获得当前的天气信息</span>.
</p>
<p class="p1">
<span class="s1">3.</span>此库需要导入的框架有<span class="s1">:</span>
</p>
<p class="p3">
MobileCoreServices.framework
</p>
<p class="p3">
CFNetwork.framework
</p>
<p class="p3">
SystemConfiguration.framework
</p>
<p class="p3">
libz.dylib
</p>
<p class="p1">
<span class="s1">4.</span>通过调用以下方法可以获得不同的信息（注：不使用的方法请注释掉）<span class="s1">:</span>
</p>
<p class="p2">
<br />

</p>
<p class="p1">
<span class="s1">// </span>获取当前天气信息的图片
</p>
<p class="p3">
@property (nonatomic, copy)void(^getWeatherImage)(UIImage *img);
</p>
<p class="p1">
<span class="s1">// </span>获取当前天气信息的图片名称
</p>
<p class="p3">
@property (nonatomic, copy)void(^getWeatherImageName)(NSString *imgName);
</p>
<p class="p1">
<span class="s1">// </span>获取当前天气的状态
</p>
<p class="p3">
@property (nonatomic, copy)void(^getWeatherState)(NSString *state);
</p>
<p class="p1">
<span class="s1">// </span>获取当前的城市
</p>
<p class="p3">
@property (nonatomic, copy)void(^getCity)(NSString *city);
</p>
<p class="p1">
<span class="s1">// </span>获取当前城市的最高温度
</p>
<p class="p3">
@property (nonatomic, copy)void(^getHightTemperature)(NSString *hightTemperature);
</p>
<p class="p1">
<span class="s1">// </span>获取当前城市的最低温度
</p>
<p class="p3">
@property (nonatomic, copy)void(^getLowTemperature)(NSString *lowTemperature);
</p>
<p class="p1">
<span class="s1">// </span>获取此条天气预报发布的时间
</p>
<p class="p3">
@property (nonatomic, copy)void(^getTime)(NSString *time);
</p>
