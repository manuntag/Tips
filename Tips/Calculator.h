//
//  Calculator.h
//  Tips
//
//  Created by David Manuntag on 2015-01-23.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property (nonatomic) float tipPercentage;
@property (nonatomic) float tipAmount;
@property (nonatomic) float totalAmount;
@property (nonatomic, strong) NSArray * tipPercentageArray;


-(float)tipCalculation:(float)billAmount tipPecentage:(float)tipPercentage;
-(float)totalAmountCalculation:(float)billAmount tipPercentage:(float)tipPercentage;

-(NSArray*)tipPercentageType;



@end
