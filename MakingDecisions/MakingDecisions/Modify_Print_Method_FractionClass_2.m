//
//  Modify_Print_Method_FractionClass_2.m
//  MakingDecisions
//
//  Created by Dasha on 10.05.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import "Modify_Print_Method_FractionClass_2.h"

@interface Fraction: NSObject
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
@end

@implementation Fraction
{
    int numerator;
    int denominator;
}

-(void) print
{
    NSLog (@"%i/%i", numerator, denominator);
}
-(void) setNumerator: (int) n
{
    numerator = n;
}
-(void) setDenominator: (int) d
{
    denominator = d;
}
-(int) numerator
{
    return numerator;
}
-(int) denominator
{
    return denominator;
}
@end


@implementation Modify_Print_Method_FractionClass_2
+ (void) modifyPrint;
{
    int n, d;
    Fraction *myFraction = [[Fraction alloc] init];
    
    NSLog (@"Enter numerator and denominator of your fraction");
    scanf ("%i %i", &n, &d);

    [myFraction setNumerator: n];
    [myFraction setDenominator: d];
    
    if (n == 0 && d != 0)
        NSLog (@"0");
    
    if (d == 1)
        NSLog (@"%i", [myFraction numerator]);
    
    if (d == 0)
        NSLog (@"Division by zero");

    
    if (n != 0 && d != 0 && d != 1)
        NSLog (@"The value of myFraction is: %i/%i", [myFraction numerator], [myFraction denominator]);

}
@end
