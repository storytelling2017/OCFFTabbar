//
//  FFTest1Controller.m
//  FFUtil
//
//  Created by nono on 16/6/22.
//  Copyright © 2016年 nono. All rights reserved.
//

#import "FFTest1Controller.h"

//#import "FFCollectionView.h"

//#import "FFDefine.h"

//#import <SVProgressHUD.h>

//#import "NSDate+FFExpansion.h"

//#import "DSCollectionView.h"

//#import "FFCustomView.h"

//#import "FFTest2Controller.h"

//#import "FFVoiceUtil.h"

//#import <AFNetworking.h>

@interface FFTest1Controller ()

//@property (strong, nonatomic) FFVoiceUtil *util;

@property (assign, nonatomic) BOOL speaker;

/**collectionview*/
//@property (strong, nonatomic) DSCollectionView *collectionView;
///**数据源*/
//@property (strong, nonatomic) NSMutableArray *datasourse;
//
//@property (assign, nonatomic) NSUInteger count;

@end

@implementation FFTest1Controller


- (void)hiddenhud
{
    NSLog(@"假造");
//    [[FFProgressHUD shareInstance] hiddenHUD];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [FFProgressHUD showLoadingWithTipMsg:@"努力加载中..."];
//    [[FFProgressHUD shareInstance] showLoadingWithTipMsg:@"努力加载中...."];
//    [self performSelector:@selector(hiddenhud) withObject:nil afterDelay:2];
//    self.loginNeedAnim = NO;
//    self.isLogin = YES;
//    self.util = [FFVoiceUtil sharedVoice];
//    DSCollectionView *view = [DSCollectionView collectionViewWithFrame:CGRectMake(20, 80, 200, 100)];
//    view.cellWidth = CGSizeMake(55, 55);
//    
//    [self.view addSubview:view];
//    self.collectionView = view;
    
    
//    NSArray *dsiArray = @[@"热门",@"我添加的"];
//    
//    NSString *str = [dsiArray valueForKeyPath:@"热门"];
//    NSLog (@"%@", str);
//    NSString *predicateString =@"string IN { '热门' }";
//    
//    NSPredicate *predicate=[NSPredicate predicateWithFormat:predicateString];
//    //    predicate = [NSPredicate predicateWithFormat:@"name LIKE[i] '*ff*'"];
//    NSLog (@"%@", predicate);
//    NSArray *results = [dsiArray filteredArrayUsingPredicate: predicate];
    
//    NSLog (@"%@", results);
//    NSString *times = [NSDate ff_dateGetCurrentDateStr];
//    FFLog(@"%@",times);
//    FFLog(@"%@",[NSDate ff_dateGetCurrentDate]);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//- (IBAction)speakerAction:(id)sender
//{
//    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
//    [keyWindow switchTarbar:NO];
//    self.speaker = !self.speaker;
//    if(self.speaker){
//        [self.util startSpeak];
//    }
    
//    self.count++;
//    self.collectionView.test = [NSString stringWithFormat:@"%zd",_count];
//    NSString *countStr = [NSString stringWithFormat:@"%zd",_count];
//    [self.collectionView.headerArray addObject:countStr];
//    
//    NSMutableDictionary *notificDict = [NSMutableDictionary dictionary];
//    [[NSNotificationCenter defaultCenter] postNotificationName:NotificDSCollectionViewDatasourseChange object:nil userInfo:notificDict];
//}


//- (NSMutableArray *)datasourse
//{
//    if (_datasourse == nil) {
//        _datasourse = [NSMutableArray array];
//    }
//    return _datasourse;
//}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
