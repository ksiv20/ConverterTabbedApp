//
//  FirstViewController.h
//  ConverterTabbedApp
//
//  Created by Katherine Sivonxay on 5/18/15.
//  Copyright (c) 2015 Katherine Sivonxay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController {
    UITextField *temperatureTextBox;
    UILabel *calculatedResult;
}

@property (nonatomic, retain) IBOutlet UILabel *calculatedResult;
@property (nonatomic, retain) IBOutlet UITextField *temperatureTextBox;

// takes value from text field and converts deg F -> deg C
- (IBAction)degreeConverter:(id)sender;
// hides keyboard when user touches any part of the background
- (IBAction)backgroundTouchedHideKeyboard:(id)sender;

@end

