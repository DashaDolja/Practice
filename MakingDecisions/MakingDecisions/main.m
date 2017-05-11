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
        int n, r, count, sum, i, x;
        
        NSLog (@"Enter number");
        scanf ("%i", &n);
        sum = 0;
        count = 0;
        x = n;
        while (x != 0){
            r = x % 10;
            x = x / 10;
            count += 1;
            if (x == 0){
               for (count = count -1; count >= 0; count = count -1){
                   i = n / pow(10, count);
                   n = n % (int) pow(10, count);
                   
                   switch (i) {
                       case 1:
                           NSLog (@"one");
                           break;
                       case 2:
                           NSLog (@"two");
                           break;
                       case 3:
                           NSLog (@"three");
                           break;
                   }
               }
                
           }
        }
        
    }
    return 0;
}
