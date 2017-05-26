//
//  main.m
//  ComplexNumber
//
//  Created by Dasha on 25.05.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int Re1, Im1, Re2, Im2;
        Complex *aComplex = [[Complex alloc] init];
        Complex *bComplex = [[Complex alloc] init];
        Complex *resultComplex;
        
        NSLog (@"Enter real and imaginary part of the first complex number:");
        scanf ("%i %i", &Re1, &Im1);
        
        [aComplex setTo: Re1 :Im1];
        
        NSLog (@"Enter real and imaginary part of the second complex number:");
        scanf ("%i %i", &Re2, &Im2);
        
        [bComplex setTo: Re2 :Im2];
        
        resultComplex = [aComplex add: bComplex];
        
        [resultComplex print];

        
    }
    
    return 0;
}
