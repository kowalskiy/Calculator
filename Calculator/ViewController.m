//
//  ViewController.m
//  Calculator
//
//  Created by Kacper Kowalski on 28.06.2017.
//  Copyright © 2017 Kacper Kowalski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (IBAction)digitTapped:(UIButton *)sender {
    
    NSString *digit = sender.currentTitle;
    
    if (self.typedDigit) {
        self.resultLabel.text = [self.resultLabel.text stringByAppendingString:digit];
    } else {
        self.resultLabel.text = digit;
        self.typedDigit = YES;
    }
}

- (IBAction)operationButtonTapped:(UIButton *)sender {
    
    self.typedDigit = NO;
    self.firstDigit = [self.resultLabel.text intValue];
    self.currentOperation = [sender currentTitle];
}

- (IBAction)equalsButtonTapped:(UIButton *)sender {
    
    self.typedDigit = NO;
    self.secondDigit = [self.resultLabel.text intValue];
    
    int result = 0;
    
    if ([self.currentOperation isEqualToString:@"+"]) {
        result = self.firstDigit + self.secondDigit;
    }
    
    if ([self.currentOperation isEqualToString:@"-"]) {
        result = self.firstDigit - self.secondDigit;
    }
    
    if ([self.currentOperation isEqualToString:@"*"]) {
        result = (self.firstDigit * self.secondDigit);
    }
    
    if ([self.currentOperation isEqualToString:@"/"]) {
        result = (self.firstDigit / self.secondDigit);
    }
    
    self.resultLabel.text = [NSString stringWithFormat:@"%d", result];
}

- (IBAction)clearButtonTapped:(id)sender {
    
    self.typedDigit = NO;
    self.resultLabel.text = [NSString stringWithFormat:@"0"];
}
    

@end
