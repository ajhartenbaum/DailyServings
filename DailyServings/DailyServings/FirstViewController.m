//
//  FirstViewController.m
//  DailyServings
//
//  Created by Alissa Hartenbaum on 4/19/13.
//  Copyright (c) 2013 Alissa Hartenbaum. All rights reserved.
//

#import "FirstViewController.h"


@implementation FirstViewController

-(IBAction)slideFruitSlider:(id)sender {
    fruitLabel.text = [NSString stringWithFormat:@"%1.1f",fruitSlider.value];
    if (fruitSlider.value == 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"O!" message:@"This is the very left!" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil, nil];
                              [alert show];
                              
    }


}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
