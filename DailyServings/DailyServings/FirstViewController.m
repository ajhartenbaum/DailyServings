//
//  FirstViewController.m
//  DailyServings
//
//  Created by Alissa Hartenbaum on 4/19/13.
//  Copyright (c) 2013 Alissa Hartenbaum. All rights reserved.
//

#import "FirstViewController.h"
#import "AppDelegate.h"


@implementation FirstViewController

@synthesize pref;


-(IBAction)infoFruit:(id)sender {
    
    UIAlertView* mes=[[UIAlertView alloc] initWithTitle:@"Fruit Serving Size"
                                                message:@"1 cup = 1 apple or 1 banana" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    [mes show];
}

-(IBAction)plusFruit:(id)sender {
    
    fruitSlider.value++;
}

-(IBAction)minusFruit:(id)sender {
    
    fruitSlider.value--;
}

-(IBAction)slideFruitSlider:(id)sender {
    
    fruitLabel.text = [NSString stringWithFormat:@"%1.1f out of 2.0 cups",fruitSlider.value];
    
    pref = [NSUserDefaults standardUserDefaults];
    [pref setFloat:fruitSlider.value forKey:@"fruit"];
    [pref synchronize];
}

-(IBAction)infoBread:(id)sender {
    
    UIAlertView* mes=[[UIAlertView alloc] initWithTitle:@"Bread Serving Size"
                                                message:@"1 ounce = 1 slize of bread or\n1/2 cup of cooked rice or pasta" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    
    [mes show];
    
}

-(IBAction)plusBread:(id)sender {
    
    breadSlider.value++;
}

-(IBAction)minusBread:(id)sender {
    
    breadSlider.value--;
}

-(IBAction)slideBreadSlider:(id)sender {
    
    breadLabel.text = [NSString stringWithFormat:@"%1.1f out of 6.0 oz",breadSlider.value];
    
    pref = [NSUserDefaults standardUserDefaults];
    [pref setFloat:breadSlider.value forKey:@"bread"];
    [pref synchronize];
}

-(IBAction)infoVeggie:(id)sender {
    
    UIAlertView* mes=[[UIAlertView alloc] initWithTitle:@"Veggie Serving Size"
                                                message:@"1 cup = size of a baseball\n" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    
    [mes show];
}

-(IBAction)plusVeggie:(id)sender {
    
    veggieSlider.value += .5;
}

-(IBAction)minusVeggie:(id)sender {
    
    veggieSlider.value -= .5;
}

-(IBAction)slideVeggieSlider:(id)sender {
    
    veggieLabel.text = [NSString stringWithFormat:@"%1.1f out of 2.5 cups",veggieSlider.value];
    
    pref = [NSUserDefaults standardUserDefaults];
    [pref setFloat:veggieSlider.value forKey:@"veggie"];
    [pref synchronize];
}

-(IBAction)infoProtein:(id)sender {
    
    UIAlertView* mes=[[UIAlertView alloc] initWithTitle:@"Protein Serving Size"
                                                message:@"3 ounces = size of 1 deck of cards" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    
    [mes show];
}

-(IBAction)plusProtein:(id)sender {
    
    proteinSlider.value += 3;
}

-(IBAction)minusProtein:(id)sender {
    
    proteinSlider.value -= 3;
}

-(IBAction)slideProteinSlider:(id)sender {
    
    proteinLabel.text = [NSString stringWithFormat:@"%1.1f out of 6.0 oz",proteinSlider.value];
    
    pref = [NSUserDefaults standardUserDefaults];
    [pref setFloat:proteinSlider.value forKey:@"protein"];
    [pref synchronize];
}

-(IBAction)infoDairy:(id)sender {
    
    UIAlertView* mes=[[UIAlertView alloc] initWithTitle:@"Dairy Serving Size"
                                                message:@"1 cup = 2 slices of cheese" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    
    [mes show];
}

-(IBAction)plusDairy:(id)sender {
    
    dairySlider.value++;
}

-(IBAction)minusDairy:(id)sender {
    
    dairySlider.value--;
}

-(IBAction)slideDairySlider:(id)sender {
    
    dairyLabel.text = [NSString stringWithFormat:@"%1.1f out of 3 cups",dairySlider.value];
    
    pref = [NSUserDefaults standardUserDefaults];
    [pref setFloat:dairySlider.value forKey:@"dairy"];
    [pref synchronize];
}

- (void)viewDidAppear:(BOOL) animated
{
    [super viewDidAppear:animated];
    pref = [NSUserDefaults standardUserDefaults];

     AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    if (appDelegate.reset) {
        
        [pref setFloat:0 forKey:@"fruit"];
        [pref setFloat:0 forKey:@"bread"];
        [pref setFloat:0 forKey:@"veggie"];
        [pref setFloat:0 forKey:@"protein"];
        [pref setFloat:0 forKey:@"dairy"];
        [pref synchronize];
        appDelegate.reset = false;
    }
    
    fruitSlider.value = [pref floatForKey:@"fruit"];
    breadSlider.value = [pref floatForKey:@"bread"];
    veggieSlider.value = [pref floatForKey:@"veggie"];
    proteinSlider.value = [pref floatForKey:@"protein"];
    dairySlider.value = [pref floatForKey:@"dairy"];
        
    fruitLabel.text = [NSString stringWithFormat:@"%1.1f out of 2.0 cups",fruitSlider.value];
    breadLabel.text = [NSString stringWithFormat:@"%1.1f out of 6.0 oz",breadSlider.value];
    veggieLabel.text = [NSString stringWithFormat:@"%1.1f out of 2.5 cups",veggieSlider.value];
    proteinLabel.text = [NSString stringWithFormat:@"%1.1f out of 6.0 oz",proteinSlider.value];
    dairyLabel.text = [NSString stringWithFormat:@"%1.1f out of 3 cups",dairySlider.value];
        
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)resetAll{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
