//
//  main.m
//  ComplexNumber
//
//  Created by Dasha on 25.05.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"
#import "Fraction.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *f1 = [[Fraction alloc] init];
        Fraction *f2 = [[Fraction alloc] init];
        Fraction *fracResult;

        Complex *c1 = [[Complex alloc] init];
        Complex *c2 = [[Complex alloc] init];
        //Complex *compResult;
        
        id dataValue1, dataValue2, result;

        [f1 setTo:1 over: 10];
        [f2 setTo:2 over: 15];
        
        [c1 setReal: 18.0 andImaginary:2.5];
        [c2 setReal: 5.0 andImaginary:3.2];
        
        dataValue1 = c1;
        dataValue2 = c2;
        
        [dataValue1 print]; printf ("\n        +"); [dataValue2 print];
        printf ("\n---------");
        result = [dataValue1 newAdd: dataValue2];
        
        [result print];
        printf ("\n\n");
        
        [f1 print]; printf ("\n   +"); [f2 print];
        printf ("\n-----");
        fracResult = [f1 add: f2];
        [fracResult print];
        printf ("\n\n");
        
        // exercise 9.3
        
        XYPoint *myFirstPoint = [[XYPoint alloc] init];
        id dataValue;
        [myFirstPoint setX: 105 AndY:345];
        dataValue = myFirstPoint;
        
        [dataValue print];
        
        // exercise 9.4
        
        
        
      
        // exercise 9.5
        
        Fraction *fraction = [[Fraction alloc] init];
        Complex *complex = [[Complex alloc] init];
        id number = [[Complex alloc] init];
        
        if ([fraction isMemberOfClass: [Complex class]] == YES)
            printf("\n yes");
        else
            printf("\n no");
        
        if ([complex isMemberOfClass: [NSObject class]] == YES)
            printf("\n yes");
        else
            printf("\n no");
        
        if ([complex isKindOfClass: [NSObject class]] == YES)
            printf("\n yes");
        else
            printf("\n no");
        
        if ([fraction isKindOfClass: [Fraction class]] == YES)
            printf("\n yes");
        else
            printf("\n no");

        if ([fraction respondsToSelector: @selector (print)] == YES)
            printf("\n yes");
        else
            printf("\n no");
        
        if ([complex respondsToSelector: @selector (print)] == YES)
            printf("\n yes");
        else
            printf("\n no");

        if ([Fraction instancesRespondToSelector: @selector (print)] == YES)
            printf("\n yes");
        else
            printf("\n no");
        
        if ([number respondsToSelector: @selector (print)] == YES)
            printf("\n yes");
        else
            printf ("No");
        
        if ([number isKindOfClass: [Complex class]] == YES)
            printf("\n yes");
        else
            printf("\n no");
        
        if ([[number class] respondsToSelector: @selector (alloc)] == YES)
            printf("\n yes");
        else
            printf("\n no");
        
    }
    
    return 0;
}
