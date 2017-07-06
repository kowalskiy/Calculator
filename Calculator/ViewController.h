//
//  ViewController.h
//  Calculator
//
//  Created by Kacper Kowalski on 28.06.2017.
//  Copyright © 2017 Kacper Kowalski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (nonatomic) int firstDigit;
@property (nonatomic) int secondDigit;
@property (nonatomic) BOOL typedDigit;
@property (nonatomic, copy) NSString *currentOperation;

- (IBAction)digitTapped:(UIButton *)sender;
- (IBAction)operationButtonTapped:(UIButton *)sender;
- (IBAction)equalsButtonTapped:(UIButton *)sender;
- (IBAction)clearButtonTapped:(id)sender;

@end

