//
//  ViewController.m
//  XSButtonDemo
//
//  Created by 徐帅 on 2017/4/12.
//  Copyright © 2017年 徐帅. All rights reserved.
//
#import "ViewController.h"
#import "XSButton.h"
#import "UIButton+XSButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self test2];
    
}

//继承测试
- (void)test1 {
    CGSize imageSize_check = [UIImage imageNamed:@"check_icon"].size;
    CGSize imageSize_AppIcon = [UIImage imageNamed:@"AppIcon"].size;
    
    CGSize titleSize_left = [self sizeWithString:@"标题在左" font:[UIFont systemFontOfSize:18.0f] constraintSize:CGSizeMake(200, 200)];
    CGSize titleSize_Botton = [self sizeWithString:@"标题在下" font:[UIFont systemFontOfSize:18.0f] constraintSize:CGSizeMake(200, 200)];
    
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    but.backgroundColor = [UIColor redColor];
    but.titleLabel.backgroundColor = [UIColor grayColor];
    but.imageView.backgroundColor = [UIColor purpleColor];
    but.frame = CGRectMake(50, 100, 110, 30);
    [but setTitle:@"系统默认" forState:UIControlStateNormal];
    //    [but setImage:[UIImage imageNamed:@"AppIcon60x60@3x"] forState:UIControlStateNormal];
    [but setImage:[UIImage imageNamed:@"check_icon"] forState:UIControlStateNormal];
    [self.view addSubview:but];
    
    
    XSButton *lz = [XSButton buttonWithType:UIButtonTypeCustom];
    lz.backgroundColor = [UIColor redColor];
//    lz.titleLabel.backgroundColor = [UIColor grayColor];
//    lz.imageView.backgroundColor = [UIColor purpleColor];
//    lz.offset = 5;
    lz.frame = CGRectMake(50, 160, titleSize_left.width+imageSize_check.width, titleSize_left.height);
    [lz setTitle:@"标题在左" forState:UIControlStateNormal];
    lz.imageSize = imageSize_check;
    lz.lyType = XSRelayoutButtonTypeLeft;
    [lz setImage:[UIImage imageNamed:@"check_icon"] forState:UIControlStateNormal];
    [self.view addSubview:lz];
    
    
    XSButton *lz1 = [XSButton buttonWithType:UIButtonTypeCustom];
    lz1.backgroundColor = [UIColor redColor];
//    lz1.titleLabel.backgroundColor = [UIColor grayColor];
//    lz1.imageView.backgroundColor = [UIColor purpleColor];
//    lz1.offset = 5;
    lz1.frame = CGRectMake(50, 300, titleSize_Botton.width, imageSize_AppIcon.height+titleSize_Botton.height);
    lz1.imageSize = imageSize_AppIcon;
    lz1.lyType = XSRelayoutButtonTypeBottom;
    [lz1 setTitle:@"标题在下" forState:UIControlStateNormal];
    [lz1 setImage:[UIImage imageNamed:@"AppIcon"] forState:UIControlStateNormal];
    [self.view addSubview:lz1];
    
}

//分类测试
- (void)test2 {
    
    CGSize imageSize_check = [UIImage imageNamed:@"check_icon"].size;
    CGSize imageSize_AppIcon = [UIImage imageNamed:@"AppIcon"].size;
    
    CGSize titleSize_left = [self sizeWithString:@"标题在左" font:[UIFont systemFontOfSize:18.0f] constraintSize:CGSizeMake(200, 200)];
    CGSize titleSize_Botton = [self sizeWithString:@"标题在下" font:[UIFont systemFontOfSize:18.0f] constraintSize:CGSizeMake(200, 200)];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.backgroundColor = [UIColor redColor];
    button1.frame = CGRectMake(40, 90, titleSize_left.width+imageSize_check.width,titleSize_left.height);
    [button1 setTitle:@"标题在左" forState:UIControlStateNormal];
    [button1 setImage:[UIImage imageNamed:@"check_icon"] forState:UIControlStateNormal];
    [self.view addSubview:button1];
    [button1 XSSetbuttonType:XSCategoryTypeLeft];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor redColor];
    button.frame = CGRectMake(40, 280, titleSize_Botton.width, imageSize_AppIcon.height+titleSize_Botton.height);
    [button setTitle:@"标题在下" forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"AppIcon"] forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button XSSetbuttonType:XSCategoryTypeBottom];
}


- (CGSize)sizeWithString:(NSString *)string font:(UIFont *)font constraintSize:(CGSize)constraintSize{
    CGSize stringSize = CGSizeZero;
    NSDictionary *attributes = @{NSFontAttributeName:font};
    NSInteger options = NSStringDrawingUsesFontLeading | NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin;
    CGRect stringRect = [string boundingRectWithSize:constraintSize options:options attributes:attributes context:NULL];
    stringSize = stringRect.size;
    return stringSize;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
