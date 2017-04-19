//
//  CalculatorReturn.m
//  Project
//
//  Created by Dasha on 20.04.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import "CalculatorReturn.h"

@interface Calc: NSObject
- (void) setAccumulator: (double) value;
//- (void) clear;
- (double) accumulator;

- (double) add: (double) value;
- (double) subtract: (double) value;
- (double) multiply: (double) value;
- (double) divide: (double) value;

@end

@implementation Calc

{
    double acumulator;
}
- (void) setAccumulator: (double) value
{
    acumulator = value;
}
- (double) accumulator
{
    return acumulator;
}
- (double) add: (double) value
{
    return acumulator += value;
}
- (double) subtract: (double) value
{
    return acumulator -= value;
}

- (double) multiply: (double) value
{
    return acumulator *= value;
}
- (double) divide: (double) value
{
    return acumulator /= value;
}
@end

@implementation CalculatorReturn
+ (void) arithmetic
{
    Calc *deskCalc = [[Calc alloc] init];
    
    [deskCalc setAccumulator:10];
    [deskCalc add: 5];
    [deskCalc subtract:1.33];
    [deskCalc multiply:2];
    [deskCalc divide:1.5];
    
    NSLog (@"The result is %g", [deskCalc accumulator]);
}
@end

