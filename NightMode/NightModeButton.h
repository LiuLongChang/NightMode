//
//  NightModeButton.h
//  NightMode
//
//  Created by langyue on 16/2/2.
//  Copyright © 2016年 langyue. All rights reserved.
//

#import <UIKit/UIKit.h>


/*
*颜色状态枚举值
*
*/

typedef enum ModeColorStyle{
    colorStyleNormal = 1,
    colorStyleNight = 2
}colorStyle;





@interface NightModeButton : UIButton



@property(nonatomic,assign)colorStyle style;

-(instancetype)initWithFrame:(CGRect)frame type:(UIButtonType)buttonType;



@end
