//
//  GetWeatherImage.m
//  Demo
//
//  Created by ian on 14-4-11.
//  Copyright (c) 2014年 ianisme.com. All rights reserved.
//

#import "GetWeatherInfoByIp.h"
#import "AFHTTPRequestOperation.h"
@implementation GetWeatherInfoByIp

// 修改初始化方法
- (instancetype)init
{
    self = [super init];
    if (self)
    {
        // 解析网址通过ip 获取城市天气代码
        NSURL *url = [NSURL URLWithString:@"http://61.4.185.48:81/g/"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
        [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject){
            
            NSString *jsonString = operation.responseString;
            
            NSLog(@"------%@",jsonString);
            if (jsonString)
            {
                NSLog(@"------%@",jsonString);
                
                // 获得城市代码字符串,截取出城市的代码
                NSString *str = nil;
                for (int i = 0; i<=[jsonString length]; i++)
                {
                    for (int j = i+1; j <=[jsonString length]; j++)
                    {
                        str = [jsonString substringWithRange:NSMakeRange(i, j-i)];
                        if ([str isEqualToString:@"id"]) {
                            if (![[jsonString substringWithRange:NSMakeRange(i+3, 1)] isEqualToString:@"c"]) {
                                _intString = [jsonString substringWithRange:NSMakeRange(i+3, 9)];
                                NSLog(@"***%@***",_intString);
                            }
                        }
                    }
                }
                
                //中国天气网解析地址；
                NSString *path=@"http://www.weather.com.cn/data/cityinfo/cityNumber.html";
                //将城市代码替换到天气解析网址cityNumber 部分！
                path=[path stringByReplacingOccurrencesOfString:@"cityNumber" withString:_intString];
                
                NSLog(@"path:%@",path);
                
                NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:path]];
                
                AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
                [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject){
                    
                    NSData *html = operation.responseData;
                    
                    id dict = [NSJSONSerialization JSONObjectWithData:html options:0 error:nil];
                    NSLog(@"获取到的数据为:%@",dict);
                    [self requestFinished:dict];
                    
                }failure:^(AFHTTPRequestOperation *operation, NSError *error){
                    
                    NSLog(@"发生错误! %@",error);
                    
                }];
                
                [operation start];
            }
            else
            {
                self.weatherImage = [UIImage imageNamed:@"undefined"];
                self.weatherState = @"获取失败";
                self.city = @"获取失败";
                self.highTemperature = @"获取失败";
                self.lowTemperature = @"获取失败";
                self.time = @"获取失败";
                self.weatherImageName = @"undefined";
            }
            
        }failure:^(AFHTTPRequestOperation *operation, NSError *error){
            
            NSLog(@"发生错误! %@",error);
            
        }];
        
        [operation start];

    }
    return self;
}

- (void)requestFinished:(NSDictionary *)dict
{
    NSDictionary *weatherinfo = [dict objectForKey:@"weatherinfo"];
    NSLog(@"weatherinfo  =  %@",weatherinfo);
    
    self.city = [weatherinfo objectForKey:@"city"];
    self.highTemperature = [weatherinfo objectForKey:@"temp1"];
    self.lowTemperature = [weatherinfo objectForKey:@"temp2"];
    self.weatherState = [weatherinfo objectForKey:@"weather"];
    NSLog(@"%@",_weatherState);
    
    NSString *img1 = [weatherinfo objectForKey:@"img1"];
    NSString *img2 = [weatherinfo objectForKey:@"img2"];
    NSString *time = [weatherinfo objectForKey:@"ptime"];
    self.time = time;
    int  a = [[time substringWithRange:NSMakeRange(0,2)] intValue];
    if (a>=6&&a<=18)
    {
        if (img1.length == 6) {
            NSString *d = [img1 substringWithRange:NSMakeRange(0, 2)];
            NSLog(@"图片是%@",d);
            self.weatherImage = [UIImage imageNamed:d];
            self.weatherImageName = d;
        }
        else
        {
            NSString *d = [img1 substringWithRange:NSMakeRange(0, 3)];
            NSLog(@"图片是%@",d);
            self.weatherImage = [UIImage imageNamed:d];
            self.weatherImageName = d;
        }
        
    }
    else
    {
        if (img2.length == 6)
        {
            NSString *n = [img2 substringWithRange:NSMakeRange(0, 2)];
            NSLog(@"图片是%@",n);
            self.weatherImage = [UIImage imageNamed:n];
            self.weatherImageName = n;
        }
        else
        {
            NSString *n = [img2 substringWithRange:NSMakeRange(0, 3)];
            NSLog(@"图片是%@",n);
            self.weatherImage = [UIImage imageNamed:n];
            self.weatherImageName = n;
        }
        
    }

    self.getWeatherImage(self.weatherImage);
//    self.getWeatherImageName(self.weatherImageName);
    self.getWeatherState(self.weatherState);
//    self.getCity(self.city);
//    self.getHightTemperature(self.highTemperature);
//    self.getLowTemperature(self.lowTemperature);
//    self.getTime(self.time);
    
}

- (void)requestFailed:(NSDictionary *)dict
{
    NSLog(@"请求失败了");
    self.weatherImage = [UIImage imageNamed:@"undefined"];
    self.weatherState = @"获取失败";
    self.city = @"获取失败";
    self.highTemperature = @"获取失败";
    self.lowTemperature = @"获取失败";
    self.time = @"获取失败";
    self.weatherImageName = @"undefined";
}


@end

