//
//  main.m
//  FractionTest
//
//  Created by Dasha on 17.05.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n1, d1, n2, d2;
        char operand, decisionReduce[10];
        
        
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        Fraction *resultFraction;
        
        NSLog (@"Enter numerator and denominator for the first fraction:");
        scanf ("%i %i", &n1, &d1);
        
        
        if (d1 == 0){
            NSLog (@"Devision by zero");
            return 0;
        }

        else{
            NSLog (@"Enter numerator and denominator for the second fraction:");
            scanf ("%i %i", &n2, &d2);
        }
        
        if (d2 == 0){
            NSLog (@"Devision by zero");
            return 0;
        }

        else {
            
            [aFraction setTo: n1 over: d1];
            [bFraction setTo: n2 over: d2];            
        }
        
        NSLog (@"Enter one of the following operations: '+', '-', '*', '/':");
        scanf (" %c", &operand);
        
        
        switch (operand) {
            case '+':
                resultFraction = [aFraction add: bFraction];
                break;
                
            case '-':
                resultFraction = [aFraction subtract: bFraction];
                break;
                
            case '*':
                resultFraction = [aFraction multiply: bFraction];
                break;
                
            case '/':
                resultFraction = [aFraction devide: bFraction];
                break;
        
        }

        NSLog (@"If you want to reduce the fraction enter 'yes', if no - 'no'");
        scanf (" %s", decisionReduce);
        NSString *string = [NSString stringWithCString:decisionReduce encoding:1];
        
        
        if ([string isEqualToString: @"yes"])
            [resultFraction print: YES];
        
        if ([string isEqualToString: @"no"])
            [resultFraction print: NO];
        
    }
    return 0;
}
