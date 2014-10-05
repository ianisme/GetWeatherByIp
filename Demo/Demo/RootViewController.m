//
//  RootViewController.m
//  Demo
//
//  Created by ian on 14-4-11.
//  Copyright (c) 2014年 ian. All rights reserved.
//

#import "RootViewController.h"
#import "DiaryViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Demo";
        _weatherImageView = [[UIImageView alloc] init];
        _weatherLabel = [[UILabel alloc] init];
    }
    return self;
}
- (void)loadView
{
    UIView *view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    view.backgroundColor = [UIColor whiteColor];
    self.view = view;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _weatherImageView.frame = CGRectMake(320/2-40/2, 200, 40, 40);
    // 等待接收图片数据
    _weatherLabel.frame = CGRectMake(320/2-200/2, 100, 200, 100);
    _weatherLabel.textAlignment = NSTextAlignmentCenter;
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(320/2-200/2, 250, 200, 30);
    [btn setTitle:@"开始写日记" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(WriteDiary) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

- (void)WriteDiary
{
    DiaryViewController *dvc = [[DiaryViewController alloc] init];
    [self.navigationController pushViewController:dvc animated:YES];
    dvc.blockValue = ^(UIImage *img)
    {
        _weatherImageView.image = img;
        [self.view addSubview:_weatherImageView];
        NSLog(@"%@",img);
    };

    dvc.blockState = ^(NSString *state)
    {
        _weatherLabel.text = state;
        [self.view addSubview:_weatherLabel];
        NSLog(@"%@",state);
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
