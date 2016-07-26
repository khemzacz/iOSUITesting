//
//  ViewController.m
//  UITestPlayground
//
//  Created by Konrad Hemzaczek on 26/07/2016.
//  Copyright © 2016 kh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.label.text = @"hello";
    [self.mainButton setTitle:@"Clickable" forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onMainButtonClick:(id)sender {
    self.label.text = self.textField.text;
}

@end
