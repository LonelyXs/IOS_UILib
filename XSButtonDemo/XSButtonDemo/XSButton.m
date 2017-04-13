//
//  XSButton.m
//  XSButtonDemo
//
//  Created by 徐帅 on 2017/4/12.
//  Copyright © 2017年 徐帅. All rights reserved.
//

#import "XSButton.h"

@implementation XSButton

- (void)setLzType:(XSRelayoutButtonType)lyType {
    _lyType = lyType;
    if (lyType != XSRelayoutButtonTypeNomal) {
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
}

//重写父类方法,改变标题和image的坐标
- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    if (self.lyType == XSRelayoutButtonTypeLeft) {
        CGFloat x = contentRect.size.width - self.offset - self.imageSize.width ;
        CGFloat y =  contentRect.size.height -  self.imageSize.height;
        y = y/2;
        CGRect rect = CGRectMake(x,y,self.imageSize.width,self.imageSize.height);
        return rect;
    } else if (self.lyType == XSRelayoutButtonTypeBottom) {
        CGFloat x =  contentRect.size.width -  self.imageSize.width;
        CGFloat y =  self.offset ;
        x = x / 2;
        CGRect rect = CGRectMake(x,y,self.imageSize.width,self.imageSize.height);
        return rect;
    } else {
        return [super imageRectForContentRect:contentRect];
    }
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect {
    if (self.lyType == XSRelayoutButtonTypeLeft) {
        return CGRectMake(self.offset,0, contentRect.size.width - self.offset - self.imageSize.width , contentRect.size.height);
    } else if (self.lyType == XSRelayoutButtonTypeBottom) {
        return CGRectMake(0,  self.offset + self.imageSize.height , contentRect.size.width , contentRect.size.height - self.offset - self.imageSize.height );
    } else {
        return [super titleRectForContentRect:contentRect];
    }
}


@end
