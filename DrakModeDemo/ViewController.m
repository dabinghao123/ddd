//
//  ViewController.m
//  DrakModeDemo
//
//  Created by yujianMac on 2019/10/11.
//  Copyright © 2019 yujianMac. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLable;

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //1.代码动态设置颜色
    if (@available(iOS 13.0, *)) {
        UIColor *dyColor = [UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull trainCollection) {
            if ([trainCollection userInterfaceStyle] == UIUserInterfaceStyleLight) {
                return [UIColor redColor];//正常模式
            }
            else {
                return [UIColor greenColor];//暗黑模式
            }
        }];
    } else {
        // Fallback on earlier versions
    }
    
    //2.使用assets.xcassets中的颜色
    if (@available(iOS 11.0, *)) {
        [self.titleLable setTextColor:[UIColor colorNamed:@"hahaColor"]];
    } else {
        // Fallback on earlier versions
    }
    
    //强制使用正常模式
    if (@available(iOS 13.0, *)) {
        self.overrideUserInterfaceStyle =  UIUserInterfaceStyleLight;
    } else {
       // Fallback on earlier versions
    }
}


@end
