//
//  XSButton.h
//  XSButtonDemo
//
//  Created by 徐帅 on 2017/4/12.
//  Copyright © 2017年 徐帅. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,XSRelayoutButtonType) {
    XSRelayoutButtonTypeNomal  = 0,//默认
    XSRelayoutButtonTypeLeft   = 1,//标题在左
    XSRelayoutButtonTypeBottom = 2,//标题在下
};

@interface XSButton : UIButton

///图片大小
@property (assign,nonatomic)IBInspectable CGSize imageSize;
///图片相对于 top/right 的 offset --如果对间隔有要求 可以修改
@property (assign,nonatomic)IBInspectable CGFloat offset;

@property (assign,nonatomic)IBInspectable XSRelayoutButtonType lyType;


@end
