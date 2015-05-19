//
//  SecondViewController.m
//  ConverterTabbedApp
//
//  Created by Katherine Sivonxay on 5/18/15.
//  Copyright (c) 2015 Katherine Sivonxay. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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
    self.distanceTextBox = nil;
    self.convertedResult = nil;
}

@synthesize distanceTextBox, convertedResult;

- (void)distanceConverter:(id)sender {
    double miles = [distanceTextBox.text doubleValue];
    double km = miles * 1.61;     // multiply miles by ~1.609 kilometers
    double au = miles / 92956000; // divide miles by 92,956,000AU
    
    [distanceTextBox resignFirstResponder];
    
    NSString *result = [[NSString alloc] initWithFormat:@"Kilometers: %f, AUs: %f", km, au];
    
    convertedResult.text = result;
    
//    NSLog(@"convert btn pressed");
}

// hides keyboard when user touches any part of the background
- (void)backgroundTouchedHideKeyboard:(id)sender {
    [distanceTextBox resignFirstResponder];
}

@end
