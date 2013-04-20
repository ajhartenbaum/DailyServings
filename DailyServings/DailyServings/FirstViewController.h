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
    
}

-(IBAction)slideFruitSlider:(id)sender;

@end
