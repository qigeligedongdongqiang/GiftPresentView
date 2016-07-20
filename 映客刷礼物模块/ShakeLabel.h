//
//  ShakeLabel.h
//  映客刷礼物模块
//
//  Created by JADON on 16/7/20.
//  Copyright © 2016年 JADON. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShakeLabel : UILabel
// 动画时间
@property (nonatomic,assign) NSTimeInterval duration;
// 描边颜色
@property (nonatomic,strong) UIColor *borderColor;

- (void)startAnimWithDuration:(NSTimeInterval)duration;
@end

