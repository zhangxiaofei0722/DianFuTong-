//
//  ScrollViewCell.m
//  DianFuTong
//
//  Created by Ryan on 16/3/17.
//
//

#import "ScrollViewCell.h"

@implementation ScrollViewCell
{
    UIScrollView *_SV;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    [self createUI];
    return self;
}


-(void)createUI
{
    _SV = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 180)];
    for (int i = 0; i < 4; i++) {
        UIImageView *iv = [[UIImageView alloc]initWithFrame:CGRectMake(i*_SV.bounds.size.width, 0, _SV.bounds.size.width, _SV.bounds.size.height)];
        iv.image = [UIImage imageNamed:@"shouye_tupian"];
        [_SV addSubview:iv];
    }
    _SV.contentSize = CGSizeMake(_SV.bounds.size.width*4, 0);
    _SV.pagingEnabled = YES;
    _SV.showsHorizontalScrollIndicator = NO;
    [self.contentView addSubview:_SV];
    
  
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
