//
//  FirstViewController.m
//  DailyServings
//
//  Created by Alissa Hartenbaum on 4/19/13.
//  Copyright (c) 2013 Alissa Hartenbaum. All rights reserved.
//

#import "FirstViewController.h"


@implementation FirstViewController

-(IBAction)plusFruit:(id)sender {
    
    fruitSlider.value++;
}

-(IBAction)minusFruit:(id)sender {
    
    fruitSlider.value--;
}

-(IBAction)slideFruitSlider:(id)sender {
    
    fruitLabel.text = [NSString stringWithFormat:@"%1.1f out of 2.0 cups",fruitSlider.value];
}

-(IBAction)plusBread:(id)sender {
    
    breadSlider.value++;
}

-(IBAction)minusBread:(id)sender {
    
    breadSlider.value--;
}

-(IBAction)slideBreadSlider:(id)sender {
    
    breadLabel.text = [NSString stringWithFormat:@"%1.1f out of 6.0 oz",breadSlider.value];
}

-(IBAction)plusVeggie:(id)sender {
    
    veggieSlider.value += .5;
}

-(IBAction)minusVeggie:(id)sender {
    
    veggieSlider.value -= .5;
}

-(IBAction)slideVeggieSlider:(id)sender {
    
    veggieLabel.text = [NSString stringWithFormat:@"%1.1f out of 2.5 cups",veggieSlider.value];
}

-(IBAction)plusProtein:(id)sender {
    
    proteinSlider.value += 3;
}

-(IBAction)minusProtein:(id)sender {
    
    proteinSlider.value -= 3;
}

-(IBAction)slideProteinSlider:(id)sender {
    
    proteinLabel.text = [NSString stringWithFormat:@"%1.1f out of 6.0 oz",proteinSlider.value];
}

-(IBAction)plusDairy:(id)sender {
    
    dairySlider.value++;
}

-(IBAction)minusDairy:(id)sender {
    
    dairySlider.value--;
}

-(IBAction)slideDairySlider:(id)sender {
    
    dairyLabel.text = [NSString stringWithFormat:@"%1.1f out of 3 cups",dairySlider.value];
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
