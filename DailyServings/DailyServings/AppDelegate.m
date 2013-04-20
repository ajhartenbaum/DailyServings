//
//  AppDelegate.m
//  DailyServings
//
//  Created by Alissa Hartenbaum on 4/19/13.
//  Copyright (c) 2013 Alissa Hartenbaum. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize reset;
bool reset = false;


-(void)applicationSignificantTimeChange:(UIApplication *)application {
    reset = true;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    // Assign tab bar item with titles
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    UITabBar *tabBar = tabBarController.tabBar;
    UITabBarItem *tabBarItem1 = [tabBar.items objectAtIndex:0];
    UITabBarItem *tabBarItem2 = [tabBar.items objectAtIndex:1];
    UITabBarItem *tabBarItem3 = [tabBar.items objectAtIndex:2];
    //UITabBarItem *tabBarItem4 = [tabBar.items objectAtIndex:3];
    
    tabBarItem1.title = @"Log";
    tabBarItem2.title = @"Settings";
    tabBarItem3.title = @"Info";
    //tabBarItem4.title = @"Settings";
    
    [tabBarItem1 setFinishedSelectedImage:[UIImage imageNamed:@"foodIcon.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"foodIcon.png"]];
    [tabBarItem2 setFinishedSelectedImage:[UIImage imageNamed:@"settingsIcon.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"settingsIcon.png"]];
    [tabBarItem3 setFinishedSelectedImage:[UIImage imageNamed:@"infoIcon.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"infoIcon.png"]];
   // [tabBarItem4 setFinishedSelectedImage:[UIImage imageNamed:@"settings_selected.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"settings.png"]];

    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    reset=false;
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
