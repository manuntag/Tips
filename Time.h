//
//  Time.h
//  Tips
//
//  Created by David Manuntag on 2015-01-23.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Time : NSObject

@property (nonatomic, strong) NSArray * greetingsArray;
@property (nonatomic, strong) NSString * greeting;
@property (nonatomic) int timeInIntVal;


-(int)calculateTime;

-(NSString*)determineGreetingFromTime:(int)calculatedTime greeting:(NSArray*)greeting;

-(NSArray*)greetings; 


@end
