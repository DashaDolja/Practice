//
//  Complex.m
//  ComplexNumber
//
//  Created by Dasha on 25.05.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import "Complex.h"

@implementation Complex

- (void) setTo:(int)Re :(int)Im
{
    _real = Re;
    _imaginary = Im;
}

- (Complex *) add: (Complex *) ComplexNum
{
    Complex *result = [[Complex alloc] init];
    
    result.real = _real + ComplexNum.real;
    result.imaginary = _imaginary + ComplexNum.imaginary;
    
    return result;
}

- (void) print
{
    NSLog (@"%i + %ii", _real, _imaginary);
}
@end
