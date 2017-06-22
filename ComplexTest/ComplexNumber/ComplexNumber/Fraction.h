//
//  Fraction.h
//  ComplexNumber
//
//  Created by Dasha on 20.06.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator, denominator;

- (void)       setTo: (int) n over: (int) d;
- (void)       print;
- (double)     convertToNum;
- (Fraction *) add: (Fraction *) f;
- (Fraction *) subtract: (Fraction *) f;
- (Fraction *) multiply: (Fraction *) f;
- (Fraction *) devide: (Fraction *) f;
- (Fraction *) reduce;

@end
