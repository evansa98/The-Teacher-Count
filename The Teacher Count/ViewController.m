//
//  ViewController.m
//  The Teacher Count
//
//  Created by Quantum on 8/19/14.
//  Copyright (c) 2014 Quantum Entanglement Projects. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)setToZero:(UIButton *)sender {
    counter=0;
    self.countLabel.text=[NSString stringWithFormat:@"%i",counter];
    self.teacherName.textColor=[UIColor blackColor];
}

- (IBAction)plusButton:(UIButton *)sender {
    counter++;
    self.countLabel.text=[NSString stringWithFormat:@"%i",counter];
    if (counter>=100) {
        self.teacherName.textColor=[UIColor redColor];
    }else{
        self.teacherName.textColor=[UIColor blackColor];
    }
    if (counter==100) {
        UIAlertView *alertView=[[UIAlertView alloc] initWithTitle:@"Congratulations!" message:@"Your teacher is crazy!" delegate:self cancelButtonTitle:@"Awesome!" otherButtonTitles:nil];
        [alertView show];
    }
}

- (IBAction)minusButton:(UIButton *)sender {
    if(counter<1){
        NULL;
    }else{
        counter--;
        self.countLabel.text=[NSString stringWithFormat:@"%i",counter];
    }
    if (counter>=100) {
        self.teacherName.textColor=[UIColor redColor];
    }else{
        self.teacherName.textColor=[UIColor blackColor];
    }
}

- (IBAction)addTenToCount:(UIButton *)sender {
    counter+=10;
    self.countLabel.text=[NSString stringWithFormat:@"%i",counter];
    if ((counter>=100) && (counter<=109) && counter>=91) {
        UIAlertView *alertView=[[UIAlertView alloc] initWithTitle:@"Congratulations!" message:@"Your teacher is crazy!" delegate:self cancelButtonTitle:@"Awesome!" otherButtonTitles:nil];
        [alertView show];
    }
    if (counter>=100) {
        self.teacherName.textColor=[UIColor redColor];
    }
}
@end
