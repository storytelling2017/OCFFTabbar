//
//  FFTabbarController.m
//  OCFFTabbar
//
//  Created by nonoking on 2017/3/1.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import "FFTabbarController.h"
#import "FFNavigationController.h"
#import "FFTabBar.h"

NSString *const FFTabbarControllerName = @"controllerName";
NSString *const FFTabbarControllerTitle = @"controllerTitle";
NSString *const FFTabbarNormalIcon = @"normalIcon";
NSString *const FFTabbarSelectedIcon = @"selectedIcon";

@interface FFTabbarController ()<FFTabBarDelegate>

/**items*/
@property(nonatomic,copy)NSArray *tabbarItems;

@end

@implementation FFTabbarController

+(FFTabbarController *)sharedInstance
{
    static FFTabbarController *shareInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (shareInstance == nil) {
            shareInstance = [[FFTabbarController alloc]init];
        }
    });
    return shareInstance;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}



#pragma mark - 设置ui
- (void)setupUI
{
    for (NSDictionary *item in self.tabbarItems) {
        [self addChildVc:item[FFTabbarControllerName] title:item[FFTabbarControllerTitle] image:item[FFTabbarNormalIcon] selectedImage:item[FFTabbarSelectedIcon]];
    }
    
    FFTabBar *tabBar = [[FFTabBar alloc] init];
    tabBar.addbtnDelegate = self;
    /** KVC */
    [self setValue:tabBar forKey:@"tabBar"];

    if (self.childViewControllers.count == 1) {
        self.tabBar.hidden = YES;
    }
    
}

#pragma mark - 设置数据
- (void)vcLoadDatasourse
{
    
}

#pragma mark - 注册通知和实现
- (void)vcRegistNotific
{
    
}

#pragma mark - 懒加载

- (NSArray *)tabbarItems
{
    if (_tabbarItems == nil) {
        NSString *tarbarItemPath = [[NSBundle mainBundle] pathForResource:@"FFTarbarMenu" ofType:@"plist"];
        _tabbarItems = [NSArray arrayWithContentsOfFile:tarbarItemPath];
        
    }
    return _tabbarItems;
}

#pragma mark - 点击事件

#pragma mark - 业务逻辑
#pragma mark 添加一个子控制器 子控制器,标题,图片,选中的图片
- (void)addChildVc:(NSString *)classNmae title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    
    Class vcClass = NSClassFromString(classNmae);
    
    UIViewController *childVc = (UIViewController *)[[vcClass alloc]init];
    
    // 设置子控制器的文字
    childVc.title = title; // 同时设置tabbar和navigationBar的文字
    
    // 设置子控制器的图片
    childVc.tabBarItem.image = [UIImage imageNamed:image];
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 设置文字的样式
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    NSMutableDictionary *selectTextAttrs = [NSMutableDictionary dictionary];
    selectTextAttrs[NSForegroundColorAttributeName] = [UIColor redColor];
    [childVc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [childVc.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateSelected];
    
    // 先给外面传进来的小控制器 包装 一个导航控制器
    FFNavigationController *nav = [[FFNavigationController alloc] initWithRootViewController:childVc];
    // 添加为子控制器
    [self addChildViewController:nav];
    
}

#pragma mark - 自定义代理
- (void)tabbarClickAddBtn:(FFTabBar *)tabbar
{
    NSLog(@"点击加号");
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    NSLog(@"tabBar -- %@",item);
}

@end
