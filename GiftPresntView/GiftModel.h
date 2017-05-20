//
//  GiftModel.h
//  映客刷礼物模块
//
//  Created by JADON on 16/7/20.
//  Copyright © 2016年 JADON. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GiftModel : NSObject
@property (nonatomic,strong) UIImage *headImage; // 头像
@property (nonatomic,strong) UIImage *giftImage; // 礼物
@property (nonatomic,copy) NSString *name; // 送礼物者
@property (nonatomic,copy) NSString *giftName; // 礼物名称
@property (nonatomic,assign) NSInteger giftCount; // 礼物个数
@end