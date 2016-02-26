//
//  NightModeLabel.m
//  NightMode
//
//  Created by langyue on 16/2/2.
//  Copyright © 2016年 langyue. All rights reserved.
//

#import "NightModeLabel.h"

@implementation NightModeLabel

//重写初始化
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.style = labelColorStyleNormal;//默认正常模式
        //正常模式颜色背景
        self.textColor = [UIColor blackColor];
        self.backgroundColor = [UIColor whiteColor];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeMode:) name:@"nightMode" object:nil];//注册夜间模式通知中心
    }
    return self;
}

//可视化时的初始化
-(void)awakeFromNib{
    [super awakeFromNib];
    self.style = labelColorStyleNormal;
    self.textColor = [UIColor blackColor];
    self.backgroundColor = [UIColor whiteColor];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeMode:) name:@"nightMode" object:nil];
}

//通知中心响应方法 模式切换
-(void)changeMode:(NSNotification*)notification{
    
    if (self.style == labelColorStyleNormal) {
        //正常模式->夜间模式
        self.style = labelColorStyleNight;
        self.textColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor colorWithWhite:0.415 alpha:1.000];
        
    }else{
        
        self.style = labelColorStyleNormal;
        self.textColor = [UIColor blackColor];
        self.backgroundColor = [UIColor whiteColor];
        
    }
    
    
    
}


-(void)dealloc{
    
    
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
