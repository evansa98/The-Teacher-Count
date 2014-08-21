//
//  ViewController.h
//  The Teacher Count
//
//  Created by Quantum on 8/19/14.
//  Copyright (c) 2014 Quantum Entanglement Projects. All rights reserved.
//

#import <UIKit/UIKit.h>
int counter=0;
@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *countLabel;
@property (strong, nonatomic) IBOutlet UILabel *teacherName;

- (IBAction)setToZero:(UIButton *)sender;
- (IBAction)plusButton:(UIButton *)sender;
- (IBAction)minusButton:(UIButton *)sender;
- (IBAction)addTenToCount:(UIButton *)sender;

@end
