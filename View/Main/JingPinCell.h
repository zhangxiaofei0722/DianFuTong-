//
//  JingPinCell.h
//  DianFuTong
//
//  Created by Ryan on 16/3/17.
//
//

#import <UIKit/UIKit.h>
#import "JingPinModel.h"
@interface JingPinCell : UITableViewCell

@property (nonatomic,strong) UIImageView *iconView;

@property (nonatomic,strong) UILabel *shouyiTimeLabel;

@property (nonatomic,strong) UILabel *priceLabel;

@property (nonatomic,strong) UILabel *huibaoTimeLabel;

-(void)customWithModel:(JingPinModel *)jm;

@end
