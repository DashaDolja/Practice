//
//  main.m
//  Project
//
//  Created by Dasha on 17.04.17.
//  Copyright © 2017 Dasha. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "CalculatorReturn.h"
//#import "Exercise10.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       //[CalculatorReturn arithmetic];
       //[Exercise10 memoryMethod];
        // insert code here...
        //NSLog(@"Hello, World!");
        
        unsigned int u, v, temp;
        
        scanf ("%u %u", &u, &v);
        while (v != 0){
            temp = u % v;
            u = v;
            v = temp;
        }
        
        NSLog (@"%i", u);

    }
    return 0;
}
