//
//  ViewController.m
//  UIActivityViewControllerDemo
//
//  Created by admin on 16/5/7.
//  Copyright © 2016年 AlezJi. All rights reserved.
//
//http://blog.sina.com.cn/s/blog_6d01cce30101j7cc.html
//http://blog.jobbole.com/66326/
//http://www.jianshu.com/p/9de528d96466
//http://www.jianshu.com/p/4adf1037e572
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor redColor];

}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSArray *array = @[@"test1", @"test2"];
    
    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:array applicationActivities:nil];
    
    activityVC.excludedActivityTypes = @[UIActivityTypePostToWeibo, UIActivityTypeAssignToContact, UIActivityTypePrint ,UIActivityTypeCopyToPasteboard,UIActivityTypeAssignToContact,UIActivityTypeSaveToCameraRoll,UIActivityTypeMessage ];
    
    [self presentViewController:activityVC animated:YES
                     completion:^{
                         NSLog(@"Log");
                     }];}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
