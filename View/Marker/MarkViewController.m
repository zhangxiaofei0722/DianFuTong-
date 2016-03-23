//
//  MarkViewController.m
//  DianFuTong
//
//  Created by Ryan on 16/3/17.
//
//

#import "MarkViewController.h"
#import "MarkScrollCell.h"
#import "MarkBtnCell.h"
#import "ProductCell.h"
#import "ProductModel.h"
@interface MarkViewController ()<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UISearchBarDelegate>
{
    
    NSArray *_dataArr;
    UICollectionView *_collectionView;
    UISearchBar *_customSearchBar;
}

@end

@implementation MarkViewController
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"分类" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.leftBarButtonItem.tintColor = [ UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
   // self.navigationItem.titleView = [[UISearchBar alloc]initWithFrame:CGRectMake(150, 0, 150, 50)];
    
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.8],NSForegroundColorAttributeName,nil]];
 
    [self createUI];
    [self createData];
    
    
}


-(void)createData
{
    _dataArr = @[@"shichang_shangping",@"shichang_shangping",@"shichang_shangping",@"shichang_shangping",@"shichang_shangping",@"shichang_shangping",@"shichang_shangping",@"shichang_shangping",@"shichang_shangping",@"shichang_shangping"];
}
-(void)createUI
{
    CGRect frame = self.view.frame;
    frame.size.height -=64;
   
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    //方向
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    _collectionView = [[UICollectionView alloc]initWithFrame:frame collectionViewLayout:layout];
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
   
    _collectionView.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:_collectionView];
   
    //注册
    [_collectionView registerClass:[MarkScrollCell class] forCellWithReuseIdentifier:@"www"];
    [_collectionView registerClass:[MarkBtnCell class] forCellWithReuseIdentifier:@"qqq"];
    [_collectionView registerClass:[ProductCell class] forCellWithReuseIdentifier:@"eee"];
    
}


#pragma mark - delegate

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 3;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    switch (section) {
        case 0:{
            return 1;
        }break;
        case 1:{
            return 1;
        }break;
        case 2:{
            return _dataArr.count;
        }break;
            
    }
    return 0;

}


-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.section) {
        case 0:{
            return CGSizeMake(self.view.frame.size.width, 180);
        }break;
        case 1:{
            return CGSizeMake(self.view.frame.size.width, 100);
        }break;
        case 2:{
            return CGSizeMake(self.view.frame.size.width/2-5, 195);
        }break;
    }
    return CGSizeMake(0, 0);
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{

    switch (indexPath.section) {
        case 0:{
            MarkScrollCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"www" forIndexPath:indexPath];
            
            return cell;

        }break;
        case 1:{
            
            MarkBtnCell *btnCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"qqq" forIndexPath:indexPath];
            
            return btnCell;

        }break;
        case 2:{
            ProductCell *product = [collectionView dequeueReusableCellWithReuseIdentifier:@"eee" forIndexPath:indexPath];
            
            ProductModel *pm = [[ProductModel alloc]init];
            pm.image = [_dataArr objectAtIndex:indexPath.row];
            [product customWithModel:pm];
            
            //product.backgroundColor = [UIColor redColor];
           
            return product;
            
        }break;
        
    }
    
    return nil;
    
}

//设置水平方向cell最低间距
-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 10;
}
//垂直方向
-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 20;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
