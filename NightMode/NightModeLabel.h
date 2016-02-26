//
//  NightModeLabel.h
//  NightMode
//
//  Created by langyue on 16/2/2.
//  Copyright © 2016年 langyue. All rights reserved.
//

#import <UIKit/UIKit.h>



/*
*   颜色转态枚举值
*
*
*/

typedef enum LabelModeColorStyle{
    labelColorStyleNormal = 1, // 正常模式
    labelColorStyleNight = 2 //夜间模式
}labelColorStyle;




@interface NightModeLabel : UILabel




@property(nonatomic,assign)labelColorStyle style;






@end
