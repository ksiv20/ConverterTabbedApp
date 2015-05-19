//
//  SecondViewController.h
//  ConverterTabbedApp
//
//  Created by Katherine Sivonxay on 5/18/15.
//  Copyright (c) 2015 Katherine Sivonxay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController {
    UITextField *distanceTextBox;
    UILabel *convertedResult;
}

@property (nonatomic, retain) IBOutlet UILabel *convertedResult;
@property (nonatomic, retain) IBOutlet UITextField *distanceTextBox;

- (IBAction)distanceConverter:(id)sender;
- (IBAction)backgroundTouchedHideKeyboard:(id)sender;

@end

