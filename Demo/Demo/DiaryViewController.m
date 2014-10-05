//
//  DiaryViewController.m
//  Demo
//
//  Created by ian on 14-4-11.
//  Copyright (c) 2014年 ian. All rights reserved.
//

#import "DiaryViewController.h"
#import "GetWeatherInfoByIp.h"
@interface DiaryViewController ()

@end

@implementation DiaryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
           }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"写日记的页面";
    self.view.backgroundColor = [UIColor blackColor];
    // 设置导航栏的保存按钮
    UIButton *item = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    item.backgroundColor = [UIColor whiteColor];
    [item setTitle:@"保存" forState:UIControlStateNormal];
    item.frame = CGRectMake(260, (44-30)/2, 50, 30);
    [item addTarget:self action:@selector(saveDairy) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:item];
    self.navigationItem.rightBarButtonItem = rightItem;

    // Do any additional setup after loading the view.
}

- (void)saveDairy
{
    NSLog(@"文档保存成功");
}
- (void)viewDidAppear:(BOOL)animated
{
    GetWeatherInfoByIp *img = [[GetWeatherInfoByIp alloc] init];
    img.getWeatherImage = ^(UIImage *img){
        self.blockValue(img);
    };
    img.getWeatherState = ^(NSString *state){
        self.blockState(state);
    };

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
