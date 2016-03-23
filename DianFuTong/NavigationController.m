//
//  NavigationController.m
//  DianFuTong
//
//  Created by Ryan on 16/3/17.
//
//

#import "NavigationController.h"

@interface NavigationController ()

@end

@implementation NavigationController



+ (void)initialize
{
    UINavigationBar *nv = [UINavigationBar appearance];
   
    // 设置导航栏背景
    [nv setBackgroundImage:[UIImage imageNamed:@"top_navigation_background"] forBarMetrics:UIBarMetricsDefault];
  
}



@end
