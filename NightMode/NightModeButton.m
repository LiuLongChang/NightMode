//
//  NightModeButton.m
//  NightMode
//
//  Created by langyue on 16/2/2.
//  Copyright © 2016年 langyue. All rights reserved.
//

#import "NightModeButton.h"

@implementation NightModeButton


-(instancetype)initWithFrame:(CGRect)frame type:(UIButtonType)buttonType{
    
    
    //调用系统方法设置样式 传入frame
    self = [NightModeButton buttonWithType:buttonType];
    self.frame = frame;
    //默认模式
    self.style = colorStyleNormal;
    self.backgroundColor = [UIColor whiteColor];
    [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeMode:) name:@"nightMode" object:nil];
    return self;
}



//可视化时的初始化方法
-(void)awakeFromNib{
    [super awakeFromNib];
    self.backgroundColor = [UIColor whiteColor];
    [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.style = colorStyleNormal;
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeMode:) name:@"nightMode" object:nil];
    
}


//通知中心响应方法
-(void)changeMode:(NSNotification *)notification{
    
    if (self.style == colorStyleNormal) {
     
        self.style = colorStyleNight;
        self.backgroundColor = [UIColor colorWithWhite:0.415 alpha:1.000];
        [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        
        
    }else{
        
        
        self.style = colorStyleNormal;
        self.backgroundColor = [UIColor whiteColor];
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
        
    }
    
}







/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
