//
//  ViewController.m
//  NightMode
//
//  Created by langyue on 16/2/2.
//  Copyright © 2016年 langyue. All rights reserved.
//

#import "ViewController.h"

#import "NightModeButton.h"
#import "NightModeLabel.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NightModeButton * btn = [NightModeButton buttonWithType:UIButtonTypeCustom];
    btn.frame =  CGRectMake(100, 100, 100, 100);
    [btn setTitle:@"模式" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor cyanColor];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    NightModeLabel * label = [[NightModeLabel alloc] initWithFrame:CGRectMake(100,200 , 300,350)];
    [self.view addSubview:label];
    label.numberOfLines = 0;
    label.text = @"天天向上天天有你天天走心上天天有你天天走心上天天有你天天走心上天天有你天天走心上天天有你天天走心上天天有你天天走心天天向上天天有你天天走心上天天有你天天走心上天天有你天天走心上天天有你天天走心上天天有你天天走心上天天有你天天走心天天向上天天有你天天走心上天天有你天天走心上天天有你天天走心上天天有你天天走心上天天有你天天走心上天天有你天天走心天天向上天天有你天天走心上天天有你天天走心上天天有你天天走心上天天有你天天走心上天天有你天天走心上天天有你天天走心天天向上天天有你天天走心上天天有你天天走心上天天有你天天走心上天天有你天天走心上天天有你天天走心上天天有你天天走心";
    
    
    
    
}



-(void)btnAction{
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"nightMode" object:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
