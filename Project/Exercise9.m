//
//  Exercise9.m
//  Project
//
//  Created by Dasha on 20.04.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import "Exercise9.h"

@interface Calc1: NSObject
- (void) setAccumulator: (double) value;
- (void) print;
//- (void) clear;
- (double) accumulator;

- (double) add: (double) value;
- (double) subtract: (double) value;
- (double) multiply: (double) value;
- (double) divide: (double) value;
- (double) changeSign; // change sign of acumulator
- (double) reciprocal; // 1/acumulator
- (double) xSquared;   // acumulator squared

@end

@implementation Calc1
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
- (void) print
{
    NSLog (@"The result of change sign is %g", [self changeSign]);
    NSLog (@"The result of reciprocal is %g", [self reciprocal]);
    NSLog (@"The result of xSquared is %g", [self xSquared]);
}
- (double) changeSign
{
    return -acumulator;
}
- (double) reciprocal
{
    return 1 / acumulator;
}
- (double) xSquared
{
    return acumulator * acumulator;
}

@end


@implementation Exercise9
+ (void) additionalMethods
{
    Calc1 *deskCalc = [[Calc1 alloc] init];
    
    [deskCalc setAccumulator: 3];
    [deskCalc print];
}


@end
