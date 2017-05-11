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
        int  number, right_digit;
        NSMutableString *mutableString = [NSMutableString new];
        
        NSLog (@"Enter your number.");
        scanf ("%i", &number);
        
        BOOL Negative = NO;
        if (number < 0){
            number = -number;
            Negative = YES;
        }
        else if (number  == 0)
            [mutableString appendString: @"Zero"];
        
        while (number != 0) {
            right_digit = number % 10;
            [mutableString appendString:[NSString stringWithFormat:@"%i", right_digit]];
            number /= 10;
        }
        
        
        if (Negative)
            [mutableString appendString:@"-"];
        
        NSLog(@"%@", mutableString);

        
    }
   
    
    return 0;
}
