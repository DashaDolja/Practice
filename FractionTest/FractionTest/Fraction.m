//
//  Fraction.m
//  FractionTest
//
//  Created by Dasha on 17.05.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

- (void) print: (BOOL) should_reduce
{
    int integerPartOfNewReduceFraction, integerPartOfFraction;
    
    if (should_reduce == YES){
        Fraction *newReduceFraction = [self reduce];
    
        if (newReduceFraction.numerator > newReduceFraction.denominator) {
            integerPartOfNewReduceFraction = newReduceFraction.numerator /newReduceFraction.denominator;
            newReduceFraction.numerator = newReduceFraction.numerator - newReduceFraction.denominator * integerPartOfNewReduceFraction;
            NSLog(@"%i %i/%i",integerPartOfNewReduceFraction, newReduceFraction.numerator, newReduceFraction.denominator);
        }
        
        else if (newReduceFraction.numerator == newReduceFraction.denominator)
            NSLog (@"1");
        
        else
            NSLog(@"%i/%i", newReduceFraction.numerator, newReduceFraction.denominator);

        
    }
    
    else
        if (_numerator > _denominator) {
            integerPartOfFraction = _numerator / _denominator;
            _numerator = _numerator - _denominator * integerPartOfFraction;
            NSLog (@"%i %i/%i", integerPartOfFraction, _numerator, _denominator);
        }
    
        else if (_numerator == _denominator)
                NSLog(@"1");
    
        else
            NSLog(@"%i/%i", _numerator, _denominator);
    
    
}

- (void) setTo: (int) n over: (int) d
{
    _numerator = n;
    _denominator = d;
   
}

-(double) convertToNum
{
    if (_denominator != 0)
        return (double) _numerator / _denominator;
    else
        return NAN;
}


- (Fraction *) reduce
{
    int u = _numerator;
    int v = _denominator;
    int temp;
    Fraction *reduceResult = [[Fraction alloc] init];
        
    while (v != 0){
        temp = u % v;
        u = v;
        v = temp;
    }
    
    
    [reduceResult setTo:_numerator / u over:_denominator / u];
    return reduceResult;
}

- (Fraction *) add: (Fraction *) f
{
    
    Fraction *result = [[Fraction alloc] init];
    
    if (_denominator != f.denominator){
        result.numerator = _numerator * f.denominator + f.numerator * _denominator;
        result.denominator = _denominator * f.denominator;
    }
    else {
        result.denominator = _denominator;
        result.numerator  = _numerator + f.numerator;
    }
    
        
    return result;
}

- (Fraction *) subtract: (Fraction *) f;
{
    Fraction *result = [[Fraction alloc] init];
    
    if (_denominator != f.denominator) {
        result.numerator = _numerator * f.denominator - f.numerator * _denominator;
        result.denominator = _denominator * f.denominator;
    }
    else {
        result.denominator = _denominator;
        result.numerator  = _numerator - f.numerator;
    }

    if (result.numerator == 0) {
        NSLog (@"0");
        return nil;
      }
    
    else
        return result;
}


- (Fraction *) multiply: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];

    result.numerator = _numerator * f.numerator;
    result.denominator = _denominator * f.denominator;

    return result;
}

- (Fraction *) devide: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    
    if (_denominator == 0 || f.denominator == 0) {
        NSLog (@"Divison by zero");
        return nil;
    }
    
    else {
    
        result.numerator = _numerator * f.denominator;
        result.denominator = _denominator * f.numerator;
    }
    
     return result;
}


@end
