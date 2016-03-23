//
//  HotViewController.m
//  DianFuTong
//
//  Created by Ryan on 16/3/17.
//
//

#import "HotViewController.h"
#import "HotViewCell.h"
@interface HotViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)UITableView *tableView;

@property(nonatomic,strong)NSArray *arr;
@end

@implementation HotViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"热点";
    
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.8],NSForegroundColorAttributeName,nil]];
    [self createUI];
    [self data];
}
-(void)data
{
    _arr=@[@"remen_tupianyi",@"remen_tupianer",@"remen_tupianyi",@"remen_tupianer",@"remen_tupianyi",@"remen_tupianer",@"remen_tupianyi",@"remen_tupianer",@"remen_tupianyi",@"remen_tupianer",@"remen_tupianyi",@"remen_tupianer",@"remen_tupianyi",@"remen_tupianer"];
}
-(void)createUI
{
    CGRect frame = self.view.frame;
    frame.size.height -=64;
    _tableView = [[UITableView alloc]initWithFrame:frame ];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 160;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _arr.count;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    static NSString * Cell = @"cell";
    HotViewCell*cell = [tableView dequeueReusableCellWithIdentifier:Cell];
    if (cell == nil) {
        //cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:Cell];
        
        cell = [[[NSBundle mainBundle]loadNibNamed:@"HotViewCell" owner:nil options:nil]lastObject];
        
    }
    
    
    cell.selectionStyle=UITableViewCellSelectionStyleNone;
    
    return cell;
    
    
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
