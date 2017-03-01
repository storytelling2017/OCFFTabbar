//
//  FFTabBar.m
//  OCFFTabbar
//
//  Created by nonoking on 2017/3/1.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import "FFTabBar.h"

@interface FFTabBar()

@property (nonatomic,strong) UIButton *addBtn;

@end

NSUInteger const FFTabBarItemCount = 5;

@implementation FFTabBar

- (void)layoutSubviews
{
    [super layoutSubviews];
    NSInteger count = FFTabBarItemCount;
    
    UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    addBtn.backgroundColor = [UIColor redColor];
    [addBtn addTarget:self action:@selector(addClickAction) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:addBtn];
    self.addBtn = addBtn;
    CGFloat midBtnViewWidth = self.frame.size.width / count;
    CGFloat midBtnViewHeight = self.frame.size.height + 50;
    CGFloat midBtnViewX = (self.frame.size.width - midBtnViewWidth) * 0.5;
    CGFloat midBtnViewY = -50;
    addBtn.frame = CGRectMake(midBtnViewX, midBtnViewY, midBtnViewWidth, midBtnViewHeight);
    
    
    
    NSUInteger idx = 0;
    
    CGFloat cvW = self.frame.size.width / count;
    CGFloat cvH = self.frame.size.height;
    CGFloat cvY = 0;
    for (UIView *childView in self.subviews) {
        Class class = NSClassFromString(@"UITabBarButton");
        if ([childView isKindOfClass:class]){
            
            
            if (idx == count / 2) {
                idx++;
            }
            CGFloat cvX = idx * cvW;
//            childView.backgroundColor = [UIColor colorWithRed:(arc4random_uniform(254) / 255.0) green:(arc4random_uniform(254) / 255.0) blue:(arc4random_uniform(254) / 255.0) alpha:1.0];
            childView.frame = CGRectMake(cvX, cvY, cvW, cvH);

            idx++;
        }
    }
    NSLog(@"%ld",idx);
}

- (void)addClickAction
{
    if ([self.addbtnDelegate respondsToSelector:@selector(tabbarClickAddBtn:)]) {
        [self.addbtnDelegate tabbarClickAddBtn:self];
    }
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    
    UIView * view = [super hitTest:point withEvent:event];
    if (view == nil) {
        // 转换坐标系
        CGPoint newPoint = [self.addBtn convertPoint:point fromView:self];
        // 判断触摸点是否在button上
        if (CGRectContainsPoint(self.addBtn.bounds, newPoint)) {
            view = self.addBtn;
        }
    }
    return view;
}

@end
