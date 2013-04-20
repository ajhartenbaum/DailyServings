//
//  FirstViewController.h
//  DailyServings
//
//  Created by Alissa Hartenbaum on 4/19/13.
//  Copyright (c) 2013 Alissa Hartenbaum. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController  {
    
    IBOutlet UISlider* fruitSlider;
    IBOutlet UILabel* fruitLabel;
    
    IBOutlet UISlider* breadSlider;
    IBOutlet UILabel* breadLabel;
    
    IBOutlet UISlider* veggieSlider;
    IBOutlet UILabel* veggieLabel;
    
    IBOutlet UISlider* proteinSlider;
    IBOutlet UILabel* proteinLabel;
    
    IBOutlet UISlider* dairySlider;
    IBOutlet UILabel* dairyLabel;
    
}

@end
