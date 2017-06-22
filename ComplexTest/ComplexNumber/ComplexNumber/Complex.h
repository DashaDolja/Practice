//
//  Complex.h
//  ComplexNumber
//
//  Created by Dasha on 25.05.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;

- (void) setReal:(double) a andImaginary : (double) b;
- (id) newAdd: (id) f;
- (void) print;

@end
