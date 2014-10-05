//
//  DiaryViewController.h
//  Demo
//
//  Created by ian on 14-4-11.
//  Copyright (c) 2014年 ian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DiaryViewController : UIViewController

// 向父视图传值
@property (nonatomic, copy)void(^blockValue)(UIImage *img);
@property (nonatomic, copy)void(^blockState)(NSString *state);
@end
