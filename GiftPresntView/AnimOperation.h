//
//  AnimOperation.h
//  映客刷礼物模块
//
//  Created by JADON on 16/7/20.
//  Copyright © 2016年 JADON. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PresentView.h"
#import "GiftModel.h"

@interface AnimOperation : NSOperation
@property (nonatomic,strong) PresentView *presentView;
@property (nonatomic,strong) UIView *listView;
@property (nonatomic,strong) GiftModel *model;
@property (nonatomic,assign) NSInteger index;
@end
