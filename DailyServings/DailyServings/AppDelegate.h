//
//  AppDelegate.h
//  DailyServings
//
//  Created by Alissa Hartenbaum on 4/19/13.
//  Copyright (c) 2013 Alissa Hartenbaum. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    bool reset;
    bool autoon;
}


@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, assign) bool reset;
@property (nonatomic, assign) bool autoon;
/*
@property (nonatomic, assign) bool fruitval;
@property (nonatomic, assign) bool vegval;
@property (nonatomic, assign) bool breadval;
@property (nonatomic, assign) bool meatval;
@property (nonatomic, assign) bool dairyval;
*/




@end
