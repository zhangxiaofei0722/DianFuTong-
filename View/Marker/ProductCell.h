//
//  ProductCell.h
//  DianFuTong
//
//  Created by Ryan on 16/3/19.
//
//

#import <UIKit/UIKit.h>
#import "ProductModel.h"
@interface ProductCell : UICollectionViewCell

@property(nonatomic,strong)UIImageView *image;

@property(nonatomic,strong)UILabel *nameLabel;

@property(nonatomic,strong)UILabel *nameColor;

@property(nonatomic,strong)UILabel *priceLabel;

@property(nonatomic,strong)UILabel *guanzhu;

@property(nonatomic,strong)UILabel *timeLabel;

@property(nonatomic,strong)UIImageView *guanzhuimage;

@property(nonatomic,strong)UIImageView *timeimage;

@property(nonatomic,strong)UIView *view;

-(void)customWithModel:(ProductModel *)jm;
@end
