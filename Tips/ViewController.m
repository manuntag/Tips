//
//  ViewController.m
//  Tips
//
//  Created by David Manuntag on 2015-01-23.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"
#import "Time.h"


@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *greetingLabel;

@property (strong, nonatomic) IBOutlet UITextField *amountTextField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *experienceRatingSegmentControl;

@property (strong, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (strong, nonatomic) IBOutlet UILabel *totalAmountLabel;

@property (strong, nonatomic) NSArray * tipArray;
@property (strong, nonatomic) NSArray * greetingsArray;


@property (strong, nonatomic) Calculator * calculator;

@property (strong, nonatomic) Time * time;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   _calculator = [[Calculator alloc]init];
    _time = [[Time alloc]init];
    _tipArray = [self.calculator tipPercentageType];

    
}



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    [self.amountTextField resignFirstResponder];
    
}


-(void)viewWillAppear:(BOOL)animated {
    
    
    self.greetingsArray = [self.time greetings];
    
    int currentTime = [self.time calculateTime];
    
    NSLog(@"%d", currentTime);
    
    self.time.greeting = [self.time determineGreetingFromTime:currentTime greeting:self.greetingsArray];
    
    self.greetingLabel.text = self.time.greeting;
    
    
}

- (IBAction)calculateButton:(id)sender {
 
    
    self.calculator.totalAmount = [self.amountTextField.text floatValue];
    
    //set tip percentage based on selected segment
    
    if (self.experienceRatingSegmentControl.selectedSegmentIndex == 0) {
        
        self.calculator.tipPercentage = [self.tipArray[0] floatValue];
       
        
    }else if (self.experienceRatingSegmentControl.selectedSegmentIndex ==1 ) {
        
        self.calculator.tipPercentage = [self.tipArray[1] floatValue];
       
        
    }else if  (self.experienceRatingSegmentControl.selectedSegmentIndex ==2) {
        
        self.calculator.tipPercentage = [self.tipArray[2] floatValue];
       
    }else if (self.experienceRatingSegmentControl.selectedSegmentIndex==3) {
        
        self.calculator.tipPercentage = [self.tipArray[3] floatValue];
       
    }

    
   self.calculator.tipAmount = [self.calculator tipCalculation:self.calculator.totalAmount tipPecentage:self.calculator.tipPercentage];
    
   self.calculator.totalAmount = [self.calculator totalAmountCalculation:self.calculator.totalAmount tipPercentage:self.calculator.tipPercentage];

   self.tipAmountLabel.text = [NSString stringWithFormat:@"$%.2f",self.calculator.tipAmount];
   self.totalAmountLabel.text = [NSString stringWithFormat:@"$%.2f", self.calculator.totalAmount];

    [self.amountTextField resignFirstResponder]; 
    

}


@end
