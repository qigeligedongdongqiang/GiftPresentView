//
//  ViewController.m
//  映客刷礼物模块
//
//  Created by JADON on 16/7/20.
//  Copyright © 2016年 JADON. All rights reserved.
//

#import "ViewController.h"
#import "PresentView.h"
#import "GiftModel.h"
#import "AnimOperation.h"



@interface ViewController ()
@property (nonatomic,strong) NSMutableArray *giftInfos; // 礼物模型数组
@property (nonatomic,strong) NSOperationQueue *queue; // 全局动画队列
@end

@implementation ViewController


- (NSMutableArray *)giftInfos {
    if (_giftInfos == nil) {
        _giftInfos = [[NSMutableArray alloc] init];
        
        GiftModel *model1 = [[GiftModel alloc] init];
        model1.headImage = [UIImage imageNamed:@"luffy"];
        model1.giftImage = [UIImage imageNamed:@"flower"];
        model1.name = @"拉登";
        model1.giftName = @"送了一朵鲜花";
        model1.giftCount = 5;
        
        GiftModel *model2 = [[GiftModel alloc] init];
        model2.headImage = [UIImage imageNamed:@"code"];
        model2.giftImage = [UIImage imageNamed:@"mogu"];
        model2.name = @"卡扎菲";
        model2.giftName = @"送了一朵蘑菇";
        model2.giftCount = 9;
        
        GiftModel *model3 = [[GiftModel alloc] init];
        model3.headImage = [UIImage imageNamed:@"fang"];
        model3.giftImage = [UIImage imageNamed:@"house"];
        model3.name = @"土豪";
        model3.giftName = @"送了你一栋房子!";
        model3.giftCount = 4;
        
        GiftModel *model4 = [[GiftModel alloc] init];
        model4.headImage = [UIImage imageNamed:@"hashiqi"];
        model4.giftImage = [UIImage imageNamed:@"dogfood"];
        model4.name = @"哈士奇";
        model4.giftName = @"送了你一袋狗粮!";
        model4.giftCount = 2;
        
        [_giftInfos addObject:model1];
        [_giftInfos addObject:model2];
        [_giftInfos addObject:model3];
        [_giftInfos addObject:model4];
        
    }
    return _giftInfos;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    queue.maxConcurrentOperationCount = 2; // 队列分发
    _queue = queue;
    
    
    
}

// 模拟收到礼物消息的回调
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    for (int i = 0; i < self.giftInfos.count; i++) {
        @autoreleasepool {
            
            NSLog(@"%@",[self.giftInfos[i] name]);
            
            AnimOperation *op = [[AnimOperation alloc] init]; // 初始化操作
            op.index = i; // 设置操作的 index
            op.listView = self.view; // 要添加到的父视图
            op.model = self.giftInfos[i]; // 数据源
            [_queue addOperation:op];
            
        }
    }
    
}



@end
