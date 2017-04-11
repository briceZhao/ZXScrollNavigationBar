//
//  UIViewController+ZXExtension.h
//  ZXScrollNavigationBar
//
//  Created by brice Mac on 2017/4/7.
//  Copyright © 2017年 briceZhao. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ScrollingNavigationBarDelegate <NSObject>

@optional

//notify receiver when navigationBar is hidden or displayed.
- (void)navigationBarDidChangeToCollapsed:(BOOL)collapsed;

- (void)navigationBarDidChangeToExpanded:(BOOL)expanded;

@end


@interface UIViewController (ZXExtension) <UIGestureRecognizerDelegate>


@property (nonatomic, assign) BOOL zx_interactiveNavigationBarHidden;   // Only hide navigationBar for this viewController.

@property (nonatomic, strong, null_resettable) UINavigationBar *navigationBar;  //The getter first invokes [self zx_loadNavigationBar] if the navigationBar hasn't been set yet, also can be set by yourself.

@property (nonatomic, weak) id<ScrollingNavigationBarDelegate> scrollingNavigationBarDelegate;


/**
 Enables the scrolling on a generic UIView.
 
 @param scrollableView      The UIView where the scrolling is performed.
 */
- (void)followScrollView:(UIView *)scrollableView;

/**
 Enables the scrolling on a generic UIView.
 
 @param scrollableView      The UIView where the scrolling is performed.
 @param delay       The delay of the downward scroll gesture
 */
- (void)followScrollView:(UIView *)scrollableView withDelay:(float)delay;


/**
 Manually show the navigationBar.
 
 */
- (void)showNavigationBar;

/**
 Manually show the navigationBar.
 
 @param animated    Animates the navigationBar scrolling.
 */
- (void)showNavigationBarAnimated:(BOOL)animated;

/**
 Manually hide the navigationBar.
 
 */
- (void)hideNavigationBar;

/**
 Manually hide the navigationBar.
 
 @param animated    Animates the navigationBar scrolling.
 */
- (void)hideNavigationBarAnimated:(BOOL)animated;


/**
 Remove the scrollview tracking
 
 * Use this method to stop following the navigationBar.
 */
- (void)stopFollowingScrollView;


/**
 Set the scrollable view's superview as a container to track the navigationBar.

 @param useSuperview    Default is NO, set it to YES when using scrollableView's superView to track the navigationBar.
 */
- (void)setUseSuperview:(BOOL)useSuperview;


@end

NS_ASSUME_NONNULL_END

