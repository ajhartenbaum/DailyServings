//
//  ThirdViewController.m
//  DailyServings
//
//  Created by Alissa Hartenbaum on 4/19/13.
//  Copyright (c) 2013 Alissa Hartenbaum. All rights reserved.
//

#import "ThirdViewController.h"
#import "FirstViewController.h"
#import "AppDelegate.h"


@interface ThirdViewController ()

@end

@implementation ThirdViewController

int resetTime = 12;

//NSTimeInterval timeInt = [timeLabel.text intValue];

-(IBAction)plusTime:(id)sender {
    
    resetTime = resetTime + 1 < 13 ? resetTime + 1 : 1;
}

-(IBAction)minusTime:(id)sender {
    
    resetTime = resetTime - 1 > 0? resetTime - 1 : 12;
}

-(IBAction)updateTime:(id)sender {
    
    timeLabel.text = [NSString stringWithFormat:@"%d",resetTime];
}

-(IBAction)updateAuto:(id)sender {
    /*AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    if(appDelegate.autoon==true){appDelegate.autoon=false;}
    else{ appDelegate.autoon=true;}*/
    //ONLY LEAVE THE ABOVE COMMENTED OUT UNTIL YOU MANAGE TO SAVE DATA!!!!
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)reset:(id)sender {
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    appDelegate.reset = true;
    
    UIAlertView* mes=[[UIAlertView alloc] initWithTitle:@"Log Reset"
                                                message:@"Log values have been reset to 0" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    
    [mes show];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    if(appDelegate.autoon){
        //On will become pressed (why is this backward?)
        onoff.selectedSegmentIndex = 0;
    }
    else{
        onoff.selectedSegmentIndex=1;
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
