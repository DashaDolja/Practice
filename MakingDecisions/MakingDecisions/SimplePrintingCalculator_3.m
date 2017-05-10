//
//  SimplePrintingCalculator_3.m
//  MakingDecisions
//
//  Created by Dasha on 10.05.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import "SimplePrintingCalculator_3.h"


@interface Set_Number_Operator: NSObject

//Accumulator method

-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

//Arithmetic method

-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;

@end

@implementation Set_Number_Operator

{
    double accumulator;
}

-(void) setAccumulator: (double) value
{
    accumulator = value;
   // S = accumulator;
}

-(void) clear
{
    accumulator = 0;
}
-(double) accumulator
{
    return accumulator;
}

-(void) add: (double) value
{
    accumulator += value;
}

-(void) subtract: (double) value
{
    accumulator -= value;
}

-(void) multiply: (double) value
{
    accumulator *= value;
}

-(void) divide: (double) value
{
    accumulator /= value;
}

@end


@implementation SimplePrintingCalculator_3
+(void) methodNumber_Operator
{
    double value;
    char operator;
    Set_Number_Operator *deskCalc = [[Set_Number_Operator alloc] init];
    
    NSLog (@"Enter your expression:");
    while (YES) {
        scanf ("%lf %c", &value, &operator);
        
        if (operator == 'S'){
            [deskCalc setAccumulator: value];
            NSLog (@"= %lf", [deskCalc accumulator]);
        }
        else if (operator == '+'){
                [deskCalc add: value];
                NSLog (@"= %lf", [deskCalc accumulator]);
        }
        else if (operator == '-'){
                [deskCalc subtract: value];
                NSLog (@"= %lf", [deskCalc accumulator]);
        }
        else if (operator == '*'){
                [deskCalc multiply: value];
                NSLog (@"= %lf", [deskCalc accumulator]);
        }
        else if (operator == '/'){
                if (value == 0) {
                    NSLog (@"Division by zero");
                    [deskCalc setAccumulator: NAN];
                }
                else
                    [deskCalc divide: value];
        }
        else if (operator == 'E') {
                NSLog (@"= %lf", [deskCalc accumulator]);
                NSLog (@"End of Calculations.");
                break;
        }
        else
            NSLog (@"Unknown operator");
    }
    
  }
  
@end































