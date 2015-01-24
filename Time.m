//
//  Time.m
//  Tips
//
//  Created by David Manuntag on 2015-01-23.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import "Time.h"

@implementation Time

-(int)calculateTime {
    
    NSDate * currentTime = [NSDate date];
    
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc]init];
    
    [dateFormatter setDateFormat:@"HH"];
    
    NSString * currentTimeInFormat = [dateFormatter stringFromDate:currentTime];
    
    self.timeInIntVal = [currentTimeInFormat floatValue];
    
    return self.timeInIntVal;
    
}


-(NSArray*)greetings {
    
    _greetingsArray = [[NSArray alloc]initWithObjects:@"How was Breakfast?",@"How was Brunch?", @"How was Lunch?", @"How was Dinner?", @"How was your Late Night Snack?", nil];
    
    
    return self.greetingsArray;
}

-(NSString*)determineGreetingFromTime:(int)calculatedTime greeting:(NSArray*)greeting {
    
    if (calculatedTime>0 && calculatedTime<5) {
        
        self.greeting = greeting[4];
    }else if (calculatedTime>=5 && calculatedTime<11) {
        
        self.greeting = greeting[0];
    
    }else if (calculatedTime>=11 && calculatedTime<12) {
        
        self.greeting = greeting[1];
        
    }else if (calculatedTime>=12 && calculatedTime<17) {
        
        self.greeting =greeting[2];
        
    }else if (calculatedTime>=17 && calculatedTime<21) {
        
        self.greeting = greeting[3];
    
    }else if (calculatedTime>=21) {
        
        self.greeting = greeting[4];
        
    }
    
    return self.greeting;
}

@end
