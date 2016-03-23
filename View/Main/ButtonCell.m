//
//  ButtonCell.m
//  DianFuTong
//
//  Created by Ryan on 16/3/17.
//
//

#import "ButtonCell.h"

#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT  [UIScreen mainScreen].bounds.size.height

@implementation ButtonCell
{
    UIButton *_button;
    NSArray *_buttonArr;
    NSArray *_imageArr;
    UIButton *_seasonButton;
    NSArray *_seasonImage;
    NSArray *_seasonArr;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
  //  [self createUI];
    return self;
}
-(void)createUI
{
    _buttonArr = @[@"农业",@"林业",@"牧业",@"渔业"];
    _imageArr = @[@"shouye_nongye",@"shouye_lingye",@"shouye_muye",@"shouye_yuye"];
    
    for (int i = 0; i < 4; i++) {
        _button = [[UIButton alloc]initWithFrame:CGRectMake(i*WIDTH/4, 5, WIDTH/4, WIDTH/4)];
        _button.tag = i;
        
        [self.contentView addSubview:_button];
       // _button.backgroundColor = [UIColor yellowColor];
        [_button setImage:[UIImage imageNamed:_imageArr[i]] forState:UIControlStateNormal];
        
        [_button addTarget:self action:@selector(MainbuttonClick:) forControlEvents:UIControlEventTouchUpInside];
        
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(i*WIDTH/4, 90, WIDTH/4, 25)];
        label.text = _buttonArr[i];
        label.textAlignment = NSTextAlignmentCenter;
      //  label.backgroundColor =[UIColor redColor];
        [self.contentView addSubview:label];
       }
    
    
    _seasonArr = @[@"当季",@"错季"];
    _seasonImage = @[@"shouye_dangjia",@"shouye_cuoji"];
    for (int i = 0; i < 2; i++) {
        _seasonButton = [[UIButton alloc]initWithFrame:CGRectMake(i * WIDTH/2+20, 135, WIDTH/2-40, 44)];
        _seasonButton.tag = 100+i;
        [self.contentView addSubview:_seasonButton];
        
        [_seasonButton setImage:[UIImage imageNamed:_seasonImage[i]] forState:UIControlStateNormal];
       
        [_seasonButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
        [_seasonButton addTarget:self action:@selector(seasonClick:) forControlEvents:UIControlEventTouchUpInside];
        
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(i * WIDTH/2+20, 135, WIDTH/2-40, 44)];
        lab.text = _seasonArr[i];
        if ([lab.text isEqual:@"当季"]) {
            lab.textColor = [UIColor colorWithRed:0/255.f green:219/255.0f blue:127/255.0f alpha:1];
        }else{
            lab.textColor = [UIColor colorWithRed:250/255.f green:206/255.0f blue:108/255.0f alpha:1];
        }
        lab.textAlignment = NSTextAlignmentCenter;
        lab.font = [UIFont boldSystemFontOfSize:17];
        [self.contentView addSubview:lab];
    }
    
    UIImageView *image =[[UIImageView alloc]initWithFrame:CGRectMake(10, 190, 20, 20)];
    image.image = [UIImage imageNamed:@"shouye_jingpin"];
    [self.contentView addSubview:image];
    
    
    UILabel *la = [[UILabel alloc]initWithFrame:CGRectMake(35, 180, 140, 40)];
    la.text = @"精品推荐";
    [self.contentView addSubview:la];
}
//四个button的点击事件
-(void)MainbuttonClick:(UIButton *)sender
{
   
}
//当季错季点击事件
-(void)seasonClick:(UIButton *)sender
{
    NSLog(@"%ld",sender.tag);
}

//-(void)createUI
//{
//    CGRect rect = CGRectMake(0, 0, kLeftViewW, kLeftViewH/3 );
//    UIView *middleView = [[UIView alloc]init];
//    self.middleView = middleView;
//    middleView.frame =rect;
//    
//    [self.contentView addSubview:middleView];
//    
//    int btnW = 80;
//    int btnH = 80;
//    int count = 4;
//    int margin = (kLeftViewW - count*btnW)/(count+1);
//    NSArray *imageView = @[@"shouye_nongye",@"shouye_lingye",@"shouye_muye",@"shouye_yuye"];
//    NSArray *tittle = @[@"农业",@"林业",@"牧业",@"渔业"];
//    
//    for (int i = 0; i < count; i ++) {
//        int colum = i%count;
//        CGFloat x = margin + colum *(margin + btnW);
//        CGRect  viewRect = CGRectMake(x, 10, btnW, btnH);
//
//        UIView *littleView = [[UIView alloc]init];
//        self.littleView = littleView;
//        littleView.tag = i;
//        littleView.frame = viewRect;
//        //littleView.backgroundColor = [UIColor yellowColor];
//        [middleView addSubview:littleView];
//       
//        [self creatViewWithImage:imageView[i] labeltitle:tittle[i] view:self.littleView ];
//       
//        
//    }
//    
////    CGRect firstBtn = CGRectMake(40, 130, 150, 44);
////    CGRect secondBtn = CGRectMake(200, 130, 150, 44);
//    CGRect firstBtn = CGRectMake(20, 130, rect.size.width/2-30, 44) ;
//    CGRect secondBtn =CGRectMake(rect.size.width/2+10, 130, rect.size.width/2-30, 44);
//    CGRect thirdBtn = CGRectMake(10, 180, 140, 44);
//    
//    
//    [self creatButtonWithFrame:firstBtn name:@"shouye_dangjia" tittle:@"当季"];
//    [self creatButtonWithFrame:secondBtn name:@"shouye_cuoji" tittle:@"错季"];
//    [self creatButtonWithFrame:thirdBtn name:nil tittle:@"精品推荐"];
//    
//    CGRect thirdFrame= CGRectMake(10, 190, 20, 20);
//    UIImageView *image = [[UIImageView alloc]initWithFrame:thirdFrame];
//    image.image = [UIImage imageNamed:@"shouye_jingpin"];
//    [self.middleView addSubview:image];
//    
//}
//-(void)creatViewWithImage:(NSString*)image labeltitle:(NSString*)title view:(UIView*)view
//{
//    
//    UIButton *btn = [ UIButton buttonWithType:UIButtonTypeCustom];
//    btn.titleLabel.font = [UIFont boldSystemFontOfSize:17];
//    [btn setFrame:CGRectMake(0, 0, 80, 80)];
//    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
//  
//    btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
//    [btn addTarget:self action:@selector(HomebuttonClick:) forControlEvents:UIControlEventTouchUpInside];
//    [view addSubview:btn];
//    
//    UILabel *label = [[UILabel alloc]init];
//    
//    label.text = title;
//    label.frame = CGRectMake(25, 70, 60, 44);
//    
//    [view addSubview:label];
//    
//    
//}
//-(void)HomebuttonClick:(UIButton*)btn
//{
//    
//    NSLog(@"%ld",btn.tag);
//}
//-(void)creatButtonWithFrame:(CGRect)frame name:(NSString*)name tittle:(NSString*)tittle
//{
//    UIButton *btn = [ UIButton buttonWithType:UIButtonTypeCustom];
//    //btn.backgroundColor = [UIColor yellowColor];
//    btn.titleLabel.font = [UIFont boldSystemFontOfSize:17];
//    [btn setFrame:frame];
//    [btn setTitleEdgeInsets:UIEdgeInsetsMake(10, 0, 10, 0)];
//    btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
//    [btn setBackgroundImage:[UIImage imageNamed:name ] forState:UIControlStateNormal];
//    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
//    [btn setTitle:tittle forState:UIControlStateNormal];
//    [btn setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
//    
//    [btn addTarget:self action:@selector(pressButtoned:) forControlEvents:UIControlEventTouchUpInside];
//    
//    [self.middleView addSubview:btn];
//    
//    
//}
//
//-(void)pressButtoned:(UIButton *)button
//{
//    NSLog(@"..");
//}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
