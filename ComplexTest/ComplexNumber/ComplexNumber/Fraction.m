//
//  Fraction.m
//  ComplexNumber
//
//  Created by Dasha on 20.06.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

- (void) print
{
    printf ("\n%i/%i", _numerator, _denominator);
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

