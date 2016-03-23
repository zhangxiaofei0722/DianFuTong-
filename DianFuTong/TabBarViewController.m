//
//  TabBarViewController.m
//  DianFuTong
//
//  Created by Ryan on 16/3/17.
//
//

#import "TabBarViewController.h"
#import "MainViewController.h"
#import "HotViewController.h"
#import "MarkViewController.h"
#import "MeViewController.h"
#import "NavigationController.h"
@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    MainViewController *mainVC = [[MainViewController alloc]init];
    [self addChildViewController:mainVC title:@"首页" image:@"shouyeweixuan3x" selectImage:@"shouyexuanzhong3x"];
    
    HotViewController *hotVC = [[HotViewController alloc]init];
    [self addChildViewController:hotVC title:@"热点" image:@"remenwixuan3x" selectImage:@"remenyixuanze3x"];
    
    MarkViewController *markVC = [[MarkViewController alloc]init];
    [self addChildViewController:markVC title:@"市场" image:@"shichangweixuanzhong3x" selectImage:@"shichangxuanzhong3x"];
    
    MeViewController *meVC = [[MeViewController alloc]init];
    [self addChildViewController:meVC title:@"我的" image:@"wodeweixuanghzong3x" selectImage:@"wodexuanzhong3x"];
    
  
}

-(void)addChildViewController:(UIViewController *)childViewController title:(NSString *)title image:(NSString *)image selectImage:(NSString *)selectImage
{
    childViewController.title = title;
    
    childViewController.tabBarItem.image = [[UIImage imageNamed:image]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childViewController.tabBarItem.selectedImage = [[UIImage imageNamed:selectImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    NSMutableDictionary *text = [NSMutableDictionary dictionary];
    text[NSForegroundColorAttributeName] = [UIColor colorWithRed:123/255.0 green:123/255.0 blue:123/255.0 alpha:1];
    
    NSMutableDictionary *selectText =[NSMutableDictionary dictionary];
    selectText[NSForegroundColorAttributeName] = [UIColor redColor];
    
    [childViewController.tabBarItem setTitleTextAttributes:text forState:UIControlStateNormal];
    [childViewController.tabBarItem setTitleTextAttributes:selectText forState:UIControlStateSelected];
    
    NavigationController *navigation = [[NavigationController alloc]initWithRootViewController:childViewController];
    
    [self addChildViewController:navigation];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
