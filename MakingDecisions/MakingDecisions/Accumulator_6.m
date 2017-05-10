//
//  Accumulator_6.m
//  MakingDecisions
//
//  Created by Dasha on 09.05.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import "Accumulator_6.h"

@interface Calc : NSObject;
- (void) setAccumulator: (double) value;
- (void) clear;
- (double) accumulator;

- (void) add: (double) value;
- (void) subtract: (double) value;
- (void) multiply: (double) value;
- (void) divide: (double) value;


@end


@implementation Calc
{
    double accumulator;
    
}
- (void) setAccumulator: (double) value
{
    accumulator = value;
}
- (void) clear
{
    accumulator = 0;
}
- (double) accumulator
{
    return accumulator;
}
- (void) add: (double) value
{
    accumulator += value;
}
- (void) subtract: (double) value
{
    accumulator -= value;
}
- (void) multiply: (double) value
{
    accumulator *= value;
}
- (void) divide: (double) value
{
    accumulator /= value;
}
@end


@implementation Accumulator_6

+ (void) arithmetic
{
    double value1, value2;
    char operator;
    Calc *deskCalc = [[Calc alloc] init];
    
    NSLog (@"Type in your exprssion:");
    scanf ("%lf %c %lf", &value1, &operator, &value2);
    
    [deskCalc setAccumulator: value1];
    if (operator == '+')
        [deskCalc add: value2];
    else if (operator == '-')
        [deskCalc subtract: value2];
    else if (operator == '*')
        [deskCalc multiply: value2];
    else if (operator == '/')
        if (value2 == 0) {
            NSLog (@"Division by zero");
            [deskCalc setAccumulator: NAN];
}
        else
            [deskCalc divide: value2];
    else
    {
        NSLog (@"Unknown operator");
        [deskCalc setAccumulator: NAN];
    }
    if (! isnan(deskCalc.accumulator)) {
    NSLog (@"%.2f", [deskCalc accumulator]);
    }
    
    
}

@end
