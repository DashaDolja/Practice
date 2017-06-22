//
//  Complex.m
//  ComplexNumber
//
//  Created by Dasha on 25.05.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import "Complex.h"

@implementation Complex

- (void) setReal:(double) a andImaginary : (double) b
{
    _real = a;
    _imaginary = b;
}

- (id) newAdd: (id) f
{
    id result = [[Complex alloc] init];
    
    SEL setComplex = @selector (setReal:andImaginary:);
    double newReal = _real + [f real];
    double newImaginary = _imaginary + [f imaginary];
    
    [result setReal:newReal andImaginary:newImaginary];
   // [result performSelector: setComplex withObject: [NSNumber numberWithDouble: newReal] withObject: [NSNumber numberWithDouble:newImaginary]];
    return result;
}

- (void) print
{
    printf ("\n%g + %gi", _real, _imaginary);
}
@end
