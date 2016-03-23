//
//  MeImageCell.m
//  DianFuTong
//
//  Created by Ryan on 16/3/21.
//
//

#import "MeImageCell.h"

@implementation MeImageCell
{
    UIImageView *_icon;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    [self createUI];
    return self;
}
-(void)createUI
{
    
        _icon=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.height, 180)];
        _icon.image = [UIImage imageNamed:@"wode_beijingtu"];
        _icon.contentMode =  UIViewContentModeLeft;
        [self.contentView addSubview:_icon];
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
