//
//  MarkBtnCell.m
//  DianFuTong
//
//  Created by Ryan on 16/3/19.
//
//

#import "MarkBtnCell.h"
#define kJQViewW  self.view.frame.size.width
#define kJQViewH  self.view.frame.size.height

#define kLeftViewH [UIScreen mainScreen].bounds.size.height
#define kLeftViewW [UIScreen mainScreen].bounds.size.width
@implementation MarkBtnCell

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        CGRect Middlerect = CGRectMake(0,kLeftViewH/3,  kLeftViewW, kLeftViewH/3 -100 );
        
        UIView *middleView = [[UIView alloc]init];
        middleView.frame =Middlerect;
        [self.contentView addSubview:middleView];
        int btnW = 80;
        int btnH = 80;
        int count = 4;
        
        int margin = (kLeftViewW - count*btnW)/(count+1);
        NSArray *imageView = @[@"shichang_fabu",@"chiahng_qiugou",@"shichang_xiaoxi",@"shichang_fujing"];
       
        
        for (int i = 0; i < count; i ++) {
            int colum = i%count;
            CGFloat x = margin + colum *(margin + btnW);
            CGRect  viewRect = CGRectMake(x, 10, btnW, btnH);
            UIButton *btn = [UIButton buttonWithType: UIButtonTypeCustom];
            btn.frame = viewRect;
            btn.tag = i;
           
            [btn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
            
            [btn setImage:[UIImage imageNamed:imageView[i]] forState:UIControlStateNormal];
            [self.contentView addSubview:btn];
        }
            
    }
        return self;
}
-(void)buttonClick:(UIButton *)button
{
    NSLog(@"%ld",button.tag);
}


@end
