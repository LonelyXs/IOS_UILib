//
//  UIButton+XSButton.h
//  XSButtonDemo
//
//  Created by 徐帅 on 2017/4/13.
//  Copyright © 2017年 徐帅. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,XSCategoryType) {
    XSCategoryTypeLeft = 0,
    XSCategoryTypeBottom,
};

@interface UIButton (XSButton)

- (void)XSSetbuttonType:(XSCategoryType)lzType;

@end
