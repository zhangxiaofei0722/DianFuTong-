//
//  HotViewCell.h
//  DianFuTong
//
//  Created by Ryan on 16/3/18.
//
//

#import <UIKit/UIKit.h>

@interface HotViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *shouyiTime;
@property (weak, nonatomic) IBOutlet UILabel *price;
@property (weak, nonatomic) IBOutlet UILabel *shouyi;
@property (weak, nonatomic) IBOutlet UIImageView *bigimage;

@end
