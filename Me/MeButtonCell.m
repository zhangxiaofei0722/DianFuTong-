//
//  MeButtonCell.m
//  DianFuTong
//
//  Created by Ryan on 16/3/21.
//
//

#import "MeButtonCell.h"

@implementation MeButtonCell
{
    NSArray *_buttonArr;
    UIButton *_button;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    [self createButton];
    return self;
}-(void)createButton
{
    _buttonArr = @[@"关注项目",@"关注的人",@"我的粉丝",@"我的评价"];
    for (int i = 0; i < 4; i++) {
        _button = [[UIButton alloc]initWithFrame:CGRectMake(i * [UIScreen mainScreen].bounds.size.width/4, 0, [UIScreen mainScreen].bounds.size.width/4, 40)];
        _button.tag = i+100;
        
        [self.contentView addSubview:_button];
        [_button setTitle:_buttonArr[i] forState:UIControlStateNormal];
        [_button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _button.titleLabel.font = [UIFont systemFontOfSize:15];
        _button.titleLabel.textAlignment = NSTextAlignmentCenter;
        
        [_button addTarget:self action:@selector(MebuttonClick:) forControlEvents:UIControlEventTouchUpInside];
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 38, self.contentView.frame.size.width, 2)];
        view.backgroundColor = [UIColor colorWithRed:253/255.0 green:133/255.0 blue:0/255.0 alpha:1];
        
        [_button addSubview:view];
        
        UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/4 * i + [UIScreen mainScreen].bounds.size.width/4, 1, 2, 40)];
        view2.backgroundColor = [UIColor colorWithRed:253/255.0 green:133/255.0 blue:0/255.0 alpha:1];
        [self.contentView addSubview:view2];
        
        
        
    }
    
    
}

-(void)MebuttonClick:(UIButton *)button
{
    switch (button.tag) {
        case 100:{
            NSLog(@"%@",button.titleLabel);
        }break;
        case 101:{
            NSLog(@"%@",button.titleLabel);
        }break;
        case 102:{
            NSLog(@"%@",button.titleLabel);
        }break;
        case 103:{
            NSLog(@"%@",button.titleLabel);
        }break;
            
        default:
            break;
    }
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
