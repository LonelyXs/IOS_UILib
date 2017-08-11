//
//  UIButton+XSButton.m
//  XSButtonDemo
//
//  Created by 徐帅 on 2017/4/13.
//  Copyright © 2017年 徐帅. All rights reserved.
//

#import "UIButton+XSButton.h"

@implementation UIButton (XSButton)

- (void)XSSetbuttonType:(XSCategoryType)lzType {
    
    //需要在外部修改标题背景色的时候将此代码注释
    self.titleLabel.backgroundColor = self.backgroundColor;
    self.imageView.backgroundColor = self.backgroundColor;
    
    CGSize titleSize = self.titleLabel.bounds.size;
    CGSize imageSize = self.imageView.bounds.size;
    CGFloat interval = 1.0;
    if (lzType == XSCategoryTypeLeft) {
        [self setImageEdgeInsets:UIEdgeInsetsMake(0,titleSize.width + interval, 0, -(titleSize.width + interval))];
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -(imageSize.width + interval), 0, imageSize.width + interval)];
    } else if(lzType == XSCategoryTypeBottom) {
        [self setImageEdgeInsets:UIEdgeInsetsMake(0,0, titleSize.height + interval, -(titleSize.width-imageSize.width)/2)];
        [self setTitleEdgeInsets:UIEdgeInsetsMake(imageSize.height + interval, -(imageSize.width), 0, 0)];
    }
}



@end
