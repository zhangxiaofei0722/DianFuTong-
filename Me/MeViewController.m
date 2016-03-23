//
//  MeViewController.m
//  DianFuTong
//
//  Created by Ryan on 16/3/17.
//
//

#import "MeViewController.h"
#import "MeImageCell.h"
#import "MeButtonCell.h"
@interface MeViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *_tableView;
    NSArray *_nameArr;
    NSArray *_imageArr;
   
}

@end

@implementation MeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"我的";
    
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.8],NSForegroundColorAttributeName,nil]];
    
    
    [self createTableView];
}

-(void)createTableView
{
    _nameArr = @[@"我的发布",@"我的订单",@"我的账户",@"我的推广",@"帮助中心",@"联系客服",@"设置"];
    _imageArr = @[@"wode_wodefabu",@"wode_maichudingdan",@"wode_wodezhanghu",@"wode_wodeguanzhu",@"wode_wodebangzhu",@"wode_lianxikefu",@"wode_wodeshezhi"];
    CGRect frame = self.view.frame;
    frame.size.height -=64;
    
    _tableView = [[UITableView alloc]initWithFrame:frame];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch (section) {
        case 0:{
            return 1;
        }break;
        case 1:{
            return 1;
        }break;
        case 2:{
            return _nameArr.count;
        }break;
    }
    return 0;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.section) {
        case 0:{
            return 180;
        }break;
        case 1:{
            return 40;
        }break;
        case 2:{
            return 44;
        }break;
    }
    return 0;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    switch (indexPath.section) {
        case 0:{
            MeImageCell *image = [tableView dequeueReusableCellWithIdentifier:@"www"];
            if (!image) {
                image = [[MeImageCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"www"];
            }
            
            return image;
        }break;
        case 1:{
            
            MeButtonCell *button = [tableView dequeueReusableCellWithIdentifier:@"eee"];
            if (!button) {
                button = [[MeButtonCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"eee"];
                
            }
            button.selectionStyle=UITableViewCellSelectionStyleNone;
            button.backgroundColor = [UIColor whiteColor];
            return button;
        }break;
        case 2:{
                UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"qqq"];
                if (!cell) {
                    cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"qqq"];
                }
                cell.textLabel.text = [_nameArr objectAtIndex:indexPath.row];
                cell.imageView.image = [UIImage imageNamed:_imageArr[indexPath.row]];
            
                return cell;
        }break;
    }
    
    return nil;

}
//点击事件
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //让cell被选中时变灰的状态，恢复成没变灰的状态
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
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
