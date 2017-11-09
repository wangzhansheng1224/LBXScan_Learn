//
//  ViewController.m
//  LBXScan
//
//  Created by 王战胜 on 2017/11/8.
//  Copyright © 2017年 gocomtech. All rights reserved.
//

#import "ViewController.h"
#import "Global.h"
#import "StyleDIY.h"
#import "DIYScanViewController.h"
#import "QQLBXScanViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn=[[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    btn.backgroundColor=[UIColor redColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}


- (void)btnClick{
    
    [self qqStyle];
//    DIYScanViewController *vc = [DIYScanViewController new];
//    vc.style = [StyleDIY ZhiFuBaoStyle];
//    vc.isOpenInterestRect = YES;
//    vc.libraryType = [Global sharedManager].libraryType;
//    vc.scanCodeType = [Global sharedManager].scanCodeType;
//
//    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark -模仿qq界面
- (void)qqStyle
{
    //添加一些扫码或相册结果处理
    QQLBXScanViewController *vc = [QQLBXScanViewController new];
    vc.libraryType = [Global sharedManager].libraryType;
    vc.scanCodeType = [Global sharedManager].scanCodeType;
    
    vc.style = [StyleDIY qqStyle];
    
    //镜头拉远拉近功能
    vc.isVideoZoom = YES;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
