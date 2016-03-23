//
//  MainViewController.m
//  DianFuTong
//
//  Created by Ryan on 16/3/17.
//
//

#import "MainViewController.h"
#import "NavigationController.h"
#import "ScrollViewCell.h"
#import "JingPinCell.h"
#import "JingPinModel.h"
#import "ButtonCell.h"
#import "AgricultureViewController.h"
#import "ForestryViewController.h"
#import "AnimalViewController.h"
#import "FishViewController.h"
#import "DangJiViewController.h"
#import "CuoJiViewController.h"
#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT  [UIScreen mainScreen].bounds.size.height
@interface MainViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *_tableView;
    NSArray *_dataArr;
    
    
    
    UIButton *_button;
    NSArray *_buttonArr;
    NSArray *_imageArr;
    UIButton *_seasonButton;
    NSArray *_seasonImage;
    NSArray *_seasonArr;
   
}


@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"垫付通";
    
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.8],NSForegroundColorAttributeName,nil]];
    
    self.view.backgroundColor =[UIColor whiteColor];
    [self createData];
    [self createUI];
    
}
-(void)choseTerm:(UIButton *)button
{
    NSLog(@"%ld",button.tag);
    
}

-(void)createData
{
    _dataArr = @[@"shouye_tupian",@"shouye_tupian",@"shouye_tupian",@"shouye_tupian",@"shouye_tupian",@"shouye_tupian",@"shouye_tupian"];
}
-(void)createUI
{
    CGRect frame = self.view.frame;
    frame.size.height -=64;
    _tableView = [[UITableView alloc]initWithFrame:frame ];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.backgroundColor = [UIColor colorWithWhite:0.96 alpha:1];
    [self.view addSubview:_tableView];
}

#pragma mark - tableViewDelegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{//设置tableView展示的分段
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch (section) {
        case 0:{
            return 1;
        }break;
        case 1:{
            return 1;
        }break;
        case 2:{
            return _dataArr.count;
        }break;
    }
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.section) {
        case 0:{
            return 170;
        }break;
        case 1:{
            return 210;
        }break;
        case 2:{
            return 210;
        }break;
    }
    return 0;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.section) {
        case 0:{
            ScrollViewCell *sc = [tableView dequeueReusableCellWithIdentifier:@"www"];
            if (!sc) {
                sc = [[ScrollViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"www"];
                
            }
           
            return sc;

        }break;
        case 1:{

            ButtonCell *button = [tableView dequeueReusableCellWithIdentifier:@"eee"];
            if (!button) {
                button = [[ButtonCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"eee"];
                _buttonArr = @[@"农业",@"林业",@"牧业",@"渔业"];
                _imageArr = @[@"shouye_nongye",@"shouye_lingye",@"shouye_muye",@"shouye_yuye"];
                
                for (int i = 0; i < 4; i++) {
                    _button = [[UIButton alloc]initWithFrame:CGRectMake(i*WIDTH/4, 180, WIDTH/4, WIDTH/4)];
                    _button.tag = i;
                    
                    [_tableView addSubview:_button];
                    // _button.backgroundColor = [UIColor yellowColor];
                    [_button setImage:[UIImage imageNamed:_imageArr[i]] forState:UIControlStateNormal];
                    
                    [_button addTarget:self action:@selector(MainbuttonClick:) forControlEvents:UIControlEventTouchUpInside];
                    
                    
                    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(i*WIDTH/4, 180+WIDTH/4, WIDTH/4, 25)];
                    label.text = _buttonArr[i];
                    label.textAlignment = NSTextAlignmentCenter;
                    //label.backgroundColor =[UIColor redColor];
                    [_tableView addSubview:label];
                }
                
                
                _seasonArr = @[@"当季",@"错季"];
                _seasonImage = @[@"shouye_dangjia",@"shouye_cuoji"];
                for (int i = 0; i < 2; i++) {
                    _seasonButton = [[UIButton alloc]initWithFrame:CGRectMake(i * WIDTH/2+20, WIDTH/4+215, WIDTH/2-40, 44)];
                    _seasonButton.tag = 100+i;
                    [_tableView addSubview:_seasonButton];
                    
                    [_seasonButton setImage:[UIImage imageNamed:_seasonImage[i]] forState:UIControlStateNormal];
                    
                    [_seasonButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
                    
                    [_seasonButton addTarget:self action:@selector(seasonClick:) forControlEvents:UIControlEventTouchUpInside];
                    
                    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(i * WIDTH/2+20, WIDTH/4+215, WIDTH/2-40, 44)];
                    lab.text = _seasonArr[i];
                    if ([lab.text isEqual:@"当季"]) {
                        lab.textColor = [UIColor colorWithRed:0/255.f green:219/255.0f blue:127/255.0f alpha:1];
                    }else{
                        lab.textColor = [UIColor colorWithRed:250/255.f green:206/255.0f blue:108/255.0f alpha:1];
                    }
                    lab.textAlignment = NSTextAlignmentCenter;
                    lab.font = [UIFont boldSystemFontOfSize:17];
                    [_tableView addSubview:lab];
                }
                
                UIImageView *image =[[UIImageView alloc]initWithFrame:CGRectMake(10, WIDTH/4+265, 20, 20)];
                image.image = [UIImage imageNamed:@"shouye_jingpin"];
                [_tableView addSubview:image];
                
                
                UILabel *la = [[UILabel alloc]initWithFrame:CGRectMake(35, WIDTH/4+255, 140, 40)];
                la.text = @"精品推荐";
                [_tableView addSubview:la];
            }
           
//            button.selectionStyle=UITableViewCellSelectionStyleNone;
           
            return button;


        }break;
            case 2:{
            JingPinCell *cell = [tableView dequeueReusableCellWithIdentifier:@"qqq" ];
            if (!cell) {
                cell = [[JingPinCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"qqq"];
               
            }
            JingPinModel  *jm = [[JingPinModel alloc] init];
            jm.icon = [_dataArr objectAtIndex:indexPath.row];
            [cell customWithModel:jm];
                    
            return cell;
        }break;
    }
    
    return nil;
}
//四个button的点击事件
-(void)MainbuttonClick:(UIButton *)sender
{
    switch (sender.tag) {
        case 0:{
            AgricultureViewController *agriculture = [[AgricultureViewController alloc]init];
            
            [self.navigationController pushViewController:agriculture animated:YES];
           
        }break;
        case 1:{
            ForestryViewController *forestry = [[ForestryViewController alloc]init];
            
            [self.navigationController pushViewController:forestry animated:YES];
            
        }break;
        case 2:{
            AnimalViewController *animal = [[AnimalViewController alloc]init];
            
            [self.navigationController pushViewController:animal animated:YES];
            
        }break;
        case 3:{
            FishViewController *fish = [[FishViewController alloc]init];
            
            [self.navigationController pushViewController:fish animated:YES];
            
        }break;
            
        
    }
}
//当季错季点击事件
-(void)seasonClick:(UIButton *)sender
{
    switch (sender.tag) {
        case 100:{
            DangJiViewController *dangji = [[DangJiViewController alloc]init];
            
            [self.navigationController pushViewController:dangji animated:YES];
        }break;
        case 101:{
            CuoJiViewController *cuoji = [[CuoJiViewController alloc]init];
            
            [self.navigationController pushViewController:cuoji animated:YES];
        }break;
            
        
    }
}
//tableVie点击事件
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
