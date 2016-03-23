//
//  MarkScrollCell.m
//  DianFuTong
//
//  Created by Ryan on 16/3/19.
//
//

#import "MarkScrollCell.h"

@implementation MarkScrollCell
{
    UIScrollView *_SV;
}

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _SV = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 180)];
        for (int i = 0; i < 4; i++) {
            UIImageView *iv = [[UIImageView alloc]initWithFrame:CGRectMake(i*_SV.bounds.size.width, 0, _SV.bounds.size.width, _SV.bounds.size.height)];
            iv.image = [UIImage imageNamed:@"tupian_market"];
            
            [_SV addSubview:iv];
            
        }
        _SV.contentSize = CGSizeMake(_SV.bounds.size.width*4, 0);
        _SV.pagingEnabled = YES;
        _SV.showsHorizontalScrollIndicator = NO;
        [self.contentView addSubview:_SV];
    }
    return self;
}
@end
