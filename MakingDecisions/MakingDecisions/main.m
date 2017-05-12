//
//  main.m
//  MakingDecisions
//
//  Created by Dasha on 09.05.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int p, d;
        float even;
        BOOL isPrime;
        
        NSLog (@"2");
        
        for ( p = 3; p <= 50; ++p ) {
            isPrime = YES;
            even = p % 2;
            
            if (even != 0){
            
                for ( d = 2; isPrime == YES && (d < p); ++d ){
                    if (p % d == 0)
                        isPrime = NO;
                }
                if (isPrime == YES)
                    NSLog (@"%i ", p);
            }
        }
    }
    
    return 0;
}
