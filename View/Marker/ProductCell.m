//
//  ProductCell.m
//  DianFuTong
//
//  Created by Ryan on 16/3/19.
//
//

#import "ProductCell.h"

@implementation ProductCell

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _image = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0,self.contentView.frame.size.width, 150)];
        [self.contentView addSubview:_image];
        
        _nameColor = [[UILabel alloc]initWithFrame:CGRectMake(0, 120, self.contentView.frame.size.width, 30)];
        _nameColor.backgroundColor = [UIColor colorWithRed:79/255.0 green:79/255.0 blue:84/255.0 alpha:0.5];
        [self.contentView addSubview:_nameColor];
        
        _nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 120, self.contentView.frame.size.width, 30)];
        _nameLabel.textAlignment =  NSTextAlignmentCenter ;
        _nameLabel.textColor = [UIColor whiteColor];
        [self.contentView addSubview:_nameLabel];
        
        
        _priceLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 155, self.contentView.frame.size.width, 25)];
        _priceLabel.textAlignment = NSTextAlignmentLeft;
        _priceLabel.font = [UIFont boldSystemFontOfSize:17];
        [self.contentView addSubview:_priceLabel];
        
        _guanzhuimage = [[UIImageView alloc]initWithFrame:CGRectMake(10, 185, 15, 10)];
        [self.contentView addSubview:_guanzhuimage];
        
        _guanzhu = [[UILabel alloc]initWithFrame:CGRectMake(30, 180, self.contentView.frame.size.width/2-50, 20)];
        _guanzhu.font = [UIFont systemFontOfSize:13];
        _guanzhu.textColor = [UIColor grayColor];
        
        [self.contentView addSubview:_guanzhu];
        
        _timeimage = [[UIImageView alloc]initWithFrame:CGRectMake(self.contentView.frame.size.width/2+20, 184, 12, 12)];
        [self.contentView addSubview:_timeimage];
        
        _timeLabel = [[UILabel alloc]initWithFrame:CGRectMake(self.contentView.frame.size.width/2+35, 179, self.contentView.frame.size.width/2-30, 20)];
        _timeLabel.font = [UIFont systemFontOfSize:13];
        _timeLabel.textColor = [UIColor grayColor];
        
        [self.contentView addSubview:_timeLabel];
        
        _view = [[UIView alloc]initWithFrame:CGRectMake(0, 176, self.contentView.frame.size.width, 1)];
        _view.backgroundColor = [UIColor grayColor];
        [self.contentView addSubview:_view];
    }
    return self;
    
}


-(void)customWithModel:(ProductModel *)pm
{

    _image.image = [UIImage imageNamed:pm.image];
    _nameLabel.text = @"产品名称";
    _priceLabel.text = @"￥6.66";
    _guanzhuimage.image = [UIImage imageNamed:@"shichang_chankan"];
    _guanzhu.text = @"25";
    _timeimage.image = [UIImage imageNamed:@"shichang_shijian"];
    _timeLabel.text = @"2天前";

}

@end
