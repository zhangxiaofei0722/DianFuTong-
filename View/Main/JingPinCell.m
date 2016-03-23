//
//  JingPinCell.m
//  DianFuTong
//
//  Created by Ryan on 16/3/17.
//
//

#import "JingPinCell.h"

@implementation JingPinCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        [self createUI];
    }
    return self;
}
-(void)createUI
{
    
    _iconView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 208)];
    
    [self.contentView addSubview:_iconView];
    
    _shouyiTimeLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 150, [UIScreen mainScreen].bounds.size.width/3-20, 90)];
    
    [self.contentView addSubview:_shouyiTimeLabel];
    
    _priceLabel = [[UILabel alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/3+20, 150, [UIScreen mainScreen].bounds.size.width/3-20, 90)];
    [self.contentView addSubview:_priceLabel];
    
    _huibaoTimeLabel = [[UILabel alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/3*2, 150, [UIScreen mainScreen].bounds.size.width/3-20, 90)];
    
    [self.contentView addSubview:_huibaoTimeLabel];
    
    
}
-(void)customWithModel:(JingPinModel *)jm {
    _iconView.image = [UIImage imageNamed:jm.icon];
    _shouyiTimeLabel.text = @"收益时间";
    _shouyiTimeLabel.textColor = [UIColor whiteColor];
    _priceLabel.text = @"价格:100";
    _priceLabel.textColor = [UIColor whiteColor];
    _huibaoTimeLabel.text = @"回报时间";
    _huibaoTimeLabel.textColor = [UIColor whiteColor];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
