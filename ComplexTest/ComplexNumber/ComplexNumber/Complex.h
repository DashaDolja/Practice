//
//  Complex.h
//  ComplexNumber
//
//  Created by Dasha on 25.05.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property int real, imaginary;

- (void) setTo: (int) Re : (int) Im;
- (Complex *) add: (Complex *) ComplexNum;
- (void) print;

@end
