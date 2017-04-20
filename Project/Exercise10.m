//
//  Exercise10.m
//  Project
//
//  Created by Dasha on 20.04.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import "Exercise10.h"

@interface Calc2: NSObject

- (void) setAccumulator: (double) value;
- (void) print;
- (double) accumulator;
- (double) memoryClear;
- (double) memoryStore;
- (double) memoryRecall;
- (double) memoryAdd: (double) value;
- (double) memortSubtract: (double) value;
- (double) memory;
- (double) multiply: (double) value;


@end

@implementation Calc2
{
    double acumulator;
    double memory;
}
- (void) setAccumulator: (double) value
{
    acumulator = value;
}
- (double) accumulator
{
    return acumulator;
}
- (double) memoryClear
{
           memory = 0;
    return acumulator;
}
- (double) memoryStore
{
    memory = acumulator;
    return acumulator;
}
- (double) memoryRecall
{
    acumulator = memory;
    return acumulator;
}

- (double) memoryAdd: (double) value
{
     memory += value;
     return acumulator;
}
- (double) memorySubtract: (double) value
{
    memory -= value;
    return acumulator;
}
- (double) multiply: (double) value
{
    return acumulator *= value;
}

- (void) print
{
    NSLog (@"The value of memory is %g", memory);
    NSLog (@"The value of acimilator is %g", acumulator);
}

@end


@implementation Exercise10
+(void) memoryMethod
{
    Calc2 *deskCalc = [[Calc2 alloc] init];
    
    [deskCalc setAccumulator: 13];
    [deskCalc multiply: 5];
    [deskCalc memoryAdd: 5];
    [deskCalc memoryClear];
    [deskCalc memorySubtract: 3];
    [deskCalc print];
}

@end







