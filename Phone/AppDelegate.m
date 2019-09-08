//
//  AppDelegate.m
//  Phone
//
//  Created by 杨奇 on 2019/8/26.
//  Copyright © 2019 杨奇. All rights reserved.
//

#import "AppDelegate.h"

#import "YQFirstTableViewController.h"
#import "YQSecondTableViewController.h"
#import "YQThirdTableViewController.h"
#import "YQFourthViewController.h"
#import "YQFifthTableViewController.h"


@interface AppDelegate ()<UITabBarDelegate, UITabBarControllerDelegate>
@property (nonatomic, readwrite, strong)UITabBarController *tabbar;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self model2];
    _tabbar.delegate = self;
//    [[UITabBar appearance] setBackgroundImage:[[UIImage alloc] init]];
//    [[UITabBar appearance] setShadowImage:[[UIImage alloc] init]];
    _tabbar.selectedIndex = 4;
    return YES;
}
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    if (_tabbar.selectedIndex == 0) {
        [self clearTabBarBottomLine];
    }else if (_tabbar.selectedIndex == 1) {
        [self clearTabBarBottomLine];
    }else if (_tabbar.selectedIndex == 2) {
        [self clearTabBarBottomLine];
    }else if (_tabbar.selectedIndex == 3){
        CGRect rect = CGRectMake(0, 0, self.tabbar.view.bounds.size.width, self.tabbar.view.bounds.size.height);
        UIGraphicsBeginImageContext(rect.size);
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetFillColorWithColor(context, [[UIColor clearColor] CGColor]);
        CGContextFillRect(context, rect);
        UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        [_tabbar.tabBar setBackgroundImage:img];
        [_tabbar.tabBar setShadowImage:img];
        
    }else if (_tabbar.selectedIndex == 4) {
        [self clearTabBarBottomLine];
    }
}
//消除底部tabbar分割线方法,像iPhone电话App中的拨号键盘底部tabBar样式
- (void)clearTabBarBottomLine {
    CGRect rect = CGRectMake(0, 0, self.tabbar.view.bounds.size.width, 88);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [[UIColor whiteColor] CGColor]);
    CGContextFillRect(context, rect);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [_tabbar.tabBar setBackgroundImage:img];
    [_tabbar.tabBar setShadowImage:img];

}
- (void)model1 {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    YQFirstTableViewController *firstTableViewController = [[YQFirstTableViewController alloc] init];
    YQSecondTableViewController *secondTableViewController = [[YQSecondTableViewController alloc] init];
    YQThirdTableViewController *thirdTableViewController = [[YQThirdTableViewController alloc] init];
    YQFourthViewController *fourthViewController = [[YQFourthViewController alloc] init];
    YQFifthTableViewController *fifthTableViewController = [[YQFifthTableViewController alloc] init];
    [tabBarController setViewControllers:@[firstTableViewController,secondTableViewController,thirdTableViewController,fourthViewController,fifthTableViewController]];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:tabBarController];
    
    self.window.rootViewController = nav;
    
    
    
    [self.window makeKeyAndVisible];
    
}
/**
  能保证tabbaritem有标题内容，navigationitem也可以写东西
 */
- (void)model2 {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    self.tabbar = tabBarController;
    
    YQFirstTableViewController *firstTableViewController = [[YQFirstTableViewController alloc] init];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:firstTableViewController];
    nav1.tabBarItem.title = @"个人收藏";
    [nav1.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, 8)];
    nav1.navigationBar.clipsToBounds = YES;
    nav1.navigationBar.backgroundColor = [UIColor whiteColor];
    nav1.tabBarItem.image = [UIImage imageNamed:@"star"];
    [nav1.tabBarItem setImageInsets:UIEdgeInsetsMake(3, 0, -3, 0)];
//    nav1.tabBarItem.largeContentSizeImage = CGSizeEqualToSize;
    
    YQSecondTableViewController *secondTableViewController = [[YQSecondTableViewController alloc] init];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:secondTableViewController];
    nav2.tabBarItem.title = @"最近通话";
    [nav2.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, 8)];
    nav2.tabBarItem.image = [UIImage imageNamed:@"clock"];
    [nav2.tabBarItem setImageInsets:UIEdgeInsetsMake(3, 0, -3, 0)];
    
    YQThirdTableViewController *thirdTableViewController = [[YQThirdTableViewController alloc] init];
    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:thirdTableViewController];
    nav3.tabBarItem.title = @"通讯录";
    [nav3.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, 8)];
    nav3.tabBarItem.image = [UIImage imageNamed:@"man"];
    [nav3.tabBarItem setImageInsets:UIEdgeInsetsMake(3, 0, -3, 0)];
    
    YQFourthViewController *fourthViewController = [[YQFourthViewController alloc] init];
    UINavigationController *nav4 = [[UINavigationController alloc] initWithRootViewController:fourthViewController];
    nav4.tabBarItem.title = @"拨号键盘";
    [nav4.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, 8)];
    nav4.tabBarItem.image = [UIImage imageNamed:@"pad"];
    [nav4.tabBarItem setImageInsets:UIEdgeInsetsMake(3, 0, -3, 0)];
    //隐藏拨号键盘的导航栏
    nav4.navigationBarHidden = YES;
    
    YQFifthTableViewController *fifthTableViewController = [[YQFifthTableViewController alloc] init];
    UINavigationController *nav5 = [[UINavigationController alloc] initWithRootViewController:fifthTableViewController];
    nav5.tabBarItem.title = @"语音留言";
    [nav5.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, 8)];
    nav5.tabBarItem.image = [UIImage imageNamed:@"optic"];
    [nav5.tabBarItem setImageInsets:UIEdgeInsetsMake(3, 0, -3, 0)];
    nav5.tabBarItem.tag = 4;
    
    [tabBarController setViewControllers:@[nav1,nav2,nav3,nav4,nav5]];
    
    self.window.rootViewController = tabBarController;

    [self.window makeKeyAndVisible];
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
