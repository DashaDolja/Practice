//
//  Fraction.h
//  FractionTest
//
//  Created by Dasha on 17.05.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator, denominator;

- (void)       setTo: (int) n over: (int) d;
- (void)       print: (BOOL) should_reduce;
- (double)     convertToNum;
- (Fraction *) add: (Fraction *) f;
- (Fraction *) subtract: (Fraction *) f;
- (Fraction *) multiply: (Fraction *) f;
- (Fraction *) devide: (Fraction *) f;
- (Fraction *) reduce;

@end
