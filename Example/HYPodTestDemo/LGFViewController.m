//
//  LGFViewController.m
//  HYPodTestDemo
//
//  Created by ITHanYong on 01/18/2019.
//  Copyright (c) 2019 ITHanYong. All rights reserved.
//
#import <HYPodTestDemo/RadarMapView.h>
#import "LGFViewController.h"

@interface LGFViewController ()

@end

@implementation LGFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    ElementItem *item1 = [[ElementItem alloc]init];
    item1.itemPercent = @[@"0.85",@"0.8",@"0.95",@"0.9",@"1.0"];
    item1.itemColor = [UIColor greenColor];
    
    NSArray *titles = @[@"输出",@"KDA",@"发育",@"团战",@"生存"];
    
    RadarMapView *radar = [[RadarMapView alloc]initWithRadarElements:titles lengthColor:[UIColor colorWithRed:168.0/255.0 green:168.0/255.0 blue:168.0/255.0 alpha:1]];
    
    
    [radar addAbilitysWithElements:@[item1]];
    
    radar.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:radar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
