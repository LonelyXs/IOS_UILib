//
//  UIButton+TouchMore.h
//  ButtonTouchMoreDemo
//
//  Created by 徐帅 on 2017/7/24.
//  Copyright © 2017年 徐帅. All rights reserved.
//

#import <UIKit/UIKit.h>
#define defaultInterval 0.2 //默认时间间隔

@interface UIButton (TouchMore)

@property (nonatomic, assign)NSTimeInterval timeInterval;//设置点击时间间隔

@property (nonatomic, assign)BOOL isIgnore;//单个按钮不需要被hook

@end
