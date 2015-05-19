//
//  FirstViewController.m
//  ConverterTabbedApp
//
//  Created by Katherine Sivonxay on 5/18/15.
//  Copyright (c) 2015 Katherine Sivonxay. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.temperatureTextBox = nil;
    self.calculatedResult = nil;
}

@synthesize temperatureTextBox, calculatedResult;

/* 
 * Called when the convert button is pressed.
 * Takes value from text field and converts deg F -> deg C
 */
- (void)degreeConverter:(id)sender {
    double fahrenheit = [temperatureTextBox.text doubleValue];//value that user entered
    double celsius = (fahrenheit -32) / 1.8;
    
    // hide the keyboard and deselects the text field after the user either
    // touches the bg or presses the 'convert' button
    [temperatureTextBox resignFirstResponder];
    
    NSString *convertedResult = [[NSString alloc] initWithFormat:@"Celsius: %f", celsius];
    
    // set the converted result as the text of the calculatedResult label
    calculatedResult.text = convertedResult;
}

/*
 * Hides keyboard when user touches any part of the background
 */
- (void)backgroundTouchedHideKeyboard:(id)sender {
    [temperatureTextBox resignFirstResponder];
}



@end
