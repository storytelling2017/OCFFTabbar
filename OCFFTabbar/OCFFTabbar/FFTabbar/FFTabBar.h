//
//  FFTabBar.h
//  OCFFTabbar
//
//  Created by nonoking on 2017/3/1.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FFTabBar;

@protocol FFTabBarDelegate <NSObject>

- (void)tabbarClickAddBtn:(FFTabBar *)tabbar;

@end

@interface FFTabBar : UITabBar

/**代理*/
@property(nonatomic,weak)id<FFTabBarDelegate> addbtnDelegate;

@end
