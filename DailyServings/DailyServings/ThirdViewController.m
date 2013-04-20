//
//  ThirdViewController.m
//  DailyServings
//
//  Created by Alissa Hartenbaum on 4/19/13.
//  Copyright (c) 2013 Alissa Hartenbaum. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

int resetTime = 12;

-(IBAction)plusTime:(id)sender {
    
    resetTime = resetTime + 1 < 13 ? resetTime + 1 : 1;
}

-(IBAction)minusTime:(id)sender {
    
    resetTime = resetTime - 1 > 0? resetTime - 1 : 12;
}

-(IBAction)updateTime:(id)sender {
    
    timeLabel.text = [NSString stringWithFormat:@"%d",resetTime];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
/*
-(IBAction)reset:(id)sender {
    manualReset();
}
*/
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
