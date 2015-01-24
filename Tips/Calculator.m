//
//  Calculator.m
//  Tips
//
//  Created by David Manuntag on 2015-01-23.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator



-(float)tipCalculation:(float)billAmount tipPecentage:(float)tipPercentage {
    
    self.tipAmount = billAmount * tipPercentage;
    
    return self.tipAmount;
    
}




-(float)totalAmountCalculation:(float)billAmount tipPercentage:(float)tipPercentage {
    
    self.totalAmount = billAmount * (1 + tipPercentage);
    
    return self.totalAmount;

}



-(NSArray*)tipPercentageType {

    self.tipPercentageArray = [[NSArray alloc]initWithObjects:@"0.10",@"0.15",@"0.20",@"0.25", nil];

    return self.tipPercentageArray;
    
}


@end
